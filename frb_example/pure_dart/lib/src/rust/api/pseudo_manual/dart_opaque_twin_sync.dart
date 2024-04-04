// This file is automatically generated, so please do not edit it.
// Generated by `flutter_rust_bridge`@ 2.0.0-dev.29.

// ignore_for_file: invalid_use_of_internal_member, unused_import, unnecessary_import

import '../../frb_generated.dart';
import '../dart_opaque.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge_for_generated.dart';
import 'package:freezed_annotation/freezed_annotation.dart' hide protected;
part 'dart_opaque_twin_sync.freezed.dart';

String asyncAcceptDartOpaqueTwinSync({required Object opaque, dynamic hint}) =>
    RustLib.instance.api
        .asyncAcceptDartOpaqueTwinSync(opaque: opaque, hint: hint);

Object loopBackTwinSync({required Object opaque, dynamic hint}) =>
    RustLib.instance.api.loopBackTwinSync(opaque: opaque, hint: hint);

Object? loopBackOptionTwinSync({required Object opaque, dynamic hint}) =>
    RustLib.instance.api.loopBackOptionTwinSync(opaque: opaque, hint: hint);

ObjectArray1 loopBackArrayTwinSync({required Object opaque, dynamic hint}) =>
    RustLib.instance.api.loopBackArrayTwinSync(opaque: opaque, hint: hint);

List<Object> loopBackVecTwinSync({required Object opaque, dynamic hint}) =>
    RustLib.instance.api.loopBackVecTwinSync(opaque: opaque, hint: hint);

void loopBackOptionGetTwinSync({Object? opaque, dynamic hint}) =>
    RustLib.instance.api.loopBackOptionGetTwinSync(opaque: opaque, hint: hint);

void loopBackArrayGetTwinSync({required ObjectArray1 opaque, dynamic hint}) =>
    RustLib.instance.api.loopBackArrayGetTwinSync(opaque: opaque, hint: hint);

void loopBackVecGetTwinSync({required List<Object> opaque, dynamic hint}) =>
    RustLib.instance.api.loopBackVecGetTwinSync(opaque: opaque, hint: hint);

/// [DartWrapObject] cannot be obtained
/// on a thread other than the thread it was created on.
void panicUnwrapDartOpaqueTwinSync({required Object opaque, dynamic hint}) =>
    RustLib.instance.api
        .panicUnwrapDartOpaqueTwinSync(opaque: opaque, hint: hint);

DartOpaqueNestedTwinSync createNestedDartOpaqueTwinSync(
        {required Object opaque1, required Object opaque2, dynamic hint}) =>
    RustLib.instance.api.createNestedDartOpaqueTwinSync(
        opaque1: opaque1, opaque2: opaque2, hint: hint);

void getNestedDartOpaqueTwinSync(
        {required DartOpaqueNestedTwinSync opaque, dynamic hint}) =>
    RustLib.instance.api
        .getNestedDartOpaqueTwinSync(opaque: opaque, hint: hint);

EnumDartOpaqueTwinSync createEnumDartOpaqueTwinSync(
        {required Object opaque, dynamic hint}) =>
    RustLib.instance.api
        .createEnumDartOpaqueTwinSync(opaque: opaque, hint: hint);

void getEnumDartOpaqueTwinSync(
        {required EnumDartOpaqueTwinSync opaque, dynamic hint}) =>
    RustLib.instance.api.getEnumDartOpaqueTwinSync(opaque: opaque, hint: hint);

void setStaticDartOpaqueTwinSync(
        {required int id, required Object opaque, dynamic hint}) =>
    RustLib.instance.api
        .setStaticDartOpaqueTwinSync(id: id, opaque: opaque, hint: hint);

void dropStaticDartOpaqueTwinSync({required int id, dynamic hint}) =>
    RustLib.instance.api.dropStaticDartOpaqueTwinSync(id: id, hint: hint);

List<Object> cloneDartOpaqueTwinSync({required Object opaque, dynamic hint}) =>
    RustLib.instance.api.cloneDartOpaqueTwinSync(opaque: opaque, hint: hint);

class DartOpaqueNestedTwinSync {
  final Object first;
  final Object second;

  const DartOpaqueNestedTwinSync({
    required this.first,
    required this.second,
  });

  @override
  int get hashCode => first.hashCode ^ second.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DartOpaqueNestedTwinSync &&
          runtimeType == other.runtimeType &&
          first == other.first &&
          second == other.second;
}

@freezed
sealed class EnumDartOpaqueTwinSync with _$EnumDartOpaqueTwinSync {
  const EnumDartOpaqueTwinSync._();

  const factory EnumDartOpaqueTwinSync.primitive(
    int field0,
  ) = EnumDartOpaqueTwinSync_Primitive;
  const factory EnumDartOpaqueTwinSync.opaque(
    Object field0,
  ) = EnumDartOpaqueTwinSync_Opaque;
}
