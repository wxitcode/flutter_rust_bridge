// This file is automatically generated, so please do not edit it.
// Generated by `flutter_rust_bridge`@ 2.0.0-dev.37.

// ignore_for_file: invalid_use_of_internal_member, unused_import, unnecessary_import

import '../../frb_generated.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge_for_generated.dart';

// The type `ComplexEnumWithCommentsTwinRustAsyncSse` is not used by any `pub` functions, thus it is ignored.
// The type `SimpleEnumWithCommentsTwinRustAsyncSse` is not used by any `pub` functions, thus it is ignored.

/// This is single line comment
Future<void> functionWithCommentsTripleSlashSingleLineTwinRustAsyncSse() => RustLib
    .instance.api
    .crateApiPseudoManualCommentTwinRustAsyncSseFunctionWithCommentsTripleSlashSingleLineTwinRustAsyncSse();

/// This is first line
/// This is second line
Future<void> functionWithCommentsTripleSlashMultiLineTwinRustAsyncSse() => RustLib
    .instance.api
    .crateApiPseudoManualCommentTwinRustAsyncSseFunctionWithCommentsTripleSlashMultiLineTwinRustAsyncSse();

/// Multiline comments are fine,
/// but they are not preferred in Rust nor in Dart.
/// Newlines are preserved.
Future<void> functionWithCommentsSlashStarStarTwinRustAsyncSse() => RustLib
    .instance.api
    .crateApiPseudoManualCommentTwinRustAsyncSseFunctionWithCommentsSlashStarStarTwinRustAsyncSse();

/// Comments on structs
class StructWithCommentsTwinRustAsyncSse {
  /// Documentation on a struct field
  final int fieldWithComments;

  const StructWithCommentsTwinRustAsyncSse({
    required this.fieldWithComments,
  });

  /// Documentation on an instance method
  Future<void> instanceMethodTwinRustAsyncSse() => RustLib.instance.api
          .crateApiPseudoManualCommentTwinRustAsyncSseStructWithCommentsTwinRustAsyncSseInstanceMethodTwinRustAsyncSse(
        that: this,
      );

  /// Documentation on a static method
  static Future<void> staticMethodTwinRustAsyncSse() => RustLib.instance.api
      .crateApiPseudoManualCommentTwinRustAsyncSseStructWithCommentsTwinRustAsyncSseStaticMethodTwinRustAsyncSse();

  @override
  int get hashCode => fieldWithComments.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is StructWithCommentsTwinRustAsyncSse &&
          runtimeType == other.runtimeType &&
          fieldWithComments == other.fieldWithComments;
}
