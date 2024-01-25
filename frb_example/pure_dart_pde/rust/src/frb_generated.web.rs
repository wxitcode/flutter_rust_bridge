// This file is automatically generated, so please do not edit it.
// Generated by `flutter_rust_bridge`@ 2.0.0-dev.22.

// Section: imports

use super::*;
use crate::api::misc_no_twin_example_a::*;
use crate::api::misc_no_twin_example_b::*;
use crate::api::pseudo_manual::rust_auto_opaque_twin_rust_async::*;
use crate::api::pseudo_manual::rust_auto_opaque_twin_sync::*;
use crate::api::pseudo_manual::rust_opaque_twin_rust_async::*;
use crate::api::pseudo_manual::rust_opaque_twin_sync::*;
use crate::api::rust_auto_opaque::*;
use crate::api::rust_opaque::*;
use crate::api::rust_opaque_sync::*;
use flutter_rust_bridge::for_generated::byteorder::{NativeEndian, ReadBytesExt, WriteBytesExt};
use flutter_rust_bridge::for_generated::transform_result_dco;
use flutter_rust_bridge::for_generated::wasm_bindgen;
use flutter_rust_bridge::for_generated::wasm_bindgen::prelude::*;
use flutter_rust_bridge::{Handler, IntoIntoDart};

// Section: boilerplate

flutter_rust_bridge::frb_generated_boilerplate_web!();

#[wasm_bindgen]
pub fn rust_arc_increment_strong_count_RustOpaque_BoxdynDartDebugTwinNormal(
    ptr: *const std::ffi::c_void,
) {
    MoiArc::<Box<dyn DartDebugTwinNormal>>::increment_strong_count(ptr as _);
}

#[wasm_bindgen]
pub fn rust_arc_decrement_strong_count_RustOpaque_BoxdynDartDebugTwinNormal(
    ptr: *const std::ffi::c_void,
) {
    MoiArc::<Box<dyn DartDebugTwinNormal>>::decrement_strong_count(ptr as _);
}

#[wasm_bindgen]
pub fn rust_arc_increment_strong_count_RustOpaque_BoxdynDartDebugTwinRustAsync(
    ptr: *const std::ffi::c_void,
) {
    MoiArc::<Box<dyn DartDebugTwinRustAsync>>::increment_strong_count(ptr as _);
}

#[wasm_bindgen]
pub fn rust_arc_decrement_strong_count_RustOpaque_BoxdynDartDebugTwinRustAsync(
    ptr: *const std::ffi::c_void,
) {
    MoiArc::<Box<dyn DartDebugTwinRustAsync>>::decrement_strong_count(ptr as _);
}

#[wasm_bindgen]
pub fn rust_arc_increment_strong_count_RustOpaque_BoxdynDartDebugTwinSync(
    ptr: *const std::ffi::c_void,
) {
    MoiArc::<Box<dyn DartDebugTwinSync>>::increment_strong_count(ptr as _);
}

#[wasm_bindgen]
pub fn rust_arc_decrement_strong_count_RustOpaque_BoxdynDartDebugTwinSync(
    ptr: *const std::ffi::c_void,
) {
    MoiArc::<Box<dyn DartDebugTwinSync>>::decrement_strong_count(ptr as _);
}

#[wasm_bindgen]
pub fn rust_arc_increment_strong_count_RustOpaque_FrbOpaqueReturnTwinNormal(
    ptr: *const std::ffi::c_void,
) {
    MoiArc::<FrbOpaqueReturnTwinNormal>::increment_strong_count(ptr as _);
}

#[wasm_bindgen]
pub fn rust_arc_decrement_strong_count_RustOpaque_FrbOpaqueReturnTwinNormal(
    ptr: *const std::ffi::c_void,
) {
    MoiArc::<FrbOpaqueReturnTwinNormal>::decrement_strong_count(ptr as _);
}

#[wasm_bindgen]
pub fn rust_arc_increment_strong_count_RustOpaque_FrbOpaqueReturnTwinRustAsync(
    ptr: *const std::ffi::c_void,
) {
    MoiArc::<FrbOpaqueReturnTwinRustAsync>::increment_strong_count(ptr as _);
}

