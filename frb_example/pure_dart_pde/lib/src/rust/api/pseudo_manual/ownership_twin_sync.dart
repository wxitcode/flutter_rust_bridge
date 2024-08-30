// This file is automatically generated, so please do not edit it.
// @generated by `flutter_rust_bridge`@ 2.3.0.

// ignore_for_file: invalid_use_of_internal_member, unused_import, unnecessary_import

import '../../frb_generated.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge_for_generated.dart';

// These function are ignored because they are on traits that is not defined in current crate (put an empty `#[frb]` on it to unignore): `clone`

String borrowStringTwinSync({required String arg}) => RustLib.instance.api
    .crateApiPseudoManualOwnershipTwinSyncBorrowStringTwinSync(arg: arg);

String borrowStrTwinSync({required String arg}) => RustLib.instance.api
    .crateApiPseudoManualOwnershipTwinSyncBorrowStrTwinSync(arg: arg);

int borrowI32TwinSync({required int arg}) => RustLib.instance.api
    .crateApiPseudoManualOwnershipTwinSyncBorrowI32TwinSync(arg: arg);

Uint8List borrowSliceU8TwinSync({required List<int> arg}) =>
    RustLib.instance.api
        .crateApiPseudoManualOwnershipTwinSyncBorrowSliceU8TwinSync(arg: arg);

List<String> borrowSliceStringTwinSync({required List<String> arg}) => RustLib
    .instance.api
    .crateApiPseudoManualOwnershipTwinSyncBorrowSliceStringTwinSync(arg: arg);

SimpleStructForBorrowTwinSync borrowStructTwinSync(
        {required SimpleStructForBorrowTwinSync arg}) =>
    RustLib.instance.api
        .crateApiPseudoManualOwnershipTwinSyncBorrowStructTwinSync(arg: arg);

class SimpleStructForBorrowTwinSync {
  final String one;

  const SimpleStructForBorrowTwinSync({
    required this.one,
  });

  @override
  int get hashCode => one.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SimpleStructForBorrowTwinSync &&
          runtimeType == other.runtimeType &&
          one == other.one;
}
