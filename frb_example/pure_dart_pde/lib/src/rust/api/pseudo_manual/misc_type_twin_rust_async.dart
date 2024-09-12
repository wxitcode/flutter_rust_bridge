// This file is automatically generated, so please do not edit it.
// @generated by `flutter_rust_bridge`@ 2.3.0.

import 'dart:io';

// ignore_for_file: invalid_use_of_internal_member, unused_import, unnecessary_import

import '../../auxiliary/sample_types.dart';
import '../../frb_generated.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge_for_generated.dart';

// These function are ignored because they are on traits that is not defined in current crate (put an empty `#[frb]` on it to unignore): `clone`, `fmt`

Future<void> funcReturnUnitTwinRustAsync() => RustLib.instance.api
    .crateApiPseudoManualMiscTypeTwinRustAsyncFuncReturnUnitTwinRustAsync();

Future<List<MySize>> handleListOfStructTwinRustAsync(
        {required List<MySize> l}) =>
    RustLib.instance.api
        .crateApiPseudoManualMiscTypeTwinRustAsyncHandleListOfStructTwinRustAsync(
            l: l);

Future<List<String>> handleStringListTwinRustAsync(
        {required List<String> names}) =>
    RustLib.instance.api
        .crateApiPseudoManualMiscTypeTwinRustAsyncHandleStringListTwinRustAsync(
            names: names);

Future<EmptyTwinRustAsync> emptyStructTwinRustAsync(
        {required EmptyTwinRustAsync empty}) =>
    RustLib.instance.api
        .crateApiPseudoManualMiscTypeTwinRustAsyncEmptyStructTwinRustAsync(
            empty: empty);

class EmptyTwinRustAsync {
  const EmptyTwinRustAsync();

  @override
  int get hashCode => 0;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is EmptyTwinRustAsync && runtimeType == other.runtimeType;
}