#[wasm_bindgen]
pub fn rust_arc_decrement_strong_count_RustOpaque_FrbOpaqueReturnTwinRustAsync(
    ptr: *const std::ffi::c_void,
) {
    MoiArc::<FrbOpaqueReturnTwinRustAsync>::decrement_strong_count(ptr as _);
}

#[wasm_bindgen]
pub fn rust_arc_increment_strong_count_RustOpaque_FrbOpaqueReturnTwinSync(
    ptr: *const std::ffi::c_void,
) {
    MoiArc::<FrbOpaqueReturnTwinSync>::increment_strong_count(ptr as _);
}

#[wasm_bindgen]
pub fn rust_arc_decrement_strong_count_RustOpaque_FrbOpaqueReturnTwinSync(
    ptr: *const std::ffi::c_void,
) {
    MoiArc::<FrbOpaqueReturnTwinSync>::decrement_strong_count(ptr as _);
}

#[wasm_bindgen]
pub fn rust_arc_increment_strong_count_RustOpaque_FrbOpaqueSyncReturnTwinNormal(
    ptr: *const std::ffi::c_void,
) {
    MoiArc::<FrbOpaqueSyncReturnTwinNormal>::increment_strong_count(ptr as _);
}

#[wasm_bindgen]
pub fn rust_arc_decrement_strong_count_RustOpaque_FrbOpaqueSyncReturnTwinNormal(
    ptr: *const std::ffi::c_void,
) {
    MoiArc::<FrbOpaqueSyncReturnTwinNormal>::decrement_strong_count(ptr as _);
}

#[wasm_bindgen]
pub fn rust_arc_increment_strong_count_RustOpaque_HideDataAnotherTwinNormal(
    ptr: *const std::ffi::c_void,
) {
    MoiArc::<HideDataAnotherTwinNormal>::increment_strong_count(ptr as _);
}

#[wasm_bindgen]
pub fn rust_arc_decrement_strong_count_RustOpaque_HideDataAnotherTwinNormal(
    ptr: *const std::ffi::c_void,
) {
    MoiArc::<HideDataAnotherTwinNormal>::decrement_strong_count(ptr as _);
}

#[wasm_bindgen]
pub fn rust_arc_increment_strong_count_RustOpaque_HideDataTwinNormal(ptr: *const std::ffi::c_void) {
    MoiArc::<HideDataTwinNormal>::increment_strong_count(ptr as _);
}

#[wasm_bindgen]
pub fn rust_arc_decrement_strong_count_RustOpaque_HideDataTwinNormal(ptr: *const std::ffi::c_void) {
    MoiArc::<HideDataTwinNormal>::decrement_strong_count(ptr as _);
}

#[wasm_bindgen]
pub fn rust_arc_increment_strong_count_RustOpaque_HideDataTwinRustAsync(
    ptr: *const std::ffi::c_void,
) {
    MoiArc::<HideDataTwinRustAsync>::increment_strong_count(ptr as _);
}

#[wasm_bindgen]
pub fn rust_arc_decrement_strong_count_RustOpaque_HideDataTwinRustAsync(
    ptr: *const std::ffi::c_void,
) {
    MoiArc::<HideDataTwinRustAsync>::decrement_strong_count(ptr as _);
}

#[wasm_bindgen]
pub fn rust_arc_increment_strong_count_RustOpaque_HideDataTwinSync(ptr: *const std::ffi::c_void) {
    MoiArc::<HideDataTwinSync>::increment_strong_count(ptr as _);
}

#[wasm_bindgen]
pub fn rust_arc_decrement_strong_count_RustOpaque_HideDataTwinSync(ptr: *const std::ffi::c_void) {
    MoiArc::<HideDataTwinSync>::decrement_strong_count(ptr as _);
}

#[wasm_bindgen]
pub fn rust_arc_increment_strong_count_RustOpaque_MutexHideDataTwinNormal(
    ptr: *const std::ffi::c_void,
) {
    MoiArc::<Mutex<HideDataTwinNormal>>::increment_strong_count(ptr as _);
}

