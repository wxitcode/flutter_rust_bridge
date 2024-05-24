// This file is automatically generated, so please do not edit it.
// Generated by `flutter_rust_bridge`@ 2.0.0-dev.35.

// ignore_for_file: invalid_use_of_internal_member, unused_import, unnecessary_import

import '../../frb_generated.dart';
import 'package:collection/collection.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge_for_generated.dart';
import 'package:freezed_annotation/freezed_annotation.dart' hide protected;
import 'rust_opaque_twin_rust_async.dart';
part 'rust_opaque_twin_sync.freezed.dart';

HideDataTwinSync createOpaqueTwinSync({dynamic hint}) => RustLib.instance.api
    .crateApiPseudoManualRustOpaqueTwinSyncCreateOpaqueTwinSync(hint: hint);

HideDataTwinSync? createOptionOpaqueTwinSync(
        {HideDataTwinSync? opaque, dynamic hint}) =>
    RustLib.instance.api
        .crateApiPseudoManualRustOpaqueTwinSyncCreateOptionOpaqueTwinSync(
            opaque: opaque, hint: hint);

EnumOpaqueTwinSyncArray5 createArrayOpaqueEnumTwinSync({dynamic hint}) =>
    RustLib.instance.api
        .crateApiPseudoManualRustOpaqueTwinSyncCreateArrayOpaqueEnumTwinSync(
            hint: hint);

String runEnumOpaqueTwinSync(
        {required EnumOpaqueTwinSync opaque, dynamic hint}) =>
    RustLib.instance.api
        .crateApiPseudoManualRustOpaqueTwinSyncRunEnumOpaqueTwinSync(
            opaque: opaque, hint: hint);

String runOpaqueTwinSync({required HideDataTwinSync opaque, dynamic hint}) =>
    RustLib.instance.api
        .crateApiPseudoManualRustOpaqueTwinSyncRunOpaqueTwinSync(
            opaque: opaque, hint: hint);

String runOpaqueWithDelayTwinSync(
        {required HideDataTwinSync opaque, dynamic hint}) =>
    RustLib.instance.api
        .crateApiPseudoManualRustOpaqueTwinSyncRunOpaqueWithDelayTwinSync(
            opaque: opaque, hint: hint);

HideDataTwinSyncArray2 opaqueArrayTwinSync({dynamic hint}) =>
    RustLib.instance.api
        .crateApiPseudoManualRustOpaqueTwinSyncOpaqueArrayTwinSync(hint: hint);

String runNonCloneTwinSync(
        {required NonCloneDataTwinSync clone, dynamic hint}) =>
    RustLib.instance.api
        .crateApiPseudoManualRustOpaqueTwinSyncRunNonCloneTwinSync(
            clone: clone, hint: hint);

void opaqueArrayRunTwinSync(
        {required HideDataTwinSyncArray2 data, dynamic hint}) =>
    RustLib.instance.api
        .crateApiPseudoManualRustOpaqueTwinSyncOpaqueArrayRunTwinSync(
            data: data, hint: hint);

List<HideDataTwinSync> opaqueVecTwinSync({dynamic hint}) => RustLib.instance.api
    .crateApiPseudoManualRustOpaqueTwinSyncOpaqueVecTwinSync(hint: hint);

void opaqueVecRunTwinSync(
        {required List<HideDataTwinSync> data, dynamic hint}) =>
    RustLib.instance.api
        .crateApiPseudoManualRustOpaqueTwinSyncOpaqueVecRunTwinSync(
            data: data, hint: hint);

OpaqueNestedTwinSync createNestedOpaqueTwinSync({dynamic hint}) =>
    RustLib.instance.api
        .crateApiPseudoManualRustOpaqueTwinSyncCreateNestedOpaqueTwinSync(
            hint: hint);

void runNestedOpaqueTwinSync(
        {required OpaqueNestedTwinSync opaque, dynamic hint}) =>
    RustLib.instance.api
        .crateApiPseudoManualRustOpaqueTwinSyncRunNestedOpaqueTwinSync(
            opaque: opaque, hint: hint);

String unwrapRustOpaqueTwinSync(
        {required HideDataTwinSync opaque, dynamic hint}) =>
    RustLib.instance.api
        .crateApiPseudoManualRustOpaqueTwinSyncUnwrapRustOpaqueTwinSync(
            opaque: opaque, hint: hint);

