// This file is automatically generated, so please do not edit it.
// Generated by `flutter_rust_bridge`@ 2.0.0-dev.37.

// ignore_for_file: invalid_use_of_internal_member, unused_import, unnecessary_import

import '../frb_generated.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge_for_generated.dart';

// The type `__external_impl__53696d706c654f706171756545787465726e616c537472756374576974684d6574686f64` is not used by any `pub` functions, thus it is ignored.
// The type `__external_impl__53696d706c655472616e736c617461626c6545787465726e616c537472756374576974684d6574686f64` is not used by any `pub` functions, thus it is ignored.

// Rust type: RustOpaqueNom<flutter_rust_bridge::for_generated::RustAutoOpaqueInner<SimpleOpaqueExternalStructWithMethod>>
@sealed
class SimpleOpaqueExternalStructWithMethod extends RustOpaque {
  // Not to be used by end users
  SimpleOpaqueExternalStructWithMethod.frbInternalDcoDecode(List<dynamic> wire)
      : super.frbInternalDcoDecode(wire, _kStaticData);

  // Not to be used by end users
  SimpleOpaqueExternalStructWithMethod.frbInternalSseDecode(
      BigInt ptr, int externalSizeOnNative)
      : super.frbInternalSseDecode(ptr, externalSizeOnNative, _kStaticData);

  static final _kStaticData = RustArcStaticData(
    rustArcIncrementStrongCount: RustLib.instance.api
        .rust_arc_increment_strong_count_SimpleOpaqueExternalStructWithMethod,
    rustArcDecrementStrongCount: RustLib.instance.api
        .rust_arc_decrement_strong_count_SimpleOpaqueExternalStructWithMethod,
    rustArcDecrementStrongCountPtr: RustLib.instance.api
        .rust_arc_decrement_strong_count_SimpleOpaqueExternalStructWithMethodPtr,
  );

  factory SimpleOpaqueExternalStructWithMethod({required String a}) =>
      RustLib.instance.api
          .crateApiExternalImplSimpleOpaqueExternalStructWithMethodNew(a: a);

  Future<String> simpleExternalMethod() => RustLib.instance.api
          .crateApiExternalImplSimpleOpaqueExternalStructWithMethodSimpleExternalMethod(
        that: this,
      );
}

class SimpleTranslatableExternalStructWithMethod {
  final String a;

  const SimpleTranslatableExternalStructWithMethod({
    required this.a,
  });

  Future<String> simpleExternalMethod() => RustLib.instance.api
          .crateApiExternalImplSimpleTranslatableExternalStructWithMethodSimpleExternalMethod(
        that: this,
      );

  @override
  int get hashCode => a.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SimpleTranslatableExternalStructWithMethod &&
          runtimeType == other.runtimeType &&
          a == other.a;
}