#[wasm_bindgen]
pub fn rust_arc_decrement_strong_count_RustOpaque_MutexHideDataTwinNormal(
    ptr: *const std::ffi::c_void,
) {
    MoiArc::<Mutex<HideDataTwinNormal>>::decrement_strong_count(ptr as _);
}

#[wasm_bindgen]
pub fn rust_arc_increment_strong_count_RustOpaque_MutexHideDataTwinRustAsync(
    ptr: *const std::ffi::c_void,
) {
    MoiArc::<Mutex<HideDataTwinRustAsync>>::increment_strong_count(ptr as _);
}

#[wasm_bindgen]
pub fn rust_arc_decrement_strong_count_RustOpaque_MutexHideDataTwinRustAsync(
    ptr: *const std::ffi::c_void,
) {
    MoiArc::<Mutex<HideDataTwinRustAsync>>::decrement_strong_count(ptr as _);
}

#[wasm_bindgen]
pub fn rust_arc_increment_strong_count_RustOpaque_MutexHideDataTwinSync(
    ptr: *const std::ffi::c_void,
) {
    MoiArc::<Mutex<HideDataTwinSync>>::increment_strong_count(ptr as _);
}

#[wasm_bindgen]
pub fn rust_arc_decrement_strong_count_RustOpaque_MutexHideDataTwinSync(
    ptr: *const std::ffi::c_void,
) {
    MoiArc::<Mutex<HideDataTwinSync>>::decrement_strong_count(ptr as _);
}

#[wasm_bindgen]
pub fn rust_arc_increment_strong_count_RustOpaque_NonCloneDataTwinNormal(
    ptr: *const std::ffi::c_void,
) {
    MoiArc::<NonCloneDataTwinNormal>::increment_strong_count(ptr as _);
}

#[wasm_bindgen]
pub fn rust_arc_decrement_strong_count_RustOpaque_NonCloneDataTwinNormal(
    ptr: *const std::ffi::c_void,
) {
    MoiArc::<NonCloneDataTwinNormal>::decrement_strong_count(ptr as _);
}

#[wasm_bindgen]
pub fn rust_arc_increment_strong_count_RustOpaque_NonCloneDataTwinRustAsync(
    ptr: *const std::ffi::c_void,
) {
    MoiArc::<NonCloneDataTwinRustAsync>::increment_strong_count(ptr as _);
}

#[wasm_bindgen]
pub fn rust_arc_decrement_strong_count_RustOpaque_NonCloneDataTwinRustAsync(
    ptr: *const std::ffi::c_void,
) {
    MoiArc::<NonCloneDataTwinRustAsync>::decrement_strong_count(ptr as _);
}

#[wasm_bindgen]
pub fn rust_arc_increment_strong_count_RustOpaque_NonCloneDataTwinSync(
    ptr: *const std::ffi::c_void,
) {
    MoiArc::<NonCloneDataTwinSync>::increment_strong_count(ptr as _);
}

#[wasm_bindgen]
pub fn rust_arc_decrement_strong_count_RustOpaque_NonCloneDataTwinSync(
    ptr: *const std::ffi::c_void,
) {
    MoiArc::<NonCloneDataTwinSync>::decrement_strong_count(ptr as _);
}

#[wasm_bindgen]
pub fn rust_arc_increment_strong_count_RustOpaque_RwLockHideDataTwinNormal(
    ptr: *const std::ffi::c_void,
) {
    MoiArc::<RwLock<HideDataTwinNormal>>::increment_strong_count(ptr as _);
}

#[wasm_bindgen]
pub fn rust_arc_decrement_strong_count_RustOpaque_RwLockHideDataTwinNormal(
    ptr: *const std::ffi::c_void,
) {
    MoiArc::<RwLock<HideDataTwinNormal>>::decrement_strong_count(ptr as _);
}

#[wasm_bindgen]
pub fn rust_arc_increment_strong_count_RustOpaque_RwLockHideDataTwinRustAsync(
    ptr: *const std::ffi::c_void,
) {
    MoiArc::<RwLock<HideDataTwinRustAsync>>::increment_strong_count(ptr as _);
}

