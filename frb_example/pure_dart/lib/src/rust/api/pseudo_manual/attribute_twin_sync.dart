// This file is automatically generated, so please do not edit it.
// Generated by `flutter_rust_bridge`@ 2.0.0-dev.37.

// ignore_for_file: invalid_use_of_internal_member, unused_import, unnecessary_import

import '../../frb_generated.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge_for_generated.dart';
import 'package:freezed_annotation/freezed_annotation.dart' hide protected;
import 'package:meta/meta.dart' as meta;
part 'attribute_twin_sync.freezed.dart';

// The type `IgnoredStructTwinSync` is not used by any `pub` functions, thus it is ignored.
// The functions `fmt`, `clone` are not `pub`, thus are ignored.

void handleCustomizedStructTwinSync({required CustomizedTwinSync val}) =>
    RustLib.instance.api
        .crateApiPseudoManualAttributeTwinSyncHandleCustomizedStructTwinSync(
            val: val);

UserIdTwinSync nextUserIdTwinSync(
        {UserIdTwinSync userId = const UserIdTwinSync()}) =>
    RustLib.instance.api
        .crateApiPseudoManualAttributeTwinSyncNextUserIdTwinSync(
            userId: userId);

class CustomizedTwinSync {
  final String finalField;
  String? nonFinalField;

  CustomizedTwinSync({
    required this.finalField,
    this.nonFinalField,
  });

  @override
  int get hashCode => finalField.hashCode ^ nonFinalField.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CustomizedTwinSync &&
          runtimeType == other.runtimeType &&
          finalField == other.finalField &&
          nonFinalField == other.nonFinalField;
}

/// Example for @freezed and @meta.immutable
@freezed
@meta.immutable
class UserIdTwinSync with _$UserIdTwinSync {
  const factory UserIdTwinSync({
    @Default(0) int value,
  }) = _UserIdTwinSync;
}
