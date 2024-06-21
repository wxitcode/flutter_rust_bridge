// This file is automatically generated, so please do not edit it.
// Generated by `flutter_rust_bridge`@ 2.0.0.

// ignore_for_file: invalid_use_of_internal_member, unused_import, unnecessary_import

import '../frb_generated.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge_for_generated.dart';
import 'pseudo_manual/stream_twin_rust_async.dart';

// These functions are ignored because they are not marked as `pub`: `handle_stream_inner`
// These function are ignored because they are on traits that is not defined in current crate (put an empty `#[frb]` on it to unignore): `clone`, `fmt`

Future<Stream<String>> funcStreamReturnErrorTwinNormal() =>
    RustLib.instance.api.crateApiStreamFuncStreamReturnErrorTwinNormal();

Future<Stream<String>> funcStreamReturnPanicTwinNormal() =>
    RustLib.instance.api.crateApiStreamFuncStreamReturnPanicTwinNormal();

Stream<int> funcStreamSinkArgPositionTwinNormal(
        {required int a, required int b}) =>
    RustLib.instance.api
        .crateApiStreamFuncStreamSinkArgPositionTwinNormal(a: a, b: b);

Stream<MyStreamEntryTwinNormal> handleStreamOfStructTwinNormal() =>
    RustLib.instance.api.crateApiStreamHandleStreamOfStructTwinNormal();

Stream<LogTwinNormal> handleStreamSinkAt1TwinNormal(
        {required int key, required int max}) =>
    RustLib.instance.api
        .crateApiStreamHandleStreamSinkAt1TwinNormal(key: key, max: max);

Stream<LogTwinNormal> handleStreamSinkAt2TwinNormal(
        {required int key, required int max}) =>
    RustLib.instance.api
        .crateApiStreamHandleStreamSinkAt2TwinNormal(key: key, max: max);

Stream<LogTwinNormal> handleStreamSinkAt3TwinNormal(
        {required int key, required int max}) =>
    RustLib.instance.api
        .crateApiStreamHandleStreamSinkAt3TwinNormal(key: key, max: max);

Stream<U8Array2> streamSinkFixedSizedPrimitiveArrayTwinNormal() =>
    RustLib.instance.api
        .crateApiStreamStreamSinkFixedSizedPrimitiveArrayTwinNormal();

Future<void> streamSinkInsideVecTwinNormal(
        {required List<RustStreamSink<int>> arg}) =>
    RustLib.instance.api.crateApiStreamStreamSinkInsideVecTwinNormal(arg: arg);

Future<void> streamSinkInsideStructTwinNormal(
        {required MyStructContainingStreamSinkTwinNormal arg}) =>
    RustLib.instance.api
        .crateApiStreamStreamSinkInsideStructTwinNormal(arg: arg);

Stream<int> funcStreamAddValueAndErrorTwinNormal() =>
    RustLib.instance.api.crateApiStreamFuncStreamAddValueAndErrorTwinNormal();

class LogTwinNormal {
  final int key;
  final int value;

  const LogTwinNormal({
    required this.key,
    required this.value,
  });

  @override
  int get hashCode => key.hashCode ^ value.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is LogTwinNormal &&
          runtimeType == other.runtimeType &&
          key == other.key &&
          value == other.value;
}

class MyStreamEntryTwinNormal {
  final String hello;

  const MyStreamEntryTwinNormal({
    required this.hello,
  });

  @override
  int get hashCode => hello.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MyStreamEntryTwinNormal &&
          runtimeType == other.runtimeType &&
          hello == other.hello;
}

class MyStructContainingStreamSinkTwinNormal {
  final int a;
  final RustStreamSink<int> b;

  const MyStructContainingStreamSinkTwinNormal({
    required this.a,
    required this.b,
  });

  @override
  int get hashCode => a.hashCode ^ b.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MyStructContainingStreamSinkTwinNormal &&
          runtimeType == other.runtimeType &&
          a == other.a &&
          b == other.b;
}
