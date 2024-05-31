use crate::codegen::config::config::MetaConfig;
use crate::codegen::config::internal_config::{
    ControllerInternalConfig, GeneratorInternalConfig, GeneratorWireInternalConfig, InternalConfig,
};
use crate::codegen::dumper::internal_config::DumperInternalConfig;
use crate::codegen::generator::api_dart::internal_config::GeneratorApiDartInternalConfig;
use crate::codegen::generator::codec::structs::{CodecMode, CodecModePack};
use crate::codegen::generator::misc::target::TargetOrCommonMap;
use crate::codegen::generator::wire::c::internal_config::GeneratorWireCInternalConfig;
use crate::codegen::generator::wire::dart::internal_config::{
    DartOutputClassNamePack, GeneratorWireDartDefaultExternalLibraryLoaderInternalConfig,
    GeneratorWireDartInternalConfig,
};
use crate::codegen::generator::wire::rust::internal_config::GeneratorWireRustInternalConfig;
use crate::codegen::ir::ty::rust_opaque::RustOpaqueCodecMode;
use crate::codegen::parser::internal_config::ParserInternalConfig;
use crate::codegen::parser::internal_config::RustInputNamespacePack;
use crate::codegen::polisher::internal_config::PolisherInternalConfig;
use crate::codegen::preparer::internal_config::PreparerInternalConfig;
use crate::codegen::{Config, ConfigDumpContent};
use crate::library::commands::cargo_metadata::execute_cargo_metadata;
use crate::utils::dart_repository::get_dart_package_name;
use crate::utils::path_utils::{
    canonicalize_with_error_message, find_dart_package_dir, find_rust_crate_dir, glob_path,
    path_to_string,
};
use anyhow::{ensure, Context, Result};
use itertools::Itertools;
use log::debug;
use pathdiff::diff_paths;
use std::path::{Path, PathBuf};
use strum::IntoEnumIterator;

mod dart_path_parser;
mod generator_parser;
mod rust_path_parser;

impl InternalConfig {
    pub(crate) fn parse(config: &Config, meta_config: &MetaConfig) -> Result<Self> {
        let base_dir = config
            .base_dir
            .as_ref()
            .filter(|s| !s.is_empty())
            .map(PathBuf::from)
            .unwrap_or(std::env::current_dir()?);
        debug!("InternalConfig.parse base_dir={base_dir:?}");

        let rust_input_namespace_pack =
            compute_rust_input_namespace_pack(&config.rust_input, &base_dir)?;

        let dart_output_dir = canonicalize_with_error_message(&base_dir.join(&config.dart_output))?;
        let dart_output_path_pack =
            dart_path_parser::compute_dart_output_path_pack(&dart_output_dir)?;

        let dart_output_class_name_pack = compute_dart_output_class_name_pack(config);

        let c_output_path = config.c_output.as_ref().map(|x| base_dir.join(x));
        let duplicated_c_output_path = config
            .duplicated_c_output
            .clone()
            .unwrap_or_default()
            .into_iter()
            .map(|p| base_dir.join(p))
            .collect();

        let rust_crate_dir = rust_path_parser::compute_rust_crate_dir(config)?;
        let rust_output_path =
            rust_path_parser::compute_rust_output_path(config, &base_dir, &rust_crate_dir)?;

        let dart_root = canonicalize_with_error_message(
            &(config.dart_root.clone().map(PathBuf::from))
                .unwrap_or(find_dart_package_dir(&dart_output_dir)?),
        )?;

        let web_enabled = config.web.unwrap_or(true);

        let dump_directory = rust_crate_dir.join("target").join("frb_dump");

        let controller_watching_paths = vec![
            // The whole crate needs to be watched, because e.g. when a struct definition changes
            // in a non-input file, it may still cause the generated code to change.
            rust_crate_dir.join("src"),
        ];
        let controller_exclude_paths = rust_output_path.clone().into_vec();

        let full_dep = config.full_dep.unwrap_or(false);
        let default_stream_sink_codec = generate_default_stream_sink_codec(full_dep);
        let default_rust_opaque_codec = generate_default_rust_opaque_codec(full_dep);
        let enable_local_dependency = config.local.unwrap_or_default();

        let generator = generator_parser::parse(generator_parser::Args {
            config,
            dart_root: &dart_root,
            rust_crate_dir: &rust_crate_dir,
            dart_output_path_pack: &dart_output_path_pack,
            dart_output_class_name_pack: &dart_output_class_name_pack,
            rust_output_path: &rust_output_path,
            default_stream_sink_codec,
            default_rust_opaque_codec,
            c_output_path: &c_output_path,
            web_enabled,
            full_dep,
        })?;

        Ok(InternalConfig {
            controller: ControllerInternalConfig {
                watch: meta_config.watch,
                watching_paths: controller_watching_paths,
                exclude_paths: controller_exclude_paths,
                max_count: None,
            },
            preparer: PreparerInternalConfig {
                dart_root: dart_root.clone(),
                deps_check: config.deps_check.unwrap_or(true),
                needs_ffigen: full_dep,
            },
            parser: ParserInternalConfig {
                rust_input_namespace_pack: rust_input_namespace_pack.clone(),
                rust_crate_dir: rust_crate_dir.clone(),
                force_codec_mode_pack: compute_force_codec_mode_pack(full_dep),
                default_stream_sink_codec,
                default_rust_opaque_codec,
            },
            generator,
            polisher: PolisherInternalConfig {
                duplicated_c_output_path,
                dart_format_line_length: config.dart_format_line_length.unwrap_or(80),
                add_mod_to_lib: config.add_mod_to_lib.unwrap_or(true),
                build_runner: config.build_runner.unwrap_or(true),
                web_enabled,
                dart_root,
                rust_crate_dir,
                rust_output_path,
                c_output_path,
                enable_auto_upgrade: !enable_local_dependency,
            },
            dumper: DumperInternalConfig {
                dump_contents: parse_dump_contents(config),
                dump_directory,
            },
        })
    }
}

