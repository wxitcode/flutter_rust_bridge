use super::into_dart::IntoDart;
use crate::for_generated::DartNativeSendPort;

#[derive(Debug, Clone)]
pub struct DartSendPort(i64);

impl DartSendPort {
    pub fn new(native: DartNativeSendPort) -> Self {
        Self(todo!())
    }

    pub fn post(&self, msg: impl IntoDart + Send) -> bool {
        let msg_boxed = TODO;
        todo!()
    }
}
