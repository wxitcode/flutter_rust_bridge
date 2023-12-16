// This file is automatically generated, so please do not edit it.
// Generated by `flutter_rust_bridge`@ 1.82.4.

// ignore_for_file: unused_import, unused_element, unnecessary_import, duplicate_ignore, invalid_use_of_internal_member, annotate_overrides, non_constant_identifier_names, curly_braces_in_flow_control_structures, prefer_const_literals_to_create_immutables

import 'api/minimal.dart';
import 'dart:async';
import 'dart:convert';
import 'frb_generated.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge_for_generated_web.dart';

abstract class RustLibApiImplPlatform extends BaseApiImpl<RustLibWire> {
  RustLibApiImplPlatform({
    required super.handler,
    required super.wire,
    required super.generalizedFrbRustBinding,
    required super.portManager,
  });

  @protected
  FutureOr<void> Function() dco_decode_DartFn_Inputs__Output_unit(dynamic raw);

  @protected
  Object dco_decode_DartOpaque(dynamic raw);

  @protected
  int dco_decode_i_32(dynamic raw);

  @protected
  void dco_decode_unit(dynamic raw);

  @protected
  int dco_decode_usize(dynamic raw);

  @protected
  Object sse_decode_DartOpaque(SseDeserializer deserializer);

  @protected
  int sse_decode_i_32(SseDeserializer deserializer);

  @protected
  void sse_decode_unit(SseDeserializer deserializer);

  @protected
  int sse_decode_usize(SseDeserializer deserializer);

  @protected
  bool sse_decode_bool(SseDeserializer deserializer);

  @protected
  PlatformPointer cst_encode_DartFn_Inputs__Output_unit(
      FutureOr<void> Function() raw);

  @protected
  PlatformPointer cst_encode_DartOpaque(Object raw);

  @protected
  int cst_encode_i_32(int raw);

  @protected
  void cst_encode_unit(void raw);

  @protected
  int cst_encode_usize(int raw);

  @protected
  void sse_encode_DartFn_Inputs__Output_unit(
      FutureOr<void> Function() self, SseSerializer serializer);

  @protected
  void sse_encode_DartOpaque(Object self, SseSerializer serializer);

  @protected
  void sse_encode_i_32(int self, SseSerializer serializer);

  @protected
  void sse_encode_unit(void self, SseSerializer serializer);

  @protected
  void sse_encode_usize(int self, SseSerializer serializer);

  @protected
  void sse_encode_bool(bool self, SseSerializer serializer);
}

// Section: wire_class

class RustLibWire extends BaseWire {
  RustLibWire.fromExternalLibrary(ExternalLibrary lib);

  void dart_fn_deliver_output(int call_id, PlatformGeneralizedUint8ListPtr ptr_,
          int rust_vec_len_, int data_len_) =>
      wasmModule.dart_fn_deliver_output(
          call_id, ptr_, rust_vec_len_, data_len_);

  void wire_hi_1(NativePortType port_, PlatformPointer callback) =>
      wasmModule.wire_hi_1(port_, callback);

  void wire_hi_2(NativePortType port_, PlatformPointer opaque) =>
      wasmModule.wire_hi_2(port_, opaque);

  void wire_minimal_adder(NativePortType port_, int a, int b) =>
      wasmModule.wire_minimal_adder(port_, a, b);
}

@JS('wasm_bindgen')
external RustLibWasmModule get wasmModule;

@JS()
@anonymous
class RustLibWasmModule implements WasmModule {
  @override
  external Object /* Promise */ call([String? moduleName]);

  @override
  external RustLibWasmModule bind(dynamic thisArg, String moduleName);

  external void dart_fn_deliver_output(int call_id,
      PlatformGeneralizedUint8ListPtr ptr_, int rust_vec_len_, int data_len_);

  external void wire_hi_1(NativePortType port_, PlatformPointer callback);

  external void wire_hi_2(NativePortType port_, PlatformPointer opaque);

  external void wire_minimal_adder(NativePortType port_, int a, int b);
}
