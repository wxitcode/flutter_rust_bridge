use crate::for_generated::BaseArc;
use crate::rust_async::{RwLock, RwLockReadGuard, RwLockWriteGuard};
use crate::rust_opaque::RustOpaqueBase;

impl<T, A: BaseArc<RwLock<T>>> RustOpaqueBase<RwLock<T>, A> {
    // the function signature is not covered while the whole body is covered - looks like a bug in coverage tool
    // frb-coverage:ignore-start
    pub fn rust_auto_opaque_decode_sync_owned(self) -> T {
        // frb-coverage:ignore-end
        self.into_inner()
            .expect("Cannot convert RustOpaque to inner value. This is probably because you are having more than one references to it.")
            .into_inner()
    }

    pub fn rust_auto_opaque_decode_sync_ref(&self) -> RwLockReadGuard<'_, T> {
        self.try_read()
            .expect("Fail to borrow object. Please ensure the object is not borrowed mutably elsewhere at the same time, which violates Rust's rules.")
    }

    pub fn rust_auto_opaque_decode_sync_ref_mut(&self) -> RwLockWriteGuard<'_, T> {
        self.try_write()
            .expect("Fail to mutably borrow object. Please ensure the object is not borrowed elsewhere at the same time, which violates Rust's rules.")
    }

    pub async fn rust_auto_opaque_decode_async_owned(self) -> T {
        self.rust_auto_opaque_decode_sync_owned()
    }

    pub async fn rust_auto_opaque_decode_async_ref(&self) -> RwLockReadGuard<'_, T> {
        self.rust_auto_opaque_decode_sync_ref()
    }

    pub async fn rust_auto_opaque_decode_async_ref_mut(&self) -> RwLockWriteGuard<'_, T> {
        self.rust_auto_opaque_decode_sync_ref_mut()
    }
}

pub fn rust_auto_opaque_encode<T, A: BaseArc<RwLock<T>>>(value: T) -> RustOpaqueBase<RwLock<T>, A> {
    RustOpaqueBase::new(RwLock::new(value))
}
