// This file is automatically generated, so please do not edit it.
// Generated by `flutter_rust_bridge`@ 2.0.0-dev.22.

// ignore_for_file: invalid_use_of_internal_member, unused_import, unnecessary_import

import '../../auxiliary/sample_types.dart';
import '../../frb_generated.dart';
import 'mirror_twin_sync_sse.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge_for_generated.dart';

Future<ApplicationSettings> getAppSettingsTwinRustAsyncSse({dynamic hint}) =>
    RustLib.instance.api.getAppSettingsTwinRustAsyncSse(hint: hint);

Future<ApplicationSettings> getFallibleAppSettingsTwinRustAsyncSse(
        {dynamic hint}) =>
    RustLib.instance.api.getFallibleAppSettingsTwinRustAsyncSse(hint: hint);

Future<bool> isAppEmbeddedTwinRustAsyncSse(
        {required ApplicationSettings appSettings, dynamic hint}) =>
    RustLib.instance.api
        .isAppEmbeddedTwinRustAsyncSse(appSettings: appSettings, hint: hint);

Stream<ApplicationSettings> appSettingsStreamTwinRustAsyncSse({dynamic hint}) =>
    RustLib.instance.api.appSettingsStreamTwinRustAsyncSse(hint: hint);

Stream<List<ApplicationSettings>> appSettingsVecStreamTwinRustAsyncSse(
        {dynamic hint}) =>
    RustLib.instance.api.appSettingsVecStreamTwinRustAsyncSse(hint: hint);

Stream<MirrorStructTwinRustAsyncSse> mirrorStructStreamTwinRustAsyncSse(
        {dynamic hint}) =>
    RustLib.instance.api.mirrorStructStreamTwinRustAsyncSse(hint: hint);

Stream<(ApplicationSettings, RawStringEnumMirrored)>
    mirrorTupleStreamTwinRustAsyncSse({dynamic hint}) =>
        RustLib.instance.api.mirrorTupleStreamTwinRustAsyncSse(hint: hint);

Future<ApplicationMessage> getMessageTwinRustAsyncSse({dynamic hint}) =>
    RustLib.instance.api.getMessageTwinRustAsyncSse(hint: hint);

Future<Numbers> repeatNumberTwinRustAsyncSse(
        {required int num, required int times, dynamic hint}) =>
    RustLib.instance.api
        .repeatNumberTwinRustAsyncSse(num: num, times: times, hint: hint);

Future<Sequences> repeatSequenceTwinRustAsyncSse(
        {required int seq, required int times, dynamic hint}) =>
    RustLib.instance.api
        .repeatSequenceTwinRustAsyncSse(seq: seq, times: times, hint: hint);

Future<int?> firstNumberTwinRustAsyncSse(
        {required Numbers nums, dynamic hint}) =>
    RustLib.instance.api.firstNumberTwinRustAsyncSse(nums: nums, hint: hint);

Future<int?> firstSequenceTwinRustAsyncSse(
        {required Sequences seqs, dynamic hint}) =>
    RustLib.instance.api.firstSequenceTwinRustAsyncSse(seqs: seqs, hint: hint);

Future<RawStringMirrored> testRawStringMirroredTwinRustAsyncSse(
        {dynamic hint}) =>
    RustLib.instance.api.testRawStringMirroredTwinRustAsyncSse(hint: hint);

Future<NestedRawStringMirrored> testNestedRawStringMirroredTwinRustAsyncSse(
        {dynamic hint}) =>
    RustLib.instance.api
        .testNestedRawStringMirroredTwinRustAsyncSse(hint: hint);

Future<RawStringEnumMirrored> testRawStringEnumMirroredTwinRustAsyncSse(
        {required bool nested, dynamic hint}) =>
    RustLib.instance.api
        .testRawStringEnumMirroredTwinRustAsyncSse(nested: nested, hint: hint);

Future<ListOfNestedRawStringMirrored>
    testListOfRawNestedStringMirroredTwinRustAsyncSse({dynamic hint}) =>
        RustLib.instance.api
            .testListOfRawNestedStringMirroredTwinRustAsyncSse(hint: hint);

Future<List<RawStringMirrored>> testFallibleOfRawStringMirroredTwinRustAsyncSse(
        {dynamic hint}) =>
    RustLib.instance.api
        .testFallibleOfRawStringMirroredTwinRustAsyncSse(hint: hint);

Future<List<RawStringEnumMirrored>>
    testListOfNestedEnumsMirroredTwinRustAsyncSse({dynamic hint}) =>
        RustLib.instance.api
            .testListOfNestedEnumsMirroredTwinRustAsyncSse(hint: hint);

Future<ContainsMirroredSubStructTwinRustAsyncSse>
    testContainsMirroredSubStructTwinRustAsyncSse({dynamic hint}) =>
        RustLib.instance.api
            .testContainsMirroredSubStructTwinRustAsyncSse(hint: hint);

Future<StructWithHashMap> testHashmapWithMirroredValueTwinRustAsyncSse(
        {dynamic hint}) =>
    RustLib.instance.api
        .testHashmapWithMirroredValueTwinRustAsyncSse(hint: hint);

class AnotherTwinRustAsyncSse {
  final String a;

  const AnotherTwinRustAsyncSse({
    required this.a,
  });

  @override
  int get hashCode => a.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AnotherTwinRustAsyncSse &&
          runtimeType == other.runtimeType &&
          a == other.a;
}

class ContainsMirroredSubStructTwinRustAsyncSse {
  final RawStringMirrored test;
  final AnotherTwinRustAsyncSse test2;

  const ContainsMirroredSubStructTwinRustAsyncSse({
    required this.test,
    required this.test2,
  });

  @override
  int get hashCode => test.hashCode ^ test2.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ContainsMirroredSubStructTwinRustAsyncSse &&
          runtimeType == other.runtimeType &&
          test == other.test &&
          test2 == other.test2;
}

class MirrorStructTwinRustAsyncSse {
  final ApplicationSettings a;
  final MyStruct b;
  final List<MyEnum> c;
  final List<ApplicationSettings> d;

  const MirrorStructTwinRustAsyncSse({
    required this.a,
    required this.b,
    required this.c,
    required this.d,
  });

  @override
  int get hashCode => a.hashCode ^ b.hashCode ^ c.hashCode ^ d.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MirrorStructTwinRustAsyncSse &&
          runtimeType == other.runtimeType &&
          a == other.a &&
          b == other.b &&
          c == other.c &&
          d == other.d;
}