#[wasm_bindgen]
pub fn rust_arc_decrement_strong_count_RustOpaque_RwLockHideDataTwinRustAsync(
    ptr: *const std::ffi::c_void,
) {
    MoiArc::<RwLock<HideDataTwinRustAsync>>::decrement_strong_count(ptr as _);
}

#[wasm_bindgen]
pub fn rust_arc_increment_strong_count_RustOpaque_RwLockHideDataTwinSync(
    ptr: *const std::ffi::c_void,
) {
    MoiArc::<RwLock<HideDataTwinSync>>::increment_strong_count(ptr as _);
}

#[wasm_bindgen]
pub fn rust_arc_decrement_strong_count_RustOpaque_RwLockHideDataTwinSync(
    ptr: *const std::ffi::c_void,
) {
    MoiArc::<RwLock<HideDataTwinSync>>::decrement_strong_count(ptr as _);
}

#[wasm_bindgen]
pub fn rust_arc_increment_strong_count_RustOpaque_flutter_rust_bridgefor_generatedrust_asyncRwLockBoxdynFnStringStringSendSync(
    ptr: *const std::ffi::c_void,
) {
    MoiArc::<
        flutter_rust_bridge::for_generated::rust_async::RwLock<
            Box<dyn Fn(String) -> String + Send + Sync>,
        >,
    >::increment_strong_count(ptr as _);
}

#[wasm_bindgen]
pub fn rust_arc_decrement_strong_count_RustOpaque_flutter_rust_bridgefor_generatedrust_asyncRwLockBoxdynFnStringStringSendSync(
    ptr: *const std::ffi::c_void,
) {
    MoiArc::<
        flutter_rust_bridge::for_generated::rust_async::RwLock<
            Box<dyn Fn(String) -> String + Send + Sync>,
        >,
    >::decrement_strong_count(ptr as _);
}

#[wasm_bindgen]
pub fn rust_arc_increment_strong_count_RustOpaque_flutter_rust_bridgefor_generatedrust_asyncRwLockBoxdynHelloTraitTwinNormal(
    ptr: *const std::ffi::c_void,
) {
    MoiArc::<flutter_rust_bridge::for_generated::rust_async::RwLock<Box < dyn HelloTraitTwinNormal >>>::increment_strong_count(ptr as _);
}

#[wasm_bindgen]
pub fn rust_arc_decrement_strong_count_RustOpaque_flutter_rust_bridgefor_generatedrust_asyncRwLockBoxdynHelloTraitTwinNormal(
    ptr: *const std::ffi::c_void,
) {
    MoiArc::<flutter_rust_bridge::for_generated::rust_async::RwLock<Box < dyn HelloTraitTwinNormal >>>::decrement_strong_count(ptr as _);
}

#[wasm_bindgen]
pub fn rust_arc_increment_strong_count_RustOpaque_flutter_rust_bridgefor_generatedrust_asyncRwLockBoxdynHelloTraitTwinRustAsync(
    ptr: *const std::ffi::c_void,
) {
    MoiArc::<
        flutter_rust_bridge::for_generated::rust_async::RwLock<Box<dyn HelloTraitTwinRustAsync>>,
    >::increment_strong_count(ptr as _);
}

#[wasm_bindgen]
pub fn rust_arc_decrement_strong_count_RustOpaque_flutter_rust_bridgefor_generatedrust_asyncRwLockBoxdynHelloTraitTwinRustAsync(
    ptr: *const std::ffi::c_void,
) {
    MoiArc::<
        flutter_rust_bridge::for_generated::rust_async::RwLock<Box<dyn HelloTraitTwinRustAsync>>,
    >::decrement_strong_count(ptr as _);
}

#[wasm_bindgen]
pub fn rust_arc_increment_strong_count_RustOpaque_flutter_rust_bridgefor_generatedrust_asyncRwLockBoxdynHelloTraitTwinSync(
    ptr: *const std::ffi::c_void,
) {
    MoiArc::<flutter_rust_bridge::for_generated::rust_async::RwLock<Box < dyn HelloTraitTwinSync >>>::increment_strong_count(ptr as _);
}

