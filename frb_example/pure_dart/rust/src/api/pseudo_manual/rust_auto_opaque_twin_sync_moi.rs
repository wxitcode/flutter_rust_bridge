// NOTE: This file is mimicking how a human developer writes tests,
// and is auto-generated from `rust_auto_opaque.rs` by frb_internal
// Please do not modify manually, but modify the origin and re-run frb_internal generator

// FRB_INTERNAL_GENERATOR: {"enableAll": true}

use flutter_rust_bridge::frb;
use std::path::PathBuf;

// TODO auto determine it is opaque or not later
#[frb(opaque)]
// Do *NOT* make it Clone or serializable
pub struct NonCloneSimpleTwinSyncMoi {
    inner: i32,
}

// ==================================== simple =======================================

#[flutter_rust_bridge::frb(rust_opaque_codec_moi)]
#[flutter_rust_bridge::frb(sync)]
pub fn rust_auto_opaque_arg_own_twin_sync_moi(arg: NonCloneSimpleTwinSyncMoi, expect: i32) {
    assert_eq!(arg.inner, expect);
}

#[flutter_rust_bridge::frb(rust_opaque_codec_moi)]
#[flutter_rust_bridge::frb(sync)]
pub fn rust_auto_opaque_arg_borrow_twin_sync_moi(arg: &NonCloneSimpleTwinSyncMoi, expect: i32) {
    assert_eq!(arg.inner, expect);
}

#[flutter_rust_bridge::frb(rust_opaque_codec_moi)]
#[flutter_rust_bridge::frb(sync)]
pub fn rust_auto_opaque_arg_mut_borrow_twin_sync_moi(
    arg: &mut NonCloneSimpleTwinSyncMoi,
    expect: i32,
    adder: i32,
) {
    assert_eq!(arg.inner, expect);
    arg.inner += adder;
}

#[flutter_rust_bridge::frb(rust_opaque_codec_moi)]
#[flutter_rust_bridge::frb(sync)]
pub fn rust_auto_opaque_return_own_twin_sync_moi(initial: i32) -> NonCloneSimpleTwinSyncMoi {
    NonCloneSimpleTwinSyncMoi { inner: initial }
}

// ==================================== with other args =======================================

#[flutter_rust_bridge::frb(rust_opaque_codec_moi)]
#[flutter_rust_bridge::frb(sync)]
pub fn rust_auto_opaque_arg_own_and_return_own_twin_sync_moi(
    arg: NonCloneSimpleTwinSyncMoi,
) -> NonCloneSimpleTwinSyncMoi {
    assert_eq!(arg.inner, 42);
    arg
}

#[flutter_rust_bridge::frb(rust_opaque_codec_moi)]
#[flutter_rust_bridge::frb(sync)]
pub fn rust_auto_opaque_two_args_twin_sync_moi(
    a: NonCloneSimpleTwinSyncMoi,
    b: NonCloneSimpleTwinSyncMoi,
) {
    assert_eq!(a.inner, 10);
    assert_eq!(b.inner, 20);
}

#[flutter_rust_bridge::frb(rust_opaque_codec_moi)]
#[flutter_rust_bridge::frb(sync)]
pub fn rust_auto_opaque_normal_and_opaque_arg_twin_sync_moi(
    a: NonCloneSimpleTwinSyncMoi,
    b: String,
) {
    assert_eq!(a.inner, 42);
    assert_eq!(b, "hello");
}

// ==================================== complex type signatures =======================================

pub trait MyTraitTwinSyncMoi {
    fn f(&self) -> &str;
}
impl MyTraitTwinSyncMoi for String {
    fn f(&self) -> &str {
        self
    }
}

/// "+" inside the type signature
#[flutter_rust_bridge::frb(rust_opaque_codec_moi)]
#[flutter_rust_bridge::frb(sync)]
pub fn rust_auto_opaque_plus_sign_arg_twin_sync_moi(
    arg: Box<dyn MyTraitTwinSyncMoi + Send + Sync>,
) {
    assert_eq!(arg.f(), "hello");
}

#[flutter_rust_bridge::frb(rust_opaque_codec_moi)]
#[flutter_rust_bridge::frb(sync)]
pub fn rust_auto_opaque_plus_sign_return_twin_sync_moi() -> Box<dyn MyTraitTwinSyncMoi + Send + Sync>
{
    Box::new("hello".to_owned())
}

#[flutter_rust_bridge::frb(rust_opaque_codec_moi)]
#[flutter_rust_bridge::frb(sync)]
pub fn rust_auto_opaque_callable_arg_twin_sync_moi(
    arg: Box<dyn Fn(String) -> String + Send + Sync>,
) {
    assert_eq!(&arg("hello".into()), "hellohello");
}

#[flutter_rust_bridge::frb(rust_opaque_codec_moi)]
#[flutter_rust_bridge::frb(sync)]
pub fn rust_auto_opaque_callable_return_twin_sync_moi(
) -> Box<dyn Fn(String) -> String + Send + Sync> {
    Box::new(|x: String| x.repeat(2))
}

// ==================================== trait object =======================================

