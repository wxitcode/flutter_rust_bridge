// This file is automatically generated, so please do not edit it.
// Generated by `flutter_rust_bridge`@ 2.0.0-dev.36.

// ignore_for_file: invalid_use_of_internal_member, unused_import, unnecessary_import

import '../../frb_generated.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge_for_generated.dart';

Future<String> borrowStringTwinRustAsync({required String arg}) =>
    RustLib.instance.api
        .crateApiPseudoManualOwnershipTwinRustAsyncBorrowStringTwinRustAsync(
            arg: arg);

Future<String> borrowStrTwinRustAsync({required String arg}) => RustLib
    .instance.api
    .crateApiPseudoManualOwnershipTwinRustAsyncBorrowStrTwinRustAsync(arg: arg);

Future<int> borrowI32TwinRustAsync({required int arg}) => RustLib.instance.api
    .crateApiPseudoManualOwnershipTwinRustAsyncBorrowI32TwinRustAsync(arg: arg);

Future<SimpleStructForBorrowTwinRustAsync> borrowStructTwinRustAsync(
        {required SimpleStructForBorrowTwinRustAsync arg}) =>
    RustLib.instance.api
        .crateApiPseudoManualOwnershipTwinRustAsyncBorrowStructTwinRustAsync(
            arg: arg);

class SimpleStructForBorrowTwinRustAsync {
  final String one;

  const SimpleStructForBorrowTwinRustAsync({
    required this.one,
  });

  @override
  int get hashCode => one.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SimpleStructForBorrowTwinRustAsync &&
          runtimeType == other.runtimeType &&
          one == other.one;
}
