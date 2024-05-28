// This file is automatically generated, so please do not edit it.
// Generated by `flutter_rust_bridge`@ 2.0.0-dev.36.

// ignore_for_file: invalid_use_of_internal_member, unused_import, unnecessary_import

import '../../frb_generated.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge_for_generated.dart';
import 'stream_twin_rust_async.dart';

Future<Stream<String>> funcStreamReturnErrorTwinRustAsyncSse() => RustLib
    .instance.api
    .crateApiPseudoManualStreamTwinRustAsyncSseFuncStreamReturnErrorTwinRustAsyncSse();

Future<Stream<String>> funcStreamReturnPanicTwinRustAsyncSse() => RustLib
    .instance.api
    .crateApiPseudoManualStreamTwinRustAsyncSseFuncStreamReturnPanicTwinRustAsyncSse();

Stream<int> funcStreamSinkArgPositionTwinRustAsyncSse(
        {required int a, required int b}) =>
    RustLib.instance.api
        .crateApiPseudoManualStreamTwinRustAsyncSseFuncStreamSinkArgPositionTwinRustAsyncSse(
            a: a, b: b);

Stream<MyStreamEntryTwinRustAsyncSse> handleStreamOfStructTwinRustAsyncSse() =>
    RustLib.instance.api
        .crateApiPseudoManualStreamTwinRustAsyncSseHandleStreamOfStructTwinRustAsyncSse();

Stream<LogTwinRustAsyncSse> handleStreamSinkAt1TwinRustAsyncSse(
        {required int key, required int max}) =>
    RustLib.instance.api
        .crateApiPseudoManualStreamTwinRustAsyncSseHandleStreamSinkAt1TwinRustAsyncSse(
            key: key, max: max);

Stream<LogTwinRustAsyncSse> handleStreamSinkAt2TwinRustAsyncSse(
        {required int key, required int max}) =>
    RustLib.instance.api
        .crateApiPseudoManualStreamTwinRustAsyncSseHandleStreamSinkAt2TwinRustAsyncSse(
            key: key, max: max);

Stream<LogTwinRustAsyncSse> handleStreamSinkAt3TwinRustAsyncSse(
        {required int key, required int max}) =>
    RustLib.instance.api
        .crateApiPseudoManualStreamTwinRustAsyncSseHandleStreamSinkAt3TwinRustAsyncSse(
            key: key, max: max);

Stream<U8Array2> streamSinkFixedSizedPrimitiveArrayTwinRustAsyncSse() => RustLib
    .instance.api
    .crateApiPseudoManualStreamTwinRustAsyncSseStreamSinkFixedSizedPrimitiveArrayTwinRustAsyncSse();

Future<void> streamSinkInsideVecTwinRustAsyncSse(
        {required List<RustStreamSink<int>> arg}) =>
    RustLib.instance.api
        .crateApiPseudoManualStreamTwinRustAsyncSseStreamSinkInsideVecTwinRustAsyncSse(
            arg: arg);

Future<void> streamSinkInsideStructTwinRustAsyncSse(
        {required MyStructContainingStreamSinkTwinRustAsyncSse arg}) =>
    RustLib.instance.api
        .crateApiPseudoManualStreamTwinRustAsyncSseStreamSinkInsideStructTwinRustAsyncSse(
            arg: arg);

class LogTwinRustAsyncSse {
  final int key;
  final int value;

  const LogTwinRustAsyncSse({
    required this.key,
    required this.value,
  });

  @override
  int get hashCode => key.hashCode ^ value.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is LogTwinRustAsyncSse &&
          runtimeType == other.runtimeType &&
          key == other.key &&
          value == other.value;
}

class MyStreamEntryTwinRustAsyncSse {
  final String hello;

  const MyStreamEntryTwinRustAsyncSse({
    required this.hello,
  });

  @override
  int get hashCode => hello.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MyStreamEntryTwinRustAsyncSse &&
          runtimeType == other.runtimeType &&
          hello == other.hello;
}

class MyStructContainingStreamSinkTwinRustAsyncSse {
  final int a;
  final RustStreamSink<int> b;

  const MyStructContainingStreamSinkTwinRustAsyncSse({
    required this.a,
    required this.b,
  });

  @override
  int get hashCode => a.hashCode ^ b.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MyStructContainingStreamSinkTwinRustAsyncSse &&
          runtimeType == other.runtimeType &&
          a == other.a &&
          b == other.b;
}
