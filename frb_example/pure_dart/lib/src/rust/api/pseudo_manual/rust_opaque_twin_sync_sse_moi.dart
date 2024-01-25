// This file is automatically generated, so please do not edit it.
// Generated by `flutter_rust_bridge`@ 2.0.0-dev.22.

// ignore_for_file: invalid_use_of_internal_member, unused_import, unnecessary_import

import '../../frb_generated.dart';
import 'package:collection/collection.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge_for_generated.dart';
import 'package:freezed_annotation/freezed_annotation.dart' hide protected;
import 'rust_opaque_twin_moi.dart';
part 'rust_opaque_twin_sync_sse_moi.freezed.dart';

HideDataTwinSyncSseMoi createOpaqueTwinSyncSseMoi({dynamic hint}) =>
    RustLib.instance.api.createOpaqueTwinSyncSseMoi(hint: hint);

HideDataTwinSyncSseMoi? createOptionOpaqueTwinSyncSseMoi(
        {HideDataTwinSyncSseMoi? opaque, dynamic hint}) =>
    RustLib.instance.api
        .createOptionOpaqueTwinSyncSseMoi(opaque: opaque, hint: hint);

EnumOpaqueTwinSyncSseMoiArray5 createArrayOpaqueEnumTwinSyncSseMoi(
        {dynamic hint}) =>
    RustLib.instance.api.createArrayOpaqueEnumTwinSyncSseMoi(hint: hint);

String runEnumOpaqueTwinSyncSseMoi(
        {required EnumOpaqueTwinSyncSseMoi opaque, dynamic hint}) =>
    RustLib.instance.api
        .runEnumOpaqueTwinSyncSseMoi(opaque: opaque, hint: hint);

String runOpaqueTwinSyncSseMoi(
        {required HideDataTwinSyncSseMoi opaque, dynamic hint}) =>
    RustLib.instance.api.runOpaqueTwinSyncSseMoi(opaque: opaque, hint: hint);

String runOpaqueWithDelayTwinSyncSseMoi(
        {required HideDataTwinSyncSseMoi opaque, dynamic hint}) =>
    RustLib.instance.api
        .runOpaqueWithDelayTwinSyncSseMoi(opaque: opaque, hint: hint);

HideDataTwinSyncSseMoiArray2 opaqueArrayTwinSyncSseMoi({dynamic hint}) =>
    RustLib.instance.api.opaqueArrayTwinSyncSseMoi(hint: hint);

String runNonCloneTwinSyncSseMoi(
        {required NonCloneDataTwinSyncSseMoi clone, dynamic hint}) =>
    RustLib.instance.api.runNonCloneTwinSyncSseMoi(clone: clone, hint: hint);

void opaqueArrayRunTwinSyncSseMoi(
        {required HideDataTwinSyncSseMoiArray2 data, dynamic hint}) =>
    RustLib.instance.api.opaqueArrayRunTwinSyncSseMoi(data: data, hint: hint);

List<HideDataTwinSyncSseMoi> opaqueVecTwinSyncSseMoi({dynamic hint}) =>
    RustLib.instance.api.opaqueVecTwinSyncSseMoi(hint: hint);

void opaqueVecRunTwinSyncSseMoi(
        {required List<HideDataTwinSyncSseMoi> data, dynamic hint}) =>
    RustLib.instance.api.opaqueVecRunTwinSyncSseMoi(data: data, hint: hint);

OpaqueNestedTwinSyncSseMoi createNestedOpaqueTwinSyncSseMoi({dynamic hint}) =>
    RustLib.instance.api.createNestedOpaqueTwinSyncSseMoi(hint: hint);

void runNestedOpaqueTwinSyncSseMoi(
        {required OpaqueNestedTwinSyncSseMoi opaque, dynamic hint}) =>
    RustLib.instance.api
        .runNestedOpaqueTwinSyncSseMoi(opaque: opaque, hint: hint);

String unwrapRustOpaqueTwinSyncSseMoi(
        {required HideDataTwinSyncSseMoi opaque, dynamic hint}) =>
    RustLib.instance.api
        .unwrapRustOpaqueTwinSyncSseMoi(opaque: opaque, hint: hint);

/// Function to check the code generator.
/// FrbOpaqueReturn must be only return type.
/// FrbOpaqueReturn must not be used as an argument.
FrbOpaqueReturnTwinSyncSseMoi frbGeneratorTestTwinSyncSseMoi({dynamic hint}) =>
    RustLib.instance.api.frbGeneratorTestTwinSyncSseMoi(hint: hint);