/// Function to check the code generator.
/// FrbOpaqueReturn must be only return type.
/// FrbOpaqueReturn must not be used as an argument.
FrbOpaqueReturnTwinSync frbGeneratorTestTwinSync({dynamic hint}) => RustLib
    .instance.api
    .crateApiPseudoManualRustOpaqueTwinSyncFrbGeneratorTestTwinSync(hint: hint);

// Rust type: RustOpaqueMoi<Box < dyn DartDebugTwinSync >>
@sealed
class BoxDartDebugTwinSync extends RustOpaque {
  BoxDartDebugTwinSync.dcoDecode(List<dynamic> wire)
      : super.dcoDecode(wire, _kStaticData);

  BoxDartDebugTwinSync.sseDecode(BigInt ptr, int externalSizeOnNative)
      : super.sseDecode(ptr, externalSizeOnNative, _kStaticData);

  static final _kStaticData = RustArcStaticData(
    rustArcIncrementStrongCount: RustLib
        .instance.api.rust_arc_increment_strong_count_BoxDartDebugTwinSync,
    rustArcDecrementStrongCount: RustLib
        .instance.api.rust_arc_decrement_strong_count_BoxDartDebugTwinSync,
    rustArcDecrementStrongCountPtr: RustLib
        .instance.api.rust_arc_decrement_strong_count_BoxDartDebugTwinSyncPtr,
  );
}

// Rust type: RustOpaqueMoi<FrbOpaqueReturnTwinSync>
@sealed
class FrbOpaqueReturnTwinSync extends RustOpaque {
  FrbOpaqueReturnTwinSync.dcoDecode(List<dynamic> wire)
      : super.dcoDecode(wire, _kStaticData);

  FrbOpaqueReturnTwinSync.sseDecode(BigInt ptr, int externalSizeOnNative)
      : super.sseDecode(ptr, externalSizeOnNative, _kStaticData);

  static final _kStaticData = RustArcStaticData(
    rustArcIncrementStrongCount: RustLib
        .instance.api.rust_arc_increment_strong_count_FrbOpaqueReturnTwinSync,
    rustArcDecrementStrongCount: RustLib
        .instance.api.rust_arc_decrement_strong_count_FrbOpaqueReturnTwinSync,
    rustArcDecrementStrongCountPtr: RustLib.instance.api
        .rust_arc_decrement_strong_count_FrbOpaqueReturnTwinSyncPtr,
  );
}

// Rust type: RustOpaqueMoi<HideDataTwinSync>
@sealed
class HideDataTwinSync extends RustOpaque {
  HideDataTwinSync.dcoDecode(List<dynamic> wire)
      : super.dcoDecode(wire, _kStaticData);

  HideDataTwinSync.sseDecode(BigInt ptr, int externalSizeOnNative)
      : super.sseDecode(ptr, externalSizeOnNative, _kStaticData);

  static final _kStaticData = RustArcStaticData(
    rustArcIncrementStrongCount:
        RustLib.instance.api.rust_arc_increment_strong_count_HideDataTwinSync,
    rustArcDecrementStrongCount:
        RustLib.instance.api.rust_arc_decrement_strong_count_HideDataTwinSync,
    rustArcDecrementStrongCountPtr: RustLib
        .instance.api.rust_arc_decrement_strong_count_HideDataTwinSyncPtr,
  );
}

class HideDataTwinSyncArray2 extends NonGrowableListView<HideDataTwinSync> {
  static const arraySize = 2;

  @internal
  List<HideDataTwinSync> get inner => _inner;
  final List<HideDataTwinSync> _inner;

  HideDataTwinSyncArray2(this._inner)
      : assert(_inner.length == arraySize),
        super(_inner);

  HideDataTwinSyncArray2.init(HideDataTwinSync fill)
      : this(List<HideDataTwinSync>.filled(arraySize, fill));
}

// Rust type: RustOpaqueMoi<Mutex < HideDataTwinSync >>
@sealed
class MutexHideDataTwinSync extends RustOpaque {
  MutexHideDataTwinSync.dcoDecode(List<dynamic> wire)
      : super.dcoDecode(wire, _kStaticData);

  MutexHideDataTwinSync.sseDecode(BigInt ptr, int externalSizeOnNative)
      : super.sseDecode(ptr, externalSizeOnNative, _kStaticData);

