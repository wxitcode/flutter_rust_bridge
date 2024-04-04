// This file is automatically generated, so please do not edit it.
// Generated by `flutter_rust_bridge`@ 2.0.0-dev.29.

// ignore_for_file: invalid_use_of_internal_member, unused_import, unnecessary_import

import '../frb_generated.dart';
import 'misc_no_twin_example_a.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge_for_generated.dart';

// Rust type: RustOpaqueMoi<flutter_rust_bridge::for_generated::rust_async::RwLock<StructInMiscNoTwinExampleB>>
@sealed
class StructInMiscNoTwinExampleB extends RustOpaque {
  StructInMiscNoTwinExampleB.dcoDecode(List<dynamic> wire)
      : super.dcoDecode(wire, _kStaticData);

  StructInMiscNoTwinExampleB.sseDecode(int ptr, int externalSizeOnNative)
      : super.sseDecode(ptr, externalSizeOnNative, _kStaticData);

  static final _kStaticData = RustArcStaticData(
    rustArcIncrementStrongCount: RustLib.instance.api
        .rust_arc_increment_strong_count_StructInMiscNoTwinExampleB,
    rustArcDecrementStrongCount: RustLib.instance.api
        .rust_arc_decrement_strong_count_StructInMiscNoTwinExampleB,
    rustArcDecrementStrongCountPtr: RustLib.instance.api
        .rust_arc_decrement_strong_count_StructInMiscNoTwinExampleBPtr,
  );

  Future<StructInMiscNoTwinExampleA> getStructInMiscNoTwinExampleA(
          {dynamic hint}) =>
      RustLib.instance.api
          .structInMiscNoTwinExampleBGetStructInMiscNoTwinExampleA(
        that: this,
        hint: hint,
      );

  Future<void> sampleFunctionB({dynamic hint}) =>
      RustLib.instance.api.structInMiscNoTwinExampleBSampleFunctionB(
        that: this,
        hint: hint,
      );
}
