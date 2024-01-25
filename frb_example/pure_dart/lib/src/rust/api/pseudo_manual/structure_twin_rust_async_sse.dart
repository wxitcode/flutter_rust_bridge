// This file is automatically generated, so please do not edit it.
// Generated by `flutter_rust_bridge`@ 2.0.0-dev.22.

// ignore_for_file: invalid_use_of_internal_member, unused_import, unnecessary_import

import '../../frb_generated.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge_for_generated.dart';

Future<StructWithZeroFieldTwinRustAsyncSse>
    funcStructWithZeroFieldTwinRustAsyncSse(
            {required StructWithZeroFieldTwinRustAsyncSse arg, dynamic hint}) =>
        RustLib.instance.api
            .funcStructWithZeroFieldTwinRustAsyncSse(arg: arg, hint: hint);

Future<StructWithOneFieldTwinRustAsyncSse>
    funcStructWithOneFieldTwinRustAsyncSse(
            {required StructWithOneFieldTwinRustAsyncSse arg, dynamic hint}) =>
        RustLib.instance.api
            .funcStructWithOneFieldTwinRustAsyncSse(arg: arg, hint: hint);

Future<StructWithTwoFieldTwinRustAsyncSse>
    funcStructWithTwoFieldTwinRustAsyncSse(
            {required StructWithTwoFieldTwinRustAsyncSse arg, dynamic hint}) =>
        RustLib.instance.api
            .funcStructWithTwoFieldTwinRustAsyncSse(arg: arg, hint: hint);

Future<TupleStructWithOneFieldTwinRustAsyncSse>
    funcTupleStructWithOneFieldTwinRustAsyncSse(
            {required TupleStructWithOneFieldTwinRustAsyncSse arg,
            dynamic hint}) =>
        RustLib.instance.api
            .funcTupleStructWithOneFieldTwinRustAsyncSse(arg: arg, hint: hint);

Future<TupleStructWithTwoFieldTwinRustAsyncSse>
    funcTupleStructWithTwoFieldTwinRustAsyncSse(
            {required TupleStructWithTwoFieldTwinRustAsyncSse arg,
            dynamic hint}) =>
        RustLib.instance.api
            .funcTupleStructWithTwoFieldTwinRustAsyncSse(arg: arg, hint: hint);

class StructWithOneFieldTwinRustAsyncSse {
  final int a;

  const StructWithOneFieldTwinRustAsyncSse({
    required this.a,
  });

  @override
  int get hashCode => a.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is StructWithOneFieldTwinRustAsyncSse &&
          runtimeType == other.runtimeType &&
          a == other.a;
}

class StructWithTwoFieldTwinRustAsyncSse {
  final int a;
  final int b;

  const StructWithTwoFieldTwinRustAsyncSse({
    required this.a,
    required this.b,
  });

  @override
  int get hashCode => a.hashCode ^ b.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is StructWithTwoFieldTwinRustAsyncSse &&
          runtimeType == other.runtimeType &&
          a == other.a &&
          b == other.b;
}

class StructWithZeroFieldTwinRustAsyncSse {
  const StructWithZeroFieldTwinRustAsyncSse();

  @override
  int get hashCode => 0;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is StructWithZeroFieldTwinRustAsyncSse &&
          runtimeType == other.runtimeType;
}

class TupleStructWithOneFieldTwinRustAsyncSse {
  final int field0;

  const TupleStructWithOneFieldTwinRustAsyncSse({
    required this.field0,
  });

  @override
  int get hashCode => field0.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TupleStructWithOneFieldTwinRustAsyncSse &&
          runtimeType == other.runtimeType &&
          field0 == other.field0;
}

class TupleStructWithTwoFieldTwinRustAsyncSse {
  final int field0;
  final int field1;

  const TupleStructWithTwoFieldTwinRustAsyncSse({
    required this.field0,
    required this.field1,
  });

  @override
  int get hashCode => field0.hashCode ^ field1.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TupleStructWithTwoFieldTwinRustAsyncSse &&
          runtimeType == other.runtimeType &&
          field0 == other.field0 &&
          field1 == other.field1;
}
