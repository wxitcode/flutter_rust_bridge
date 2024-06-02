// This file is automatically generated, so please do not edit it.
// Generated by `flutter_rust_bridge`@ 2.0.0-dev.37.

// ignore_for_file: invalid_use_of_internal_member, unused_import, unnecessary_import

import '../../frb_generated.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge_for_generated.dart';
import 'package:freezed_annotation/freezed_annotation.dart' hide protected;
import 'package:meta/meta.dart' as meta;
part 'attribute_twin_sse.freezed.dart';

// These functions are ignored because they are not marked as `pub`: `clone`, `fmt`
// These types are ignored because they are not used by any `pub` functions: `IgnoredStructTwinSse`
// These functions are ignored: `func_should_not_exist_in_dart_twin_sse`, `method_should_not_exist_in_dart_twin_sse`, `method_should_not_exist_in_dart_twin_sse`

Future<void> handleCustomizedStructTwinSse({required CustomizedTwinSse val}) =>
    RustLib.instance.api
        .crateApiPseudoManualAttributeTwinSseHandleCustomizedStructTwinSse(
            val: val);

Future<UserIdTwinSse> nextUserIdTwinSse(
        {UserIdTwinSse userId = const UserIdTwinSse()}) =>
    RustLib.instance.api
        .crateApiPseudoManualAttributeTwinSseNextUserIdTwinSse(userId: userId);

class CustomizedTwinSse {
  final String finalField;
  String? nonFinalField;

  CustomizedTwinSse({
    required this.finalField,
    this.nonFinalField,
  });

  @override
  int get hashCode => finalField.hashCode ^ nonFinalField.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CustomizedTwinSse &&
          runtimeType == other.runtimeType &&
          finalField == other.finalField &&
          nonFinalField == other.nonFinalField;
}

/// Example for @freezed and @meta.immutable
@freezed
@meta.immutable
class UserIdTwinSse with _$UserIdTwinSse {
  const factory UserIdTwinSse({
    @Default(0) int value,
  }) = _UserIdTwinSse;
}
