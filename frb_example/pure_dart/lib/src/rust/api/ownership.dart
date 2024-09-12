// This file is automatically generated, so please do not edit it.
// @generated by `flutter_rust_bridge`@ 2.3.0.

import 'dart:io';

// ignore_for_file: invalid_use_of_internal_member, unused_import, unnecessary_import

import '../frb_generated.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge_for_generated.dart';

// These function are ignored because they are on traits that is not defined in current crate (put an empty `#[frb]` on it to unignore): `clone`

Future<String> borrowStringTwinNormal({required String arg}) =>
    RustLib.instance.api.crateApiOwnershipBorrowStringTwinNormal(arg: arg);

Future<String> borrowStrTwinNormal({required String arg}) =>
    RustLib.instance.api.crateApiOwnershipBorrowStrTwinNormal(arg: arg);

Future<int> borrowI32TwinNormal({required int arg}) =>
    RustLib.instance.api.crateApiOwnershipBorrowI32TwinNormal(arg: arg);

Future<Uint8List> borrowSliceU8TwinNormal({required List<int> arg}) =>
    RustLib.instance.api.crateApiOwnershipBorrowSliceU8TwinNormal(arg: arg);

Future<List<String>> borrowSliceStringTwinNormal({required List<String> arg}) =>
    RustLib.instance.api.crateApiOwnershipBorrowSliceStringTwinNormal(arg: arg);

Future<SimpleStructForBorrowTwinNormal> borrowStructTwinNormal(
        {required SimpleStructForBorrowTwinNormal arg}) =>
    RustLib.instance.api.crateApiOwnershipBorrowStructTwinNormal(arg: arg);

class SimpleStructForBorrowTwinNormal {
  final String one;

  const SimpleStructForBorrowTwinNormal({
    required this.one,
  });

  @override
  int get hashCode => one.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SimpleStructForBorrowTwinNormal &&
          runtimeType == other.runtimeType &&
          one == other.one;
}
