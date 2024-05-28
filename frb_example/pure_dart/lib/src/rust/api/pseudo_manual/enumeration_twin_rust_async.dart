// This file is automatically generated, so please do not edit it.
// Generated by `flutter_rust_bridge`@ 2.0.0-dev.36.

// ignore_for_file: invalid_use_of_internal_member, unused_import, unnecessary_import

import '../../frb_generated.dart';
import 'misc_example_twin_rust_async.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge_for_generated.dart';
import 'package:freezed_annotation/freezed_annotation.dart' hide protected;
part 'enumeration_twin_rust_async.freezed.dart';

Future<EnumSimpleTwinRustAsync> funcEnumSimpleTwinRustAsync(
        {required EnumSimpleTwinRustAsync arg}) =>
    RustLib.instance.api
        .crateApiPseudoManualEnumerationTwinRustAsyncFuncEnumSimpleTwinRustAsync(
            arg: arg);

Future<EnumWithItemMixedTwinRustAsync> funcEnumWithItemMixedTwinRustAsync(
        {required EnumWithItemMixedTwinRustAsync arg}) =>
    RustLib.instance.api
        .crateApiPseudoManualEnumerationTwinRustAsyncFuncEnumWithItemMixedTwinRustAsync(
            arg: arg);

Future<EnumWithItemTupleTwinRustAsync> funcEnumWithItemTupleTwinRustAsync(
        {required EnumWithItemTupleTwinRustAsync arg}) =>
    RustLib.instance.api
        .crateApiPseudoManualEnumerationTwinRustAsyncFuncEnumWithItemTupleTwinRustAsync(
            arg: arg);

Future<EnumWithItemStructTwinRustAsync> funcEnumWithItemStructTwinRustAsync(
        {required EnumWithItemStructTwinRustAsync arg}) =>
    RustLib.instance.api
        .crateApiPseudoManualEnumerationTwinRustAsyncFuncEnumWithItemStructTwinRustAsync(
            arg: arg);

Future<EnumWithDiscriminantTwinRustAsync> funcEnumWithDiscriminantTwinRustAsync(
        {required EnumWithDiscriminantTwinRustAsync arg}) =>
    RustLib.instance.api
        .crateApiPseudoManualEnumerationTwinRustAsyncFuncEnumWithDiscriminantTwinRustAsync(
            arg: arg);

Future<Uint8List> printNoteTwinRustAsync({required NoteTwinRustAsync note}) =>
    RustLib.instance.api
        .crateApiPseudoManualEnumerationTwinRustAsyncPrintNoteTwinRustAsync(
            note: note);

Future<WeekdaysTwinRustAsync?> handleReturnEnumTwinRustAsync(
        {required String input}) =>
    RustLib.instance.api
        .crateApiPseudoManualEnumerationTwinRustAsyncHandleReturnEnumTwinRustAsync(
            input: input);

Future<WeekdaysTwinRustAsync> handleEnumParameterTwinRustAsync(
        {required WeekdaysTwinRustAsync weekday}) =>
    RustLib.instance.api
        .crateApiPseudoManualEnumerationTwinRustAsyncHandleEnumParameterTwinRustAsync(
            weekday: weekday);

Future<MeasureTwinRustAsync?> multiplyByTenTwinRustAsync(
        {required MeasureTwinRustAsync measure}) =>
    RustLib.instance.api
        .crateApiPseudoManualEnumerationTwinRustAsyncMultiplyByTenTwinRustAsync(
            measure: measure);

Future<KitchenSinkTwinRustAsync> handleEnumStructTwinRustAsync(
        {required KitchenSinkTwinRustAsync val}) =>
    RustLib.instance.api
        .crateApiPseudoManualEnumerationTwinRustAsyncHandleEnumStructTwinRustAsync(
            val: val);

@freezed
sealed class DistanceTwinRustAsync with _$DistanceTwinRustAsync {
  const DistanceTwinRustAsync._();

  const factory DistanceTwinRustAsync.unknown() = DistanceTwinRustAsync_Unknown;
  const factory DistanceTwinRustAsync.map(
    double field0,
  ) = DistanceTwinRustAsync_Map;
}

enum EnumSimpleTwinRustAsync {
  a,
  b,
  ;
}

enum EnumWithDiscriminantTwinRustAsync {
  oneHundred,
  fifty,
  ;
}

