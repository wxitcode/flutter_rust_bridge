// This file is automatically generated, so please do not edit it.
// Generated by `flutter_rust_bridge`@ 2.0.0-dev.37.

// ignore_for_file: invalid_use_of_internal_member, unused_import, unnecessary_import

import '../frb_generated.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge_for_generated.dart';
import 'package:freezed_annotation/freezed_annotation.dart' hide protected;
import 'package:meta/meta.dart' as meta;
part 'attribute.freezed.dart';

// The type `IgnoredStructTwinNormal` is not used by any `pub` functions, thus it is ignored.
// The functions `fmt`, `clone` are not `pub`, thus are ignored.

Future<void> handleCustomizedStructTwinNormal(
        {required CustomizedTwinNormal val}) =>
    RustLib.instance.api
        .crateApiAttributeHandleCustomizedStructTwinNormal(val: val);

Future<UserIdTwinNormal> nextUserIdTwinNormal(
        {UserIdTwinNormal userId = const UserIdTwinNormal()}) =>
    RustLib.instance.api.crateApiAttributeNextUserIdTwinNormal(userId: userId);

class CustomizedTwinNormal {
  final String finalField;
  String? nonFinalField;

  CustomizedTwinNormal({
    required this.finalField,
    this.nonFinalField,
  });

  @override
  int get hashCode => finalField.hashCode ^ nonFinalField.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CustomizedTwinNormal &&
          runtimeType == other.runtimeType &&
          finalField == other.finalField &&
          nonFinalField == other.nonFinalField;
}

/// Example for @freezed and @meta.immutable
@freezed
@meta.immutable
class UserIdTwinNormal with _$UserIdTwinNormal {
  const factory UserIdTwinNormal({
    @Default(0) int value,
  }) = _UserIdTwinNormal;
}