fn parse_dump_contents(config: &Config) -> Vec<ConfigDumpContent> {
    if config.dump_all.unwrap_or(false) {
        return ConfigDumpContent::iter().collect_vec();
    }
    config.dump.clone().unwrap_or_default()
}

impl RustInputNamespacePack {
    fn one_rust_input_path(&self) -> &Path {
        self.rust_input_namespaces.first().unwrap()
    }
}

fn compute_rust_input_namespace_pack(
    raw_rust_input: &str,
    base_dir: &Path,
) -> Result<RustInputNamespacePack> {
    const BLACKLIST_FILE_NAMES: [&str; 1] = ["mod.rs"];

    let glob_pattern = base_dir.join(raw_rust_input);

    let mut pack = RustInputNamespacePack {
        rust_input_namespaces: vec![],
        rust_suppressed_input_namespaces: vec![],
    };
    for path in glob_path(&glob_pattern)?.into_iter() {
        if BLACKLIST_FILE_NAMES.contains(&path.file_name().unwrap().to_str().unwrap()) {
            pack.rust_suppressed_input_namespaces.push(path);
        } else {
            pack.rust_input_namespaces.push(path);
        }
    }

    // This will stop the whole generator and tell the users, so we do not care about testing it
    // frb-coverage:ignore-start
    ensure!(
        !pack.rust_input_namespaces.is_empty(),
        "Find zero rust input paths. (glob_pattern={glob_pattern:?})"
    );
    // ensure!(
    //     !pack.rust_input_namespaces.iter().any(|p| path_to_string(p).unwrap().contains("lib.rs")),
    //     "Do not use `lib.rs` as a Rust input. Please put code to be generated in something like `api.rs`.",
    // );
    // frb-coverage:ignore-end

    Ok(pack)
}

fn compute_dart_output_class_name_pack(config: &Config) -> DartOutputClassNamePack {
    const FALLBACK_DART_ENTRYPOINT_CLASS_NAME: &str = "RustLib";

    let entrypoint_class_name = (config.dart_entrypoint_class_name.clone())
        .unwrap_or(FALLBACK_DART_ENTRYPOINT_CLASS_NAME.to_owned());
    let with_postfix = |postfix: &str| format!("{entrypoint_class_name}{postfix}");

    DartOutputClassNamePack {
        entrypoint_class_name: entrypoint_class_name.clone(),
        api_class_name: with_postfix("Api"),
        api_impl_class_name: with_postfix("ApiImpl"),
        api_impl_platform_class_name: with_postfix("ApiImplPlatform"),
        wire_class_name: with_postfix("Wire"),
        wasm_module_name: with_postfix("WasmModule"),
    }
}

pub(crate) fn compute_force_codec_mode_pack(full_dep: bool) -> Option<CodecModePack> {
    (!full_dep).then_some(CodecModePack {
        dart2rust: CodecMode::Pde,
        rust2dart: CodecMode::Pde,
    })
}

fn generate_default_stream_sink_codec(full_dep: bool) -> CodecMode {
    if full_dep {
        CodecMode::Dco
    } else {
        CodecMode::Sse
    }
}

fn generate_default_rust_opaque_codec(full_dep: bool) -> RustOpaqueCodecMode {
    if full_dep {
        RustOpaqueCodecMode::Nom
    } else {
        RustOpaqueCodecMode::Moi
    }
}

#[cfg(test)]
mod tests {
    use crate::codegen::config::config::MetaConfig;
    use crate::codegen::config::internal_config::InternalConfig;
    use crate::codegen::Config;
    use crate::utils::logs::configure_opinionated_test_logging;
    use crate::utils::test_utils::{
        create_path_sanitizers, get_test_fixture_dir, json_golden_test,
    };
    use log::info;
    use serde_json::Value;
    use serial_test::serial;
    use std::env;
    use std::path::PathBuf;

    #[test]
    #[serial]
    fn test_parse_single_rust_input() -> anyhow::Result<()> {
        body("library/codegen/config/internal_config_parser/single_rust_input")
    }

    #[test]
    #[serial]
    fn test_parse_wildcard_rust_input() -> anyhow::Result<()> {
        body("library/codegen/config/internal_config_parser/wildcard_rust_input")
    }

    fn body(fixture_name: &str) -> anyhow::Result<()> {
        configure_opinionated_test_logging();
        let test_fixture_dir = get_test_fixture_dir(fixture_name);
        env::set_current_dir(&test_fixture_dir)?;
        info!("test_fixture_dir={test_fixture_dir:?}");

        let config = Config::from_files_auto()?;

        let internal_config = InternalConfig::parse(&config, &MetaConfig { watch: false })?;

        let actual_string = serde_json::to_string_pretty(&internal_config)?;
        let actual_json: Value = serde_json::from_str(&actual_string)?;

        json_golden_test(
            &actual_json,
            &PathBuf::from("expect_output.json"),
            &create_path_sanitizers(&test_fixture_dir),
        )?;

        Ok(())
    }

    #[test]
    #[serial]
    fn test_parse_rust_output_faulty() -> anyhow::Result<()> {
        let result = body("library/codegen/config/internal_config_parser/faulty_rust_output");

        assert!(result.is_err());
        let error = result.err().unwrap();
        assert!(error.to_string().contains("rust_output: is wrong:"));
        assert!(error
            .source()
            .unwrap()
            .to_string()
            .contains("A path for input/output needs to include the file name"));
        Ok(())
    }
}
