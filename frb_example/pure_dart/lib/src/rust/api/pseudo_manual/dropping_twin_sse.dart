// This file is automatically generated, so please do not edit it.
// Generated by `flutter_rust_bridge`@ 2.0.0-dev.37.

// ignore_for_file: invalid_use_of_internal_member, unused_import, unnecessary_import

import '../../frb_generated.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge_for_generated.dart';

// The functions `deref`, `initialize`, `drop` are not `pub`, thus are ignored.

// Rust type: RustOpaqueNom<flutter_rust_bridge::for_generated::RustAutoOpaqueInner<DroppableTwinSse>>
@sealed
class DroppableTwinSse extends RustOpaque {
  // Not to be used by end users
  DroppableTwinSse.frbInternalDcoDecode(List<dynamic> wire)
      : super.frbInternalDcoDecode(wire, _kStaticData);

  // Not to be used by end users
  DroppableTwinSse.frbInternalSseDecode(BigInt ptr, int externalSizeOnNative)
      : super.frbInternalSseDecode(ptr, externalSizeOnNative, _kStaticData);

  static final _kStaticData = RustArcStaticData(
    rustArcIncrementStrongCount:
        RustLib.instance.api.rust_arc_increment_strong_count_DroppableTwinSse,
    rustArcDecrementStrongCount:
        RustLib.instance.api.rust_arc_decrement_strong_count_DroppableTwinSse,
    rustArcDecrementStrongCountPtr: RustLib
        .instance.api.rust_arc_decrement_strong_count_DroppableTwinSsePtr,
  );

  Stream<int> createStreamTwinSse() => RustLib.instance.api
          .crateApiPseudoManualDroppingTwinSseDroppableTwinSseCreateStreamTwinSse(
        that: this,
      );

  static Future<int> getDropCountTwinSse() => RustLib.instance.api
      .crateApiPseudoManualDroppingTwinSseDroppableTwinSseGetDropCountTwinSse();

  static Future<DroppableTwinSse> newTwinSse() => RustLib.instance.api
      .crateApiPseudoManualDroppingTwinSseDroppableTwinSseNewTwinSse();

  Future<void> simpleMethodTwinSse() => RustLib.instance.api
          .crateApiPseudoManualDroppingTwinSseDroppableTwinSseSimpleMethodTwinSse(
        that: this,
      );
}
