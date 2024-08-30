// This file is automatically generated, so please do not edit it.
// @generated by `flutter_rust_bridge`@ 2.3.0.

// ignore_for_file: invalid_use_of_internal_member, unused_import, unnecessary_import

import '../../frb_generated.dart';
import 'package:collection/collection.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge_for_generated.dart';
import 'package:freezed_annotation/freezed_annotation.dart' hide protected;
import 'rust_opaque_twin_rust_async.dart';
part 'rust_opaque_twin_sync.freezed.dart';

HideDataTwinSync createOpaqueTwinSync() => RustLib.instance.api
    .crateApiPseudoManualRustOpaqueTwinSyncCreateOpaqueTwinSync();

HideDataTwinSync? createOptionOpaqueTwinSync({HideDataTwinSync? opaque}) =>
    RustLib.instance.api
        .crateApiPseudoManualRustOpaqueTwinSyncCreateOptionOpaqueTwinSync(
            opaque: opaque);

EnumOpaqueTwinSyncArray5 createArrayOpaqueEnumTwinSync() => RustLib.instance.api
    .crateApiPseudoManualRustOpaqueTwinSyncCreateArrayOpaqueEnumTwinSync();

String runEnumOpaqueTwinSync({required EnumOpaqueTwinSync opaque}) =>
    RustLib.instance.api
        .crateApiPseudoManualRustOpaqueTwinSyncRunEnumOpaqueTwinSync(
            opaque: opaque);

String runOpaqueTwinSync({required HideDataTwinSync opaque}) => RustLib
    .instance.api
    .crateApiPseudoManualRustOpaqueTwinSyncRunOpaqueTwinSync(opaque: opaque);

String runOpaqueWithDelayTwinSync({required HideDataTwinSync opaque}) =>
    RustLib.instance.api
        .crateApiPseudoManualRustOpaqueTwinSyncRunOpaqueWithDelayTwinSync(
            opaque: opaque);

HideDataTwinSyncArray2 opaqueArrayTwinSync() => RustLib.instance.api
    .crateApiPseudoManualRustOpaqueTwinSyncOpaqueArrayTwinSync();

String runNonCloneTwinSync({required NonCloneDataTwinSync clone}) => RustLib
    .instance.api
    .crateApiPseudoManualRustOpaqueTwinSyncRunNonCloneTwinSync(clone: clone);

void opaqueArrayRunTwinSync({required HideDataTwinSyncArray2 data}) => RustLib
    .instance.api
    .crateApiPseudoManualRustOpaqueTwinSyncOpaqueArrayRunTwinSync(data: data);

List<HideDataTwinSync> opaqueVecTwinSync() => RustLib.instance.api
    .crateApiPseudoManualRustOpaqueTwinSyncOpaqueVecTwinSync();

void opaqueVecRunTwinSync({required List<HideDataTwinSync> data}) =>
    RustLib.instance.api
        .crateApiPseudoManualRustOpaqueTwinSyncOpaqueVecRunTwinSync(data: data);

OpaqueNestedTwinSync createNestedOpaqueTwinSync() => RustLib.instance.api
    .crateApiPseudoManualRustOpaqueTwinSyncCreateNestedOpaqueTwinSync();

void runNestedOpaqueTwinSync({required OpaqueNestedTwinSync opaque}) =>
    RustLib.instance.api
        .crateApiPseudoManualRustOpaqueTwinSyncRunNestedOpaqueTwinSync(
            opaque: opaque);

String unwrapRustOpaqueTwinSync({required HideDataTwinSync opaque}) =>
    RustLib.instance.api
        .crateApiPseudoManualRustOpaqueTwinSyncUnwrapRustOpaqueTwinSync(
            opaque: opaque);

/// Function to check the code generator.
/// FrbOpaqueReturn must be only return type.
/// FrbOpaqueReturn must not be used as an argument.
FrbOpaqueReturnTwinSync frbGeneratorTestTwinSync() => RustLib.instance.api
    .crateApiPseudoManualRustOpaqueTwinSyncFrbGeneratorTestTwinSync();

// Rust type: RustOpaqueMoi<Box < dyn DartDebugTwinSync >>
abstract class BoxDartDebugTwinSync implements RustOpaqueInterface {}

// Rust type: RustOpaqueMoi<FrbOpaqueReturnTwinSync>
abstract class FrbOpaqueReturnTwinSync implements RustOpaqueInterface {}

// Rust type: RustOpaqueMoi<HideDataTwinSync>
abstract class HideDataTwinSync implements RustOpaqueInterface {}

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
abstract class MutexHideDataTwinSync implements RustOpaqueInterface {}

// Rust type: RustOpaqueMoi<NonCloneDataTwinSync>
abstract class NonCloneDataTwinSync implements RustOpaqueInterface {}

// Rust type: RustOpaqueMoi<RwLock < HideDataTwinSync >>
abstract class RwLockHideDataTwinSync implements RustOpaqueInterface {}

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
