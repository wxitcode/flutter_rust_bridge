use crate::codegen::generator::acc::Acc;
use crate::codegen::generator::codec::structs::BaseCodecEntrypointTrait;
use crate::codegen::generator::wire::rust::spec_generator::base::WireRustGeneratorContext;
use crate::codegen::generator::wire::rust::spec_generator::codec::base::{
    WireRustCodecEntrypointTrait, WireRustCodecOutputSpec,
};
use crate::codegen::generator::wire::rust::spec_generator::extern_func::ExternFuncParam;
use crate::codegen::ir::func::IrFunc;
use crate::codegen::ir::ty::IrType;

pub(crate) struct DcoWireRustCodecEntrypoint {}

impl BaseCodecEntrypointTrait<WireRustGeneratorContext<'_>, WireRustCodecOutputSpec>
    for DcoWireRustCodecEntrypoint
{
    fn generate_encode(
        &self,
        context: WireRustGeneratorContext,
        types: &[IrType],
    ) -> Option<WireRustCodecOutputSpec> {
        Some(super::encoder::generate(
            context.as_wire_rust_codec_dco_context(),
            types,
        ))
    }

    fn generate_decode(
        &self,
        context: WireRustGeneratorContext,
        types: &[IrType],
    ) -> Option<WireRustCodecOutputSpec> {
        None
    }
}

impl WireRustCodecEntrypointTrait<'_> for DcoWireRustCodecEntrypoint {
    fn generate_func_params(
        &self,
        _func: &IrFunc,
        _context: WireRustGeneratorContext,
    ) -> Acc<Vec<ExternFuncParam>> {
        unreachable!()
    }

    fn generate_func_call_decode(
        &self,
        _func: &IrFunc,
        _context: WireRustGeneratorContext,
    ) -> String {
        unreachable!()
    }
}