#[wasm_bindgen]
pub fn rust_arc_decrement_strong_count_RustOpaque_flutter_rust_bridgefor_generatedrust_asyncRwLockBoxdynHelloTraitTwinSync(
    ptr: *const std::ffi::c_void,
) {
    MoiArc::<flutter_rust_bridge::for_generated::rust_async::RwLock<Box < dyn HelloTraitTwinSync >>>::decrement_strong_count(ptr as _);
}

#[wasm_bindgen]
pub fn rust_arc_increment_strong_count_RustOpaque_flutter_rust_bridgefor_generatedrust_asyncRwLockBoxdynMyTraitTwinNormalSendSync(
    ptr: *const std::ffi::c_void,
) {
    MoiArc::<
        flutter_rust_bridge::for_generated::rust_async::RwLock<
            Box<dyn MyTraitTwinNormal + Send + Sync>,
        >,
    >::increment_strong_count(ptr as _);
}

#[wasm_bindgen]
pub fn rust_arc_decrement_strong_count_RustOpaque_flutter_rust_bridgefor_generatedrust_asyncRwLockBoxdynMyTraitTwinNormalSendSync(
    ptr: *const std::ffi::c_void,
) {
    MoiArc::<
        flutter_rust_bridge::for_generated::rust_async::RwLock<
            Box<dyn MyTraitTwinNormal + Send + Sync>,
        >,
    >::decrement_strong_count(ptr as _);
}

#[wasm_bindgen]
pub fn rust_arc_increment_strong_count_RustOpaque_flutter_rust_bridgefor_generatedrust_asyncRwLockBoxdynMyTraitTwinRustAsyncSendSync(
    ptr: *const std::ffi::c_void,
) {
    MoiArc::<
        flutter_rust_bridge::for_generated::rust_async::RwLock<
            Box<dyn MyTraitTwinRustAsync + Send + Sync>,
        >,
    >::increment_strong_count(ptr as _);
}

#[wasm_bindgen]
pub fn rust_arc_decrement_strong_count_RustOpaque_flutter_rust_bridgefor_generatedrust_asyncRwLockBoxdynMyTraitTwinRustAsyncSendSync(
    ptr: *const std::ffi::c_void,
) {
    MoiArc::<
        flutter_rust_bridge::for_generated::rust_async::RwLock<
            Box<dyn MyTraitTwinRustAsync + Send + Sync>,
        >,
    >::decrement_strong_count(ptr as _);
}

#[wasm_bindgen]
pub fn rust_arc_increment_strong_count_RustOpaque_flutter_rust_bridgefor_generatedrust_asyncRwLockBoxdynMyTraitTwinSyncSendSync(
    ptr: *const std::ffi::c_void,
) {
    MoiArc::<
        flutter_rust_bridge::for_generated::rust_async::RwLock<
            Box<dyn MyTraitTwinSync + Send + Sync>,
        >,
    >::increment_strong_count(ptr as _);
}

#[wasm_bindgen]
pub fn rust_arc_decrement_strong_count_RustOpaque_flutter_rust_bridgefor_generatedrust_asyncRwLockBoxdynMyTraitTwinSyncSendSync(
    ptr: *const std::ffi::c_void,
) {
    MoiArc::<
        flutter_rust_bridge::for_generated::rust_async::RwLock<
            Box<dyn MyTraitTwinSync + Send + Sync>,
        >,
    >::decrement_strong_count(ptr as _);
}

#[wasm_bindgen]
pub fn rust_arc_increment_strong_count_RustOpaque_flutter_rust_bridgefor_generatedrust_asyncRwLockNonCloneSimpleEnumTwinNormal(
    ptr: *const std::ffi::c_void,
) {
    MoiArc::<flutter_rust_bridge::for_generated::rust_async::RwLock<NonCloneSimpleEnumTwinNormal>>::increment_strong_count(ptr as _);
}

#[wasm_bindgen]
pub fn rust_arc_decrement_strong_count_RustOpaque_flutter_rust_bridgefor_generatedrust_asyncRwLockNonCloneSimpleEnumTwinNormal(
    ptr: *const std::ffi::c_void,
) {
    MoiArc::<flutter_rust_bridge::for_generated::rust_async::RwLock<NonCloneSimpleEnumTwinNormal>>::decrement_strong_count(ptr as _);
}