pub trait HelloTraitTwinSyncMoi: Send + Sync {
    fn func_hello(&self) -> &str;
}

pub struct HelloOneStructTwinSyncMoi {
    inner: String,
}

impl HelloTraitTwinSyncMoi for HelloOneStructTwinSyncMoi {
    fn func_hello(&self) -> &str {
        &self.inner
    }
}

pub enum HelloTwoEnumTwinSyncMoi {
    A,
    B,
}

impl HelloTraitTwinSyncMoi for HelloTwoEnumTwinSyncMoi {
    fn func_hello(&self) -> &str {
        match self {
            HelloTwoEnumTwinSyncMoi::A => "A",
            HelloTwoEnumTwinSyncMoi::B => "B",
        }
    }
}

#[flutter_rust_bridge::frb(rust_opaque_codec_moi)]
#[flutter_rust_bridge::frb(sync)]
pub fn rust_auto_opaque_trait_object_arg_own_twin_sync_moi(
    arg: Box<dyn HelloTraitTwinSyncMoi>,
    expect: String,
) {
    assert_eq!(arg.func_hello(), expect);
}

#[allow(clippy::borrowed_box)]
#[flutter_rust_bridge::frb(rust_opaque_codec_moi)]
#[flutter_rust_bridge::frb(sync)]
pub fn rust_auto_opaque_trait_object_arg_borrow_twin_sync_moi(
    arg: &Box<dyn HelloTraitTwinSyncMoi>,
    expect: String,
) {
    assert_eq!(arg.func_hello(), expect);
}

#[flutter_rust_bridge::frb(rust_opaque_codec_moi)]
#[flutter_rust_bridge::frb(sync)]
pub fn rust_auto_opaque_trait_object_arg_mut_borrow_twin_sync_moi(
    arg: &mut Box<dyn HelloTraitTwinSyncMoi>,
    expect: String,
) {
    assert_eq!(arg.func_hello(), expect);
}

#[flutter_rust_bridge::frb(rust_opaque_codec_moi)]
#[flutter_rust_bridge::frb(sync)]
pub fn rust_auto_opaque_trait_object_return_own_one_twin_sync_moi() -> Box<dyn HelloTraitTwinSyncMoi>
{
    Box::new(HelloOneStructTwinSyncMoi {
        inner: "hello".into(),
    })
}

#[flutter_rust_bridge::frb(rust_opaque_codec_moi)]
#[flutter_rust_bridge::frb(sync)]
pub fn rust_auto_opaque_trait_object_return_own_two_twin_sync_moi() -> Box<dyn HelloTraitTwinSyncMoi>
{
    Box::new(HelloTwoEnumTwinSyncMoi::B)
}

// ==================================== static method =======================================

impl NonCloneSimpleTwinSyncMoi {
    #[flutter_rust_bridge::frb(rust_opaque_codec_moi)]
    #[flutter_rust_bridge::frb(sync)]
    pub fn static_method_arg_own_twin_sync_moi(arg: NonCloneSimpleTwinSyncMoi) {
        assert_eq!(arg.inner, 42);
    }

    #[flutter_rust_bridge::frb(rust_opaque_codec_moi)]
    #[flutter_rust_bridge::frb(sync)]
    pub fn static_method_arg_borrow_twin_sync_moi(arg: &NonCloneSimpleTwinSyncMoi) {
        assert_eq!(arg.inner, 42);
    }

    #[flutter_rust_bridge::frb(rust_opaque_codec_moi)]
    #[flutter_rust_bridge::frb(sync)]
    pub fn static_method_arg_mut_borrow_twin_sync_moi(arg: &mut NonCloneSimpleTwinSyncMoi) {
        assert_eq!(arg.inner, 42);
    }

    #[flutter_rust_bridge::frb(rust_opaque_codec_moi)]
    #[flutter_rust_bridge::frb(sync)]
    pub fn static_method_return_own_twin_sync_moi() -> NonCloneSimpleTwinSyncMoi {
        NonCloneSimpleTwinSyncMoi { inner: 42 }
    }
}

// ==================================== instance method =======================================

impl NonCloneSimpleTwinSyncMoi {
    /// unnamed constructor
    #[flutter_rust_bridge::frb(rust_opaque_codec_moi)]
    #[flutter_rust_bridge::frb(sync)]
    pub fn new_twin_sync_moi() -> NonCloneSimpleTwinSyncMoi {
        Self { inner: 42 }
    }

    /// named constructor
    #[flutter_rust_bridge::frb(rust_opaque_codec_moi)]
    #[flutter_rust_bridge::frb(sync)]
    pub fn new_custom_name_twin_sync_moi() -> NonCloneSimpleTwinSyncMoi {
        Self { inner: 42 }
    }

    /// constructor with Result
    #[flutter_rust_bridge::frb(rust_opaque_codec_moi)]
    #[flutter_rust_bridge::frb(sync)]
    pub fn new_with_result_twin_sync_moi() -> anyhow::Result<NonCloneSimpleTwinSyncMoi> {
        Ok(Self { inner: 42 })
    }

