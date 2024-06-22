// This file is automatically generated, so please do not edit it.
// Generated by `flutter_rust_bridge`@ 2.0.0.

// Section: imports

use super::*;
use crate::app::*;
use flutter_rust_bridge::for_generated::byteorder::{NativeEndian, ReadBytesExt, WriteBytesExt};
use flutter_rust_bridge::for_generated::{transform_result_dco, Lifetimeable, Lockable};
use flutter_rust_bridge::{Handler, IntoIntoDart};

// Section: boilerplate

flutter_rust_bridge::frb_generated_boilerplate_io!();

#[no_mangle]
pub extern "C" fn frbgen_frb_example_rust_ui_todo_list_rust_arc_increment_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerBaseRustState(
    ptr: *const std::ffi::c_void,
) {
    MoiArc::<flutter_rust_bridge::for_generated::RustAutoOpaqueInner<BaseRustState>>::increment_strong_count(ptr as _);
}

#[no_mangle]
pub extern "C" fn frbgen_frb_example_rust_ui_todo_list_rust_arc_decrement_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerBaseRustState(
    ptr: *const std::ffi::c_void,
) {
    MoiArc::<flutter_rust_bridge::for_generated::RustAutoOpaqueInner<BaseRustState>>::decrement_strong_count(ptr as _);
}

#[no_mangle]
pub extern "C" fn frbgen_frb_example_rust_ui_todo_list_rust_arc_increment_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerRustState(
    ptr: *const std::ffi::c_void,
) {
    MoiArc::<flutter_rust_bridge::for_generated::RustAutoOpaqueInner<RustState>>::increment_strong_count(ptr as _);
}

#[no_mangle]
pub extern "C" fn frbgen_frb_example_rust_ui_todo_list_rust_arc_decrement_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerRustState(
    ptr: *const std::ffi::c_void,
) {
    MoiArc::<flutter_rust_bridge::for_generated::RustAutoOpaqueInner<RustState>>::decrement_strong_count(ptr as _);
}