// Rust type: RustOpaqueMoi<Box < dyn DartDebugTwinSyncSseMoi >>
@sealed
class BoxDartDebugTwinSyncSseMoi extends RustOpaque {
  BoxDartDebugTwinSyncSseMoi.dcoDecode(List<dynamic> wire)
      : super.dcoDecode(wire, _kStaticData);

  BoxDartDebugTwinSyncSseMoi.sseDecode(int ptr, int externalSizeOnNative)
      : super.sseDecode(ptr, externalSizeOnNative, _kStaticData);

  static final _kStaticData = RustArcStaticData(
    rustArcIncrementStrongCount: RustLib.instance.api
        .rust_arc_increment_strong_count_BoxDartDebugTwinSyncSseMoi,
    rustArcDecrementStrongCount: RustLib.instance.api
        .rust_arc_decrement_strong_count_BoxDartDebugTwinSyncSseMoi,
    rustArcDecrementStrongCountPtr: RustLib.instance.api
        .rust_arc_decrement_strong_count_BoxDartDebugTwinSyncSseMoiPtr,
  );
}

// Rust type: RustOpaqueMoi<FrbOpaqueReturnTwinSyncSseMoi>
@sealed
class FrbOpaqueReturnTwinSyncSseMoi extends RustOpaque {
  FrbOpaqueReturnTwinSyncSseMoi.dcoDecode(List<dynamic> wire)
      : super.dcoDecode(wire, _kStaticData);

  FrbOpaqueReturnTwinSyncSseMoi.sseDecode(int ptr, int externalSizeOnNative)
      : super.sseDecode(ptr, externalSizeOnNative, _kStaticData);

  static final _kStaticData = RustArcStaticData(
    rustArcIncrementStrongCount: RustLib.instance.api
        .rust_arc_increment_strong_count_FrbOpaqueReturnTwinSyncSseMoi,
    rustArcDecrementStrongCount: RustLib.instance.api
        .rust_arc_decrement_strong_count_FrbOpaqueReturnTwinSyncSseMoi,
    rustArcDecrementStrongCountPtr: RustLib.instance.api
        .rust_arc_decrement_strong_count_FrbOpaqueReturnTwinSyncSseMoiPtr,
  );
}

// Rust type: RustOpaqueMoi<HideDataTwinSyncSseMoi>
@sealed
class HideDataTwinSyncSseMoi extends RustOpaque {
  HideDataTwinSyncSseMoi.dcoDecode(List<dynamic> wire)
      : super.dcoDecode(wire, _kStaticData);

  HideDataTwinSyncSseMoi.sseDecode(int ptr, int externalSizeOnNative)
      : super.sseDecode(ptr, externalSizeOnNative, _kStaticData);

  static final _kStaticData = RustArcStaticData(
    rustArcIncrementStrongCount: RustLib
        .instance.api.rust_arc_increment_strong_count_HideDataTwinSyncSseMoi,
    rustArcDecrementStrongCount: RustLib
        .instance.api.rust_arc_decrement_strong_count_HideDataTwinSyncSseMoi,
    rustArcDecrementStrongCountPtr: RustLib
        .instance.api.rust_arc_decrement_strong_count_HideDataTwinSyncSseMoiPtr,
  );
}

class HideDataTwinSyncSseMoiArray2
    extends NonGrowableListView<HideDataTwinSyncSseMoi> {
  static const arraySize = 2;

  @internal
  List<HideDataTwinSyncSseMoi> get inner => _inner;
  final List<HideDataTwinSyncSseMoi> _inner;

  HideDataTwinSyncSseMoiArray2(this._inner)
      : assert(_inner.length == arraySize),
        super(_inner);

  HideDataTwinSyncSseMoiArray2.init(HideDataTwinSyncSseMoi fill)
      : this(List<HideDataTwinSyncSseMoi>.filled(arraySize, fill));
}

// Rust type: RustOpaqueMoi<Mutex < HideDataTwinSyncSseMoi >>
@sealed
class MutexHideDataTwinSyncSseMoi extends RustOpaque {
  MutexHideDataTwinSyncSseMoi.dcoDecode(List<dynamic> wire)
      : super.dcoDecode(wire, _kStaticData);

  MutexHideDataTwinSyncSseMoi.sseDecode(int ptr, int externalSizeOnNative)
      : super.sseDecode(ptr, externalSizeOnNative, _kStaticData);

  static final _kStaticData = RustArcStaticData(
    rustArcIncrementStrongCount: RustLib.instance.api
        .rust_arc_increment_strong_count_MutexHideDataTwinSyncSseMoi,
    rustArcDecrementStrongCount: RustLib.instance.api
        .rust_arc_decrement_strong_count_MutexHideDataTwinSyncSseMoi,
    rustArcDecrementStrongCountPtr: RustLib.instance.api
        .rust_arc_decrement_strong_count_MutexHideDataTwinSyncSseMoiPtr,
  );
}