#[wasm_bindgen]
pub fn rust_arc_increment_strong_count_RustOpaque_flutter_rust_bridgefor_generatedrust_asyncRwLockNonCloneSimpleEnumTwinRustAsync(
    ptr: *const std::ffi::c_void,
) {
    MoiArc::<flutter_rust_bridge::for_generated::rust_async::RwLock<NonCloneSimpleEnumTwinRustAsync>>::increment_strong_count(ptr as _);
}

#[wasm_bindgen]
pub fn rust_arc_decrement_strong_count_RustOpaque_flutter_rust_bridgefor_generatedrust_asyncRwLockNonCloneSimpleEnumTwinRustAsync(
    ptr: *const std::ffi::c_void,
) {
    MoiArc::<flutter_rust_bridge::for_generated::rust_async::RwLock<NonCloneSimpleEnumTwinRustAsync>>::decrement_strong_count(ptr as _);
}

#[wasm_bindgen]
pub fn rust_arc_increment_strong_count_RustOpaque_flutter_rust_bridgefor_generatedrust_asyncRwLockNonCloneSimpleEnumTwinSync(
    ptr: *const std::ffi::c_void,
) {
    MoiArc::<flutter_rust_bridge::for_generated::rust_async::RwLock<NonCloneSimpleEnumTwinSync>>::increment_strong_count(ptr as _);
}

#[wasm_bindgen]
pub fn rust_arc_decrement_strong_count_RustOpaque_flutter_rust_bridgefor_generatedrust_asyncRwLockNonCloneSimpleEnumTwinSync(
    ptr: *const std::ffi::c_void,
) {
    MoiArc::<flutter_rust_bridge::for_generated::rust_async::RwLock<NonCloneSimpleEnumTwinSync>>::decrement_strong_count(ptr as _);
}

#[wasm_bindgen]
pub fn rust_arc_increment_strong_count_RustOpaque_flutter_rust_bridgefor_generatedrust_asyncRwLockNonCloneSimpleTwinNormal(
    ptr: *const std::ffi::c_void,
) {
    MoiArc::<flutter_rust_bridge::for_generated::rust_async::RwLock<NonCloneSimpleTwinNormal>>::increment_strong_count(ptr as _);
}

#[wasm_bindgen]
pub fn rust_arc_decrement_strong_count_RustOpaque_flutter_rust_bridgefor_generatedrust_asyncRwLockNonCloneSimpleTwinNormal(
    ptr: *const std::ffi::c_void,
) {
    MoiArc::<flutter_rust_bridge::for_generated::rust_async::RwLock<NonCloneSimpleTwinNormal>>::decrement_strong_count(ptr as _);
}

#[wasm_bindgen]
pub fn rust_arc_increment_strong_count_RustOpaque_flutter_rust_bridgefor_generatedrust_asyncRwLockNonCloneSimpleTwinRustAsync(
    ptr: *const std::ffi::c_void,
) {
    MoiArc::<flutter_rust_bridge::for_generated::rust_async::RwLock<NonCloneSimpleTwinRustAsync>>::increment_strong_count(ptr as _);
}

#[wasm_bindgen]
pub fn rust_arc_decrement_strong_count_RustOpaque_flutter_rust_bridgefor_generatedrust_asyncRwLockNonCloneSimpleTwinRustAsync(
    ptr: *const std::ffi::c_void,
) {
    MoiArc::<flutter_rust_bridge::for_generated::rust_async::RwLock<NonCloneSimpleTwinRustAsync>>::decrement_strong_count(ptr as _);
}

#[wasm_bindgen]
pub fn rust_arc_increment_strong_count_RustOpaque_flutter_rust_bridgefor_generatedrust_asyncRwLockNonCloneSimpleTwinSync(
    ptr: *const std::ffi::c_void,
) {
    MoiArc::<flutter_rust_bridge::for_generated::rust_async::RwLock<NonCloneSimpleTwinSync>>::increment_strong_count(ptr as _);
}

#[wasm_bindgen]
pub fn rust_arc_decrement_strong_count_RustOpaque_flutter_rust_bridgefor_generatedrust_asyncRwLockNonCloneSimpleTwinSync(
    ptr: *const std::ffi::c_void,
) {
    MoiArc::<flutter_rust_bridge::for_generated::rust_async::RwLock<NonCloneSimpleTwinSync>>::decrement_strong_count(ptr as _);
}

