// This file is automatically generated, so please do not edit it.
// Generated by `flutter_rust_bridge`@ 2.0.0-dev.38.

// ignore_for_file: unused_import, unused_element, unnecessary_import, duplicate_ignore, invalid_use_of_internal_member, annotate_overrides, non_constant_identifier_names, curly_braces_in_flow_control_structures, prefer_const_literals_to_create_immutables, unused_field

// Static analysis wrongly picks the IO variant, thus ignore this
// ignore_for_file: argument_type_not_assignable

import 'dart:async';
import 'dart:convert';

import 'package:flutter_rust_bridge/flutter_rust_bridge_for_generated_web.dart';

import 'api/minimal.dart';
import 'frb_generated.dart';

abstract class RustLibApiImplPlatform extends BaseApiImpl<RustLibWire> {
  RustLibApiImplPlatform({
    required super.handler,
    required super.wire,
    required super.generalizedFrbRustBinding,
    required super.portManager,
  });

  @protected
  int dco_decode_i_32(dynamic raw);

  @protected
  Uint64List dco_decode_list_prim_u_64_strict(dynamic raw);

  @protected
  BigInt dco_decode_u_64(dynamic raw);

  @protected
  void dco_decode_unit(dynamic raw);

  @protected
  int sse_decode_i_32(SseDeserializer deserializer);

  @protected
  Uint64List sse_decode_list_prim_u_64_strict(SseDeserializer deserializer);

  @protected
  BigInt sse_decode_u_64(SseDeserializer deserializer);

  @protected
  void sse_decode_unit(SseDeserializer deserializer);

  @protected
  bool sse_decode_bool(SseDeserializer deserializer);

  @protected
  JSArray /* BigInt64Array */ cst_encode_list_prim_u_64_strict(Uint64List raw) {
    // Codec=Cst (C-struct based), see doc to use other codecs
    // return raw.inner.map((x) => JSBigInt(TODO)).toList().toJS;
    throw UnimplementedError('TODO');
  }

  @protected
  Object cst_encode_u_64(BigInt raw) {
    // Codec=Cst (C-struct based), see doc to use other codecs
    return castNativeBigInt(raw);
  }

  @protected
  int cst_encode_i_32(int raw);

  @protected
  void cst_encode_unit(void raw);

  @protected
  void sse_encode_i_32(int self, SseSerializer serializer);

  @protected
  void sse_encode_list_prim_u_64_strict(
      Uint64List self, SseSerializer serializer);

  @protected
  void sse_encode_u_64(BigInt self, SseSerializer serializer);

  @protected
  void sse_encode_unit(void self, SseSerializer serializer);

  @protected
  void sse_encode_bool(bool self, SseSerializer serializer);
}

// Section: wire_class

class RustLibWire implements BaseWire {
  RustLibWire.fromExternalLibrary(ExternalLibrary lib);

  void wire__crate__api__minimal__f(
          NativePortType port_, JSArray /* BigInt64Array */ a) =>
      wasmModule.wire__crate__api__minimal__f(port_, a);

  void wire__crate__api__minimal__init_app(NativePortType port_) =>
      wasmModule.wire__crate__api__minimal__init_app(port_);

  void wire__crate__api__minimal__minimal_adder(
          NativePortType port_, int a, int b) =>
      wasmModule.wire__crate__api__minimal__minimal_adder(port_, a, b);
}

@JS('wasm_bindgen')
external RustLibWasmModule get wasmModule;

@JS()
@anonymous
extension type RustLibWasmModule._(JSObject _) implements JSObject {
  external void wire__crate__api__minimal__f(
      NativePortType port_, JSArray /* BigInt64Array */ a);

  external void wire__crate__api__minimal__init_app(NativePortType port_);

  external void wire__crate__api__minimal__minimal_adder(
      NativePortType port_, int a, int b);
}