  static final _kStaticData = RustArcStaticData(
    rustArcIncrementStrongCount: RustLib
        .instance.api.rust_arc_increment_strong_count_MutexHideDataTwinSync,
    rustArcDecrementStrongCount: RustLib
        .instance.api.rust_arc_decrement_strong_count_MutexHideDataTwinSync,
    rustArcDecrementStrongCountPtr: RustLib
        .instance.api.rust_arc_decrement_strong_count_MutexHideDataTwinSyncPtr,
  );
}

// Rust type: RustOpaqueMoi<NonCloneDataTwinSync>
@sealed
class NonCloneDataTwinSync extends RustOpaque {
  NonCloneDataTwinSync.dcoDecode(List<dynamic> wire)
      : super.dcoDecode(wire, _kStaticData);

  NonCloneDataTwinSync.sseDecode(BigInt ptr, int externalSizeOnNative)
      : super.sseDecode(ptr, externalSizeOnNative, _kStaticData);

  static final _kStaticData = RustArcStaticData(
    rustArcIncrementStrongCount: RustLib
        .instance.api.rust_arc_increment_strong_count_NonCloneDataTwinSync,
    rustArcDecrementStrongCount: RustLib
        .instance.api.rust_arc_decrement_strong_count_NonCloneDataTwinSync,
    rustArcDecrementStrongCountPtr: RustLib
        .instance.api.rust_arc_decrement_strong_count_NonCloneDataTwinSyncPtr,
  );
}

// Rust type: RustOpaqueMoi<RwLock < HideDataTwinSync >>
@sealed
class RwLockHideDataTwinSync extends RustOpaque {
  RwLockHideDataTwinSync.dcoDecode(List<dynamic> wire)
      : super.dcoDecode(wire, _kStaticData);

  RwLockHideDataTwinSync.sseDecode(BigInt ptr, int externalSizeOnNative)
      : super.sseDecode(ptr, externalSizeOnNative, _kStaticData);

  static final _kStaticData = RustArcStaticData(
    rustArcIncrementStrongCount: RustLib
        .instance.api.rust_arc_increment_strong_count_RwLockHideDataTwinSync,
    rustArcDecrementStrongCount: RustLib
        .instance.api.rust_arc_decrement_strong_count_RwLockHideDataTwinSync,
    rustArcDecrementStrongCountPtr: RustLib
        .instance.api.rust_arc_decrement_strong_count_RwLockHideDataTwinSyncPtr,
  );
}

@freezed
sealed class EnumOpaqueTwinSync with _$EnumOpaqueTwinSync {
  const EnumOpaqueTwinSync._();

  const factory EnumOpaqueTwinSync.struct(
    HideDataTwinSync field0,
  ) = EnumOpaqueTwinSync_Struct;
  const factory EnumOpaqueTwinSync.primitive(
    I32 field0,
  ) = EnumOpaqueTwinSync_Primitive;
  const factory EnumOpaqueTwinSync.traitObj(
    BoxDartDebugTwinSync field0,
  ) = EnumOpaqueTwinSync_TraitObj;
  const factory EnumOpaqueTwinSync.mutex(
    MutexHideDataTwinSync field0,
  ) = EnumOpaqueTwinSync_Mutex;
  const factory EnumOpaqueTwinSync.rwLock(
    RwLockHideDataTwinSync field0,
  ) = EnumOpaqueTwinSync_RwLock;
  const factory EnumOpaqueTwinSync.nothing() = EnumOpaqueTwinSync_Nothing;
}

class EnumOpaqueTwinSyncArray5 extends NonGrowableListView<EnumOpaqueTwinSync> {
  static const arraySize = 5;

  @internal
  List<EnumOpaqueTwinSync> get inner => _inner;
  final List<EnumOpaqueTwinSync> _inner;

  EnumOpaqueTwinSyncArray5(this._inner)
      : assert(_inner.length == arraySize),
        super(_inner);

  EnumOpaqueTwinSyncArray5.init(EnumOpaqueTwinSync fill)
      : this(List<EnumOpaqueTwinSync>.filled(arraySize, fill));
}

/// [`HideDataTwinSync`] has private fields.
class OpaqueNestedTwinSync {
  final HideDataTwinSync first;
  final HideDataTwinSync second;

  const OpaqueNestedTwinSync({
    required this.first,
    required this.second,
  });

  @override
  int get hashCode => first.hashCode ^ second.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is OpaqueNestedTwinSync &&
          runtimeType == other.runtimeType &&
          first == other.first &&
          second == other.second;
}