#[wasm_bindgen]
pub fn rust_arc_increment_strong_count_RustOpaque_flutter_rust_bridgefor_generatedrust_asyncRwLockOpaqueOneTwinNormal(
    ptr: *const std::ffi::c_void,
) {
    MoiArc::<flutter_rust_bridge::for_generated::rust_async::RwLock<OpaqueOneTwinNormal>>::increment_strong_count(ptr as _);
}

#[wasm_bindgen]
pub fn rust_arc_decrement_strong_count_RustOpaque_flutter_rust_bridgefor_generatedrust_asyncRwLockOpaqueOneTwinNormal(
    ptr: *const std::ffi::c_void,
) {
    MoiArc::<flutter_rust_bridge::for_generated::rust_async::RwLock<OpaqueOneTwinNormal>>::decrement_strong_count(ptr as _);
}

#[wasm_bindgen]
pub fn rust_arc_increment_strong_count_RustOpaque_flutter_rust_bridgefor_generatedrust_asyncRwLockOpaqueOneTwinRustAsync(
    ptr: *const std::ffi::c_void,
) {
    MoiArc::<flutter_rust_bridge::for_generated::rust_async::RwLock<OpaqueOneTwinRustAsync>>::increment_strong_count(ptr as _);
}

#[wasm_bindgen]
pub fn rust_arc_decrement_strong_count_RustOpaque_flutter_rust_bridgefor_generatedrust_asyncRwLockOpaqueOneTwinRustAsync(
    ptr: *const std::ffi::c_void,
) {
    MoiArc::<flutter_rust_bridge::for_generated::rust_async::RwLock<OpaqueOneTwinRustAsync>>::decrement_strong_count(ptr as _);
}

#[wasm_bindgen]
pub fn rust_arc_increment_strong_count_RustOpaque_flutter_rust_bridgefor_generatedrust_asyncRwLockOpaqueOneTwinSync(
    ptr: *const std::ffi::c_void,
) {
    MoiArc::<flutter_rust_bridge::for_generated::rust_async::RwLock<OpaqueOneTwinSync>>::increment_strong_count(ptr as _);
}

#[wasm_bindgen]
pub fn rust_arc_decrement_strong_count_RustOpaque_flutter_rust_bridgefor_generatedrust_asyncRwLockOpaqueOneTwinSync(
    ptr: *const std::ffi::c_void,
) {
    MoiArc::<flutter_rust_bridge::for_generated::rust_async::RwLock<OpaqueOneTwinSync>>::decrement_strong_count(ptr as _);
}

#[wasm_bindgen]
pub fn rust_arc_increment_strong_count_RustOpaque_flutter_rust_bridgefor_generatedrust_asyncRwLockOpaqueTwoTwinNormal(
    ptr: *const std::ffi::c_void,
) {
    MoiArc::<flutter_rust_bridge::for_generated::rust_async::RwLock<OpaqueTwoTwinNormal>>::increment_strong_count(ptr as _);
}

#[wasm_bindgen]
pub fn rust_arc_decrement_strong_count_RustOpaque_flutter_rust_bridgefor_generatedrust_asyncRwLockOpaqueTwoTwinNormal(
    ptr: *const std::ffi::c_void,
) {
    MoiArc::<flutter_rust_bridge::for_generated::rust_async::RwLock<OpaqueTwoTwinNormal>>::decrement_strong_count(ptr as _);
}

#[wasm_bindgen]
pub fn rust_arc_increment_strong_count_RustOpaque_flutter_rust_bridgefor_generatedrust_asyncRwLockOpaqueTwoTwinRustAsync(
    ptr: *const std::ffi::c_void,
) {
    MoiArc::<flutter_rust_bridge::for_generated::rust_async::RwLock<OpaqueTwoTwinRustAsync>>::increment_strong_count(ptr as _);
}

