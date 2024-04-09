use crate::codegen::generator::api_dart;
use crate::codegen::generator::api_dart::spec_generator::class::field::{
    generate_field_default, generate_field_required_modifier,
};
use crate::codegen::generator::api_dart::spec_generator::function::ApiDartGeneratedFunction;
use crate::codegen::generator::api_dart::spec_generator::misc::{
    generate_dart_comments, generate_function_dart_return_type,
};
use crate::codegen::ir::func::{
    IrFunc, IrFuncDefaultConstructorMode, IrFuncOwnerInfo, IrFuncOwnerInfoMethod,
    IrFuncOwnerInfoMethodMode,
};
use crate::codegen::ir::namespace::NamespacedName;
use crate::if_then_some;
use crate::library::codegen::generator::api_dart::spec_generator::base::*;
use crate::library::codegen::generator::api_dart::spec_generator::info::ApiDartGeneratorInfoTrait;
use convert_case::{Case, Casing};
use itertools::Itertools;

pub(crate) fn generate_api_methods(
    generalized_class_name: &NamespacedName,
    context: ApiDartGeneratorContext,
) -> Vec<String> {
    get_methods_of_enum_or_struct(generalized_class_name, &context.ir_pack.funcs)
        .iter()
        .map(|func| generate_api_method(func, context))
        .collect_vec()
}

// TODO move
pub(crate) fn dart_constructor_postfix(
    name: &NamespacedName,
    all_funcs: &[IrFunc],
) -> &'static str {
    if has_default_dart_constructor(name, all_funcs) {
        ".raw"
    } else {
        ""
    }
}

fn has_default_dart_constructor(name: &NamespacedName, all_funcs: &[IrFunc]) -> bool {
    get_methods_of_enum_or_struct(name, all_funcs)
        .iter()
        .any(|m| {
            m.default_constructor_mode() == Some(IrFuncDefaultConstructorMode::DartConstructor)
        })
}

fn get_methods_of_enum_or_struct<'a>(
    name: &NamespacedName,
    all_funcs: &'a [IrFunc],
) -> Vec<&'a IrFunc> {
    (all_funcs.iter())
        .filter(|f| matches!(&f.owner, IrFuncOwnerInfo::Method(m) if &m.owner_ty_name() == name))
        .collect_vec()
}

fn generate_api_method(func: &IrFunc, context: ApiDartGeneratorContext) -> String {
    let api_dart_func = api_dart::spec_generator::function::generate(func, context)?;

    let method_info =
        if_then_some!(let IrFuncOwnerInfo::Method(info) = &func.owner , info).unwrap();
    let is_static_method = method_info.mode == IrFuncOwnerInfoMethodMode::Static;
    let default_constructor_mode = func.default_constructor_mode();

    let skip_names = compute_skip_names(func, method_info);

    let params = generate_params(func, context, skip_count);
    let comments = generate_comments(func, default_constructor_mode);
    let signature = generate_signature(
        func,
        context,
        method_info,
        params,
        default_constructor_mode,
        &api_dart_func,
    );
    let arg_names = generate_arg_names(func, &api_dart_func, &skip_names).concat();
    let implementation = generate_implementation(func, context, is_static_method, arg_names);

    format!("{comments}{signature}=>{implementation};\n\n")
}

fn compute_skip_names(func: &IrFunc, method_info: &IrFuncOwnerInfoMethod) -> Vec<&str> {
    let mut ans = vec![];
    if method_info.mode != IrFuncOwnerInfoMethodMode::Static {
        ans.push("that");
    }
    if func.getter {
        ans.push("hint");
    }
    ans
}

fn generate_comments(
    func: &IrFunc,
    default_constructor_mode: Option<IrFuncDefaultConstructorMode>,
) -> String {
    let mut ans = String::new();
    if default_constructor_mode == Some(IrFuncDefaultConstructorMode::StaticMethod) {
        ans += "  // HINT: Make it `#[frb(sync)]` to let it become the default constructor of Dart class.\n";
    }
    ans += &generate_dart_comments(&func.comments);
    ans
}

fn generate_params(
    func: &IrFunc,
    context: ApiDartGeneratorContext,
    skip_count: usize,
) -> Vec<String> {
    let mut ans = func
        .inputs
        .iter()
        .skip(skip_count)
        .map(|input| {
            let required = generate_field_required_modifier(input);
            let default = generate_field_default(input, false, context.config.dart_enums_style);
            let type_str = ApiDartGenerator::new(input.ty.clone(), context).dart_api_type();
            let name_str = input.name.dart_style();
            format!("{required}{type_str} {name_str} {default}")
        })
        .collect_vec();

    ans.push("dynamic hint".to_string());

    ans
}

fn generate_signature(
    func: &IrFunc,
    context: ApiDartGeneratorContext,
    method_info: &IrFuncOwnerInfoMethod,
    func_params: Vec<String>,
    default_constructor_mode: Option<IrFuncDefaultConstructorMode>,
    api_dart_func: &ApiDartGeneratedFunction,
) -> String {
    let is_static_method = method_info.mode == IrFuncOwnerInfoMethodMode::Static;
    let maybe_static = if is_static_method { "static" } else { "" };
    let return_type = api_dart_func.func_return_type;
    let method_name = if default_constructor_mode.is_some() {
        "newInstance".to_owned()
    } else {
        method_info.actual_method_name.to_case(Case::Camel)
    };
    let (func_params, maybe_getter) = if func.getter {
        ("".to_owned(), "get")
    } else {
        (format!("({{ {} }})", func_params.join(",")), "")
    };

    if default_constructor_mode == Some(IrFuncDefaultConstructorMode::DartConstructor) {
        return format!("factory {return_type}{func_params}");
    }

    format!("{maybe_static} {return_type} {maybe_getter} {method_name}{func_params}")
}

fn generate_arg_names(
    func: &IrFunc,
    api_dart_func: &ApiDartGeneratedFunction,
    skip_names: &[&str],
) -> Vec<String> {
    let mut ans = (api_dart_func.func_params.iter())
        .filter(|param| !skip_names.contains(param.name_str))
        .collect_vec();
    if !func.getter {
        ans.push("hint: hint,".to_string());
    }
    ans
}

fn generate_implementation(
    func: &IrFunc,
    context: ApiDartGeneratorContext,
    is_static_method: bool,
    arg_names: String,
) -> String {
    let dart_entrypoint_class_name = &context.config.dart_entrypoint_class_name;
    let dart_api_instance = format!("{dart_entrypoint_class_name}.instance.api");

    let func_name = func.name.name.clone().to_case(Case::Camel);

    if is_static_method {
        format!("{dart_api_instance}.{func_name}({arg_names})")
    } else {
        let extra_arg_name = func.inputs[0].name.dart_style();
        format!("{dart_api_instance}.{func_name}({extra_arg_name}: this, {arg_names})")
    }
}