@freezed
sealed class EnumWithItemMixedTwinRustAsync
    with _$EnumWithItemMixedTwinRustAsync {
  const EnumWithItemMixedTwinRustAsync._();

  const factory EnumWithItemMixedTwinRustAsync.a() =
      EnumWithItemMixedTwinRustAsync_A;
  const factory EnumWithItemMixedTwinRustAsync.b(
    Uint8List field0,
  ) = EnumWithItemMixedTwinRustAsync_B;
  const factory EnumWithItemMixedTwinRustAsync.c({
    required String cField,
  }) = EnumWithItemMixedTwinRustAsync_C;
}

@freezed
sealed class EnumWithItemStructTwinRustAsync
    with _$EnumWithItemStructTwinRustAsync {
  const EnumWithItemStructTwinRustAsync._();

  const factory EnumWithItemStructTwinRustAsync.a({
    required Uint8List aField,
  }) = EnumWithItemStructTwinRustAsync_A;
  const factory EnumWithItemStructTwinRustAsync.b({
    required Int32List bField,
  }) = EnumWithItemStructTwinRustAsync_B;
}

@freezed
sealed class EnumWithItemTupleTwinRustAsync
    with _$EnumWithItemTupleTwinRustAsync {
  const EnumWithItemTupleTwinRustAsync._();

  const factory EnumWithItemTupleTwinRustAsync.a(
    Uint8List field0,
  ) = EnumWithItemTupleTwinRustAsync_A;
  const factory EnumWithItemTupleTwinRustAsync.b(
    Int32List field0,
  ) = EnumWithItemTupleTwinRustAsync_B;
}

@freezed
sealed class KitchenSinkTwinRustAsync with _$KitchenSinkTwinRustAsync {
  const KitchenSinkTwinRustAsync._();

  /// Comment on variant
  const factory KitchenSinkTwinRustAsync.empty() =
      KitchenSinkTwinRustAsync_Empty;
  const factory KitchenSinkTwinRustAsync.primitives({
    /// Dart field comment
    @Default(-1) int int32,
    required double float64,
    required bool boolean,
  }) = KitchenSinkTwinRustAsync_Primitives;
  const factory KitchenSinkTwinRustAsync.nested(
    int field0, [
    @Default(KitchenSinkTwinRustAsync.empty()) KitchenSinkTwinRustAsync field1,
  ]) = KitchenSinkTwinRustAsync_Nested;
  const factory KitchenSinkTwinRustAsync.optional([
    /// Comment on anonymous field
    @Default(-1) int? field0,
    int? field1,
  ]) = KitchenSinkTwinRustAsync_Optional;
  const factory KitchenSinkTwinRustAsync.buffer(
    Uint8List field0,
  ) = KitchenSinkTwinRustAsync_Buffer;
  const factory KitchenSinkTwinRustAsync.enums([
    @Default(WeekdaysTwinRustAsync.sunday) WeekdaysTwinRustAsync field0,
  ]) = KitchenSinkTwinRustAsync_Enums;
}

@freezed
sealed class MeasureTwinRustAsync with _$MeasureTwinRustAsync {
  const MeasureTwinRustAsync._();

  const factory MeasureTwinRustAsync.speed(
    SpeedTwinRustAsync field0,
  ) = MeasureTwinRustAsync_Speed;
  const factory MeasureTwinRustAsync.distance(
    DistanceTwinRustAsync field0,
  ) = MeasureTwinRustAsync_Distance;
}

class NoteTwinRustAsync {
  final WeekdaysTwinRustAsync day;
  final String body;

  const NoteTwinRustAsync({
    this.day = WeekdaysTwinRustAsync.sunday,
    required this.body,
  });

  @override
  int get hashCode => day.hashCode ^ body.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is NoteTwinRustAsync &&
          runtimeType == other.runtimeType &&
          day == other.day &&
          body == other.body;
}

@freezed
sealed class SpeedTwinRustAsync with _$SpeedTwinRustAsync {
  const SpeedTwinRustAsync._();

  const factory SpeedTwinRustAsync.unknown() = SpeedTwinRustAsync_Unknown;
  const factory SpeedTwinRustAsync.gps(
    double field0,
  ) = SpeedTwinRustAsync_GPS;
}