#[wasm_bindgen]
pub fn rust_arc_decrement_strong_count_RustOpaque_flutter_rust_bridgefor_generatedrust_asyncRwLockOpaqueTwoTwinRustAsync(
    ptr: *const std::ffi::c_void,
) {
    MoiArc::<flutter_rust_bridge::for_generated::rust_async::RwLock<OpaqueTwoTwinRustAsync>>::decrement_strong_count(ptr as _);
}

#[wasm_bindgen]
pub fn rust_arc_increment_strong_count_RustOpaque_flutter_rust_bridgefor_generatedrust_asyncRwLockOpaqueTwoTwinSync(
    ptr: *const std::ffi::c_void,
) {
    MoiArc::<flutter_rust_bridge::for_generated::rust_async::RwLock<OpaqueTwoTwinSync>>::increment_strong_count(ptr as _);
}

#[wasm_bindgen]
pub fn rust_arc_decrement_strong_count_RustOpaque_flutter_rust_bridgefor_generatedrust_asyncRwLockOpaqueTwoTwinSync(
    ptr: *const std::ffi::c_void,
) {
    MoiArc::<flutter_rust_bridge::for_generated::rust_async::RwLock<OpaqueTwoTwinSync>>::decrement_strong_count(ptr as _);
}

#[wasm_bindgen]
pub fn rust_arc_increment_strong_count_RustOpaque_flutter_rust_bridgefor_generatedrust_asyncRwLockStructInMiscNoTwinExampleA(
    ptr: *const std::ffi::c_void,
) {
    MoiArc::<flutter_rust_bridge::for_generated::rust_async::RwLock<StructInMiscNoTwinExampleA>>::increment_strong_count(ptr as _);
}

#[wasm_bindgen]
pub fn rust_arc_decrement_strong_count_RustOpaque_flutter_rust_bridgefor_generatedrust_asyncRwLockStructInMiscNoTwinExampleA(
    ptr: *const std::ffi::c_void,
) {
    MoiArc::<flutter_rust_bridge::for_generated::rust_async::RwLock<StructInMiscNoTwinExampleA>>::decrement_strong_count(ptr as _);
}

#[wasm_bindgen]
pub fn rust_arc_increment_strong_count_RustOpaque_flutter_rust_bridgefor_generatedrust_asyncRwLockStructInMiscNoTwinExampleB(
    ptr: *const std::ffi::c_void,
) {
    MoiArc::<flutter_rust_bridge::for_generated::rust_async::RwLock<StructInMiscNoTwinExampleB>>::increment_strong_count(ptr as _);
}

#[wasm_bindgen]
pub fn rust_arc_decrement_strong_count_RustOpaque_flutter_rust_bridgefor_generatedrust_asyncRwLockStructInMiscNoTwinExampleB(
    ptr: *const std::ffi::c_void,
) {
    MoiArc::<flutter_rust_bridge::for_generated::rust_async::RwLock<StructInMiscNoTwinExampleB>>::decrement_strong_count(ptr as _);
}

#[wasm_bindgen]
pub fn rust_arc_increment_strong_count_RustOpaque_flutter_rust_bridgefor_generatedrust_asyncRwLockStructWithImplBlockInMultiFile(
    ptr: *const std::ffi::c_void,
) {
    MoiArc::<flutter_rust_bridge::for_generated::rust_async::RwLock<StructWithImplBlockInMultiFile>>::increment_strong_count(ptr as _);
}

#[wasm_bindgen]
pub fn rust_arc_decrement_strong_count_RustOpaque_flutter_rust_bridgefor_generatedrust_asyncRwLockStructWithImplBlockInMultiFile(
    ptr: *const std::ffi::c_void,
) {
    MoiArc::<flutter_rust_bridge::for_generated::rust_async::RwLock<StructWithImplBlockInMultiFile>>::decrement_strong_count(ptr as _);
}

#[wasm_bindgen]
pub fn rust_arc_increment_strong_count_RustOpaque_i32(ptr: *const std::ffi::c_void) {
    MoiArc::<i32>::increment_strong_count(ptr as _);
}

#[wasm_bindgen]
pub fn rust_arc_decrement_strong_count_RustOpaque_i32(ptr: *const std::ffi::c_void) {
    MoiArc::<i32>::decrement_strong_count(ptr as _);
}
