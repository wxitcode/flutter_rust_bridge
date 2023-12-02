use crate::codegen::generator::acc::Acc;
use crate::codegen::generator::misc::generate_code_header;
use crate::codegen::generator::misc::target::{Target, TargetOrCommon};
use crate::codegen::generator::wire::rust::spec_generator::base::{
    WireRustGenerator, WireRustGeneratorContext,
};
use crate::codegen::generator::wire::rust::spec_generator::misc::wire_func::generate_wire_func;
use crate::codegen::generator::wire::rust::spec_generator::output_code::WireRustOutputCode;
use crate::codegen::generator::wire::rust::IrPackComputedCache;
use crate::codegen::ir::pack::IrPack;
use crate::codegen::ir::ty::IrType;
use crate::library::codegen::generator::wire::rust::spec_generator::misc::ty::WireRustGeneratorMiscTrait;
use crate::library::codegen::generator::wire::rust::spec_generator::wire2api::ty::WireRustGeneratorWire2apiTrait;
use crate::library::codegen::ir::ty::IrTypeTrait;
use crate::misc::consts::HANDLER_NAME;
use itertools::Itertools;
use serde::Serialize;
use std::collections::HashSet;

pub(crate) mod ty;
pub(crate) mod wire_func;

#[derive(Serialize)]
pub(crate) struct WireRustOutputSpecMisc {
    pub code_header: Acc<Vec<WireRustOutputCode>>,
    pub file_attributes: Acc<Vec<WireRustOutputCode>>,
    pub imports: Acc<Vec<WireRustOutputCode>>,
    pub wire_funcs: Acc<Vec<WireRustOutputCode>>,
    pub wrapper_structs: Acc<Vec<WireRustOutputCode>>,
    pub static_checks: Acc<Vec<WireRustOutputCode>>,
    pub executor: Acc<Vec<WireRustOutputCode>>,
    pub extern_struct_names: Vec<String>,
}

pub(crate) fn generate(
    context: WireRustGeneratorContext,
    cache: &IrPackComputedCache,
) -> anyhow::Result<WireRustOutputSpecMisc> {
    Ok(WireRustOutputSpecMisc {
        code_header: Acc::new(|_| vec![generate_code_header().into()]),
        file_attributes: Acc::new_common(vec![FILE_ATTRIBUTES.to_string().into()]),
        imports: generate_imports(&cache.distinct_types, context),
        wire_funcs: context
            .ir_pack
            .funcs
            .iter()
            .map(|f| generate_wire_func(f, context))
            .collect(),
        wrapper_structs: cache
            .distinct_output_types
            .iter()
            .filter_map(|ty| generate_wrapper_struct(ty, context))
            .map(|x| Acc::new_common(x.into()))
            .collect(),
        static_checks: Acc::new_common(vec![generate_static_checks(
            &cache.distinct_types,
            context,
        )
        .into()]),
        executor: Acc::new_common(vec![generate_executor(context.ir_pack).into()]),
        extern_struct_names: generate_extern_struct_names(context, cache),
    })
}

const FILE_ATTRIBUTES: &str = r#"#![allow(non_camel_case_types, unused, clippy::redundant_closure, clippy::useless_conversion, clippy::unit_arg, clippy::double_parens, non_snake_case, clippy::too_many_arguments)]"#;

fn generate_imports(
    types: &[IrType],
    context: WireRustGeneratorContext,
) -> Acc<Vec<WireRustOutputCode>> {
    let imports_from_types = types
        .iter()
        .flat_map(|ty| WireRustGenerator::new(ty.clone(), context).generate_imports())
        .flatten()
        .collect::<HashSet<String>>()
        .into_iter()
        .join("\n");

    // NOTE Do *not* use imports when possible, instead use fully specified name directly
    let static_imports = "use flutter_rust_bridge::Handler;
    use flutter_rust_bridge::rust2dart::IntoIntoDart;";

    Acc::new(|target| {
        let platform_imports = match target {
            TargetOrCommon::Wasm => {
                "use super::*;
                use flutter_rust_bridge::wasm_bindgen;
                use flutter_rust_bridge::wasm_bindgen::prelude::*;\n"
            }
            TargetOrCommon::Io => "use super::*;",
            _ => "",
        };

        vec![(imports_from_types.clone() + static_imports + platform_imports).into()]
    })
}

fn generate_wrapper_struct(ty: &IrType, context: WireRustGeneratorContext) -> Option<String> {
    // the generated wrapper structs need to be public for the StreamSinkTrait impl to work
    WireRustGenerator::new(ty.clone(), context)
        .wrapper_struct_name()
        .map(|wrapper_struct_name| {
            format!(
                r###"
                #[derive(Clone)]
                pub struct {}({});
                "###,
                wrapper_struct_name,
                ty.rust_api_type(),
            )
        })
}

fn generate_static_checks(types: &[IrType], context: WireRustGeneratorContext) -> String {
    let raw = types
        .iter()
        .filter_map(|ty| WireRustGenerator::new(ty.clone(), context).generate_static_checks())
        .collect_vec();

    if raw.is_empty() {
        return "".to_owned();
    }

    let mut lines = vec![];
    lines.push("#[allow(clippy::unnecessary_literal_unwrap)]".to_owned());
    lines.push("const _: fn() = || {".to_owned());
    lines.extend(raw);
    lines.push("};".to_owned());
    lines.join("\n")
}

fn generate_executor(ir_pack: &IrPack) -> String {
    if ir_pack.has_executor {
        "/* nothing since executor detected */".to_string()
    } else {
        format!(
            "flutter_rust_bridge::support::lazy_static! {{
                pub static ref {HANDLER_NAME}: flutter_rust_bridge::support::DefaultHandler = Default::default();
            }}"
        )
    }
}

fn generate_extern_struct_names(
    context: WireRustGeneratorContext,
    cache: &IrPackComputedCache,
) -> Vec<String> {
    cache
        .distinct_types
        .iter()
        .filter(|ty| matches!(&ty, IrType::StructRef(_)))
        .map(|ty| WireRustGenerator::new(ty.clone(), context).rust_wire_type(Target::Io))
        .collect()
}