// Rust type: RustOpaqueMoi<NonCloneDataTwinSyncSseMoi>
@sealed
class NonCloneDataTwinSyncSseMoi extends RustOpaque {
  NonCloneDataTwinSyncSseMoi.dcoDecode(List<dynamic> wire)
      : super.dcoDecode(wire, _kStaticData);

  NonCloneDataTwinSyncSseMoi.sseDecode(int ptr, int externalSizeOnNative)
      : super.sseDecode(ptr, externalSizeOnNative, _kStaticData);

  static final _kStaticData = RustArcStaticData(
    rustArcIncrementStrongCount: RustLib.instance.api
        .rust_arc_increment_strong_count_NonCloneDataTwinSyncSseMoi,
    rustArcDecrementStrongCount: RustLib.instance.api
        .rust_arc_decrement_strong_count_NonCloneDataTwinSyncSseMoi,
    rustArcDecrementStrongCountPtr: RustLib.instance.api
        .rust_arc_decrement_strong_count_NonCloneDataTwinSyncSseMoiPtr,
  );
}

// Rust type: RustOpaqueMoi<RwLock < HideDataTwinSyncSseMoi >>
@sealed
class RwLockHideDataTwinSyncSseMoi extends RustOpaque {
  RwLockHideDataTwinSyncSseMoi.dcoDecode(List<dynamic> wire)
      : super.dcoDecode(wire, _kStaticData);

  RwLockHideDataTwinSyncSseMoi.sseDecode(int ptr, int externalSizeOnNative)
      : super.sseDecode(ptr, externalSizeOnNative, _kStaticData);

  static final _kStaticData = RustArcStaticData(
    rustArcIncrementStrongCount: RustLib.instance.api
        .rust_arc_increment_strong_count_RwLockHideDataTwinSyncSseMoi,
    rustArcDecrementStrongCount: RustLib.instance.api
        .rust_arc_decrement_strong_count_RwLockHideDataTwinSyncSseMoi,
    rustArcDecrementStrongCountPtr: RustLib.instance.api
        .rust_arc_decrement_strong_count_RwLockHideDataTwinSyncSseMoiPtr,
  );
}

@freezed
sealed class EnumOpaqueTwinSyncSseMoi with _$EnumOpaqueTwinSyncSseMoi {
  const factory EnumOpaqueTwinSyncSseMoi.struct(
    HideDataTwinSyncSseMoi field0,
  ) = EnumOpaqueTwinSyncSseMoi_Struct;
  const factory EnumOpaqueTwinSyncSseMoi.primitive(
    I16 field0,
  ) = EnumOpaqueTwinSyncSseMoi_Primitive;
  const factory EnumOpaqueTwinSyncSseMoi.traitObj(
    BoxDartDebugTwinSyncSseMoi field0,
  ) = EnumOpaqueTwinSyncSseMoi_TraitObj;
  const factory EnumOpaqueTwinSyncSseMoi.mutex(
    MutexHideDataTwinSyncSseMoi field0,
  ) = EnumOpaqueTwinSyncSseMoi_Mutex;
  const factory EnumOpaqueTwinSyncSseMoi.rwLock(
    RwLockHideDataTwinSyncSseMoi field0,
  ) = EnumOpaqueTwinSyncSseMoi_RwLock;
  const factory EnumOpaqueTwinSyncSseMoi.nothing() =
      EnumOpaqueTwinSyncSseMoi_Nothing;
}

class EnumOpaqueTwinSyncSseMoiArray5
    extends NonGrowableListView<EnumOpaqueTwinSyncSseMoi> {
  static const arraySize = 5;

  @internal
  List<EnumOpaqueTwinSyncSseMoi> get inner => _inner;
  final List<EnumOpaqueTwinSyncSseMoi> _inner;

  EnumOpaqueTwinSyncSseMoiArray5(this._inner)
      : assert(_inner.length == arraySize),
        super(_inner);

  EnumOpaqueTwinSyncSseMoiArray5.init(EnumOpaqueTwinSyncSseMoi fill)
      : this(List<EnumOpaqueTwinSyncSseMoi>.filled(arraySize, fill));
}

/// [`HideDataTwinSyncSseMoi`] has private fields.
class OpaqueNestedTwinSyncSseMoi {
  final HideDataTwinSyncSseMoi first;
  final HideDataTwinSyncSseMoi second;

  const OpaqueNestedTwinSyncSseMoi({
    required this.first,
    required this.second,
  });

  @override
  int get hashCode => first.hashCode ^ second.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is OpaqueNestedTwinSyncSseMoi &&
          runtimeType == other.runtimeType &&
          first == other.first &&
          second == other.second;
}