    #[flutter_rust_bridge::frb(rust_opaque_codec_moi)]
    #[flutter_rust_bridge::frb(sync)]
    pub fn instance_method_arg_own_twin_sync_moi(self) {
        assert_eq!(self.inner, 42);
    }

    #[flutter_rust_bridge::frb(rust_opaque_codec_moi)]
    #[flutter_rust_bridge::frb(sync)]
    pub fn instance_method_arg_borrow_twin_sync_moi(&self) {
        assert_eq!(self.inner, 42);
    }

    #[flutter_rust_bridge::frb(rust_opaque_codec_moi)]
    #[flutter_rust_bridge::frb(sync)]
    pub fn instance_method_arg_mut_borrow_twin_sync_moi(&mut self) {
        assert_eq!(self.inner, 42);
    }

    #[flutter_rust_bridge::frb(rust_opaque_codec_moi)]
    #[flutter_rust_bridge::frb(sync)]
    pub fn instance_method_return_own_twin_sync_moi(&self) -> NonCloneSimpleTwinSyncMoi {
        Self { inner: 42 }
    }

    #[frb(getter)]
    #[flutter_rust_bridge::frb(rust_opaque_codec_moi)]
    #[flutter_rust_bridge::frb(sync)]
    pub fn instance_method_getter_twin_sync_moi(&self) -> i32 {
        self.inner
    }
}

// ================ types with both encodable and opaque fields ===================

#[frb(opaque)]
pub struct StructWithGoodAndOpaqueFieldTwinSyncMoi {
    pub good: String,
    pub opaque: NonCloneSimpleTwinSyncMoi,
}

#[flutter_rust_bridge::frb(rust_opaque_codec_moi)]
#[flutter_rust_bridge::frb(sync)]
pub fn rust_auto_opaque_struct_with_good_and_opaque_field_arg_own_twin_sync_moi(
    arg: StructWithGoodAndOpaqueFieldTwinSyncMoi,
) {
    assert_eq!(&arg.good, "hello");
    assert_eq!(arg.opaque.inner, 42);
}

#[flutter_rust_bridge::frb(rust_opaque_codec_moi)]
#[flutter_rust_bridge::frb(sync)]
pub fn rust_auto_opaque_struct_with_good_and_opaque_field_arg_borrow_twin_sync_moi(
    arg: &StructWithGoodAndOpaqueFieldTwinSyncMoi,
) {
    assert_eq!(&arg.good, "hello");
    assert_eq!(arg.opaque.inner, 42);
}

#[flutter_rust_bridge::frb(rust_opaque_codec_moi)]
#[flutter_rust_bridge::frb(sync)]
pub fn rust_auto_opaque_struct_with_good_and_opaque_field_arg_mut_borrow_twin_sync_moi(
    arg: &mut StructWithGoodAndOpaqueFieldTwinSyncMoi,
) {
    assert_eq!(&arg.good, "hello");
    assert_eq!(arg.opaque.inner, 42);
}

#[flutter_rust_bridge::frb(rust_opaque_codec_moi)]
#[flutter_rust_bridge::frb(sync)]
pub fn rust_auto_opaque_struct_with_good_and_opaque_field_return_own_twin_sync_moi(
) -> StructWithGoodAndOpaqueFieldTwinSyncMoi {
    StructWithGoodAndOpaqueFieldTwinSyncMoi {
        good: "hello".to_string(),
        opaque: NonCloneSimpleTwinSyncMoi { inner: 42 },
    }
}

// ================ misc ===================

// #1577 - this should generate valid Dart code without name collisions
pub struct OpaqueOneTwinSyncMoi(PathBuf);
pub struct OpaqueTwoTwinSyncMoi(PathBuf);
#[flutter_rust_bridge::frb(rust_opaque_codec_moi)]
#[flutter_rust_bridge::frb(sync)]
pub fn rust_auto_opaque_return_opaque_one_and_two_twin_sync_moi(
) -> (OpaqueOneTwinSyncMoi, OpaqueTwoTwinSyncMoi) {
    unimplemented!()
}
#[flutter_rust_bridge::frb(rust_opaque_codec_moi)]
#[flutter_rust_bridge::frb(sync)]
pub fn rust_auto_opaque_return_opaque_two_twin_sync_moi() -> OpaqueTwoTwinSyncMoi {
    unimplemented!()
}

#[flutter_rust_bridge::frb(rust_opaque_codec_moi)]
#[flutter_rust_bridge::frb(sync)]
pub fn rust_auto_opaque_borrow_and_mut_borrow_twin_sync_moi(
    borrow: &NonCloneSimpleTwinSyncMoi,
    mut_borrow: &mut NonCloneSimpleTwinSyncMoi,
) -> i32 {
    borrow.inner + mut_borrow.inner
}

#[flutter_rust_bridge::frb(rust_opaque_codec_moi)]
#[flutter_rust_bridge::frb(sync)]
pub fn rust_auto_opaque_borrow_and_borrow_twin_sync_moi(
    a: &NonCloneSimpleTwinSyncMoi,
    b: &NonCloneSimpleTwinSyncMoi,
) -> i32 {
    a.inner + b.inner
}
