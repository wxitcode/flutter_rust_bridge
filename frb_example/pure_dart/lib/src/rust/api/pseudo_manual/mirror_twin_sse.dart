// This file is automatically generated, so please do not edit it.
// Generated by `flutter_rust_bridge`@ 2.0.0-dev.36.

// ignore_for_file: invalid_use_of_internal_member, unused_import, unnecessary_import

import '../../auxiliary/sample_types.dart';
import '../../frb_generated.dart';
import '../mirror.dart';
import 'mirror_twin_sync_sse.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge_for_generated.dart';

Future<ApplicationSettings> getAppSettingsTwinSse() => RustLib.instance.api
    .crateApiPseudoManualMirrorTwinSseGetAppSettingsTwinSse();

Future<ApplicationSettings> getFallibleAppSettingsTwinSse() =>
    RustLib.instance.api
        .crateApiPseudoManualMirrorTwinSseGetFallibleAppSettingsTwinSse();

Future<bool> isAppEmbeddedTwinSse({required ApplicationSettings appSettings}) =>
    RustLib.instance.api.crateApiPseudoManualMirrorTwinSseIsAppEmbeddedTwinSse(
        appSettings: appSettings);

Stream<ApplicationSettings> appSettingsStreamTwinSse() => RustLib.instance.api
    .crateApiPseudoManualMirrorTwinSseAppSettingsStreamTwinSse();

Stream<List<ApplicationSettings>> appSettingsVecStreamTwinSse() =>
    RustLib.instance.api
        .crateApiPseudoManualMirrorTwinSseAppSettingsVecStreamTwinSse();

Stream<MirrorStructTwinSse> mirrorStructStreamTwinSse() => RustLib.instance.api
    .crateApiPseudoManualMirrorTwinSseMirrorStructStreamTwinSse();

Stream<(ApplicationSettings, RawStringEnumMirrored)>
    mirrorTupleStreamTwinSse() => RustLib.instance.api
        .crateApiPseudoManualMirrorTwinSseMirrorTupleStreamTwinSse();

Future<ApplicationMessage> getMessageTwinSse() =>
    RustLib.instance.api.crateApiPseudoManualMirrorTwinSseGetMessageTwinSse();

Future<Numbers> repeatNumberTwinSse(
        {required int num, required BigInt times}) =>
    RustLib.instance.api.crateApiPseudoManualMirrorTwinSseRepeatNumberTwinSse(
        num: num, times: times);

Future<Sequences> repeatSequenceTwinSse(
        {required int seq, required BigInt times}) =>
    RustLib.instance.api.crateApiPseudoManualMirrorTwinSseRepeatSequenceTwinSse(
        seq: seq, times: times);

Future<int?> firstNumberTwinSse({required Numbers nums}) => RustLib.instance.api
    .crateApiPseudoManualMirrorTwinSseFirstNumberTwinSse(nums: nums);

Future<int?> firstSequenceTwinSse({required Sequences seqs}) =>
    RustLib.instance.api
        .crateApiPseudoManualMirrorTwinSseFirstSequenceTwinSse(seqs: seqs);

Future<RawStringMirrored> testRawStringMirroredTwinSse() => RustLib.instance.api
    .crateApiPseudoManualMirrorTwinSseTestRawStringMirroredTwinSse();

Future<NestedRawStringMirrored> testNestedRawStringMirroredTwinSse() =>
    RustLib.instance.api
        .crateApiPseudoManualMirrorTwinSseTestNestedRawStringMirroredTwinSse();

Future<RawStringEnumMirrored> testRawStringEnumMirroredTwinSse(
        {required bool nested}) =>
    RustLib.instance.api
        .crateApiPseudoManualMirrorTwinSseTestRawStringEnumMirroredTwinSse(
            nested: nested);

Future<ListOfNestedRawStringMirrored>
    testListOfRawNestedStringMirroredTwinSse() => RustLib.instance.api
        .crateApiPseudoManualMirrorTwinSseTestListOfRawNestedStringMirroredTwinSse();

Future<
    List<
        RawStringMirrored>> testFallibleOfRawStringMirroredTwinSse() => RustLib
    .instance.api
    .crateApiPseudoManualMirrorTwinSseTestFallibleOfRawStringMirroredTwinSse();

Future<List<RawStringEnumMirrored>> testListOfNestedEnumsMirroredTwinSse() =>
    RustLib.instance.api
        .crateApiPseudoManualMirrorTwinSseTestListOfNestedEnumsMirroredTwinSse();

Future<ContainsMirroredSubStructTwinSse>
    testContainsMirroredSubStructTwinSse() => RustLib.instance.api
        .crateApiPseudoManualMirrorTwinSseTestContainsMirroredSubStructTwinSse();

Future<StructWithHashMap> testHashmapWithMirroredValueTwinSse() =>
    RustLib.instance.api
        .crateApiPseudoManualMirrorTwinSseTestHashmapWithMirroredValueTwinSse();

Stream<ApplicationMode> mirrorEnumStreamTwinSse() => RustLib.instance.api
    .crateApiPseudoManualMirrorTwinSseMirrorEnumStreamTwinSse();

Stream<ApplicationMode?> mirrorOptionEnumStreamTwinSse() => RustLib.instance.api
    .crateApiPseudoManualMirrorTwinSseMirrorOptionEnumStreamTwinSse();

Stream<List<ApplicationMode>> mirrorVecEnumStreamTwinSse() =>
    RustLib.instance.api
        .crateApiPseudoManualMirrorTwinSseMirrorVecEnumStreamTwinSse();

Stream<Map<int, ApplicationMode>> mirrorMapEnumStreamTwinSse() =>
    RustLib.instance.api
        .crateApiPseudoManualMirrorTwinSseMirrorMapEnumStreamTwinSse();

Stream<Set<ApplicationMode>> mirrorSetEnumStreamTwinSse() =>
    RustLib.instance.api
        .crateApiPseudoManualMirrorTwinSseMirrorSetEnumStreamTwinSse();

Stream<ApplicationModeArray2> mirrorArrayEnumStreamTwinSse() =>
    RustLib.instance.api
        .crateApiPseudoManualMirrorTwinSseMirrorArrayEnumStreamTwinSse();

class AnotherTwinSse {
  final String a;

  const AnotherTwinSse({
    required this.a,
  });

  @override
  int get hashCode => a.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AnotherTwinSse &&
          runtimeType == other.runtimeType &&
          a == other.a;
}

class ContainsMirroredSubStructTwinSse {
  final RawStringMirrored test;
  final AnotherTwinSse test2;

  const ContainsMirroredSubStructTwinSse({
    required this.test,
    required this.test2,
  });

  @override
  int get hashCode => test.hashCode ^ test2.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ContainsMirroredSubStructTwinSse &&
          runtimeType == other.runtimeType &&
          test == other.test &&
          test2 == other.test2;
}

class MirrorStructTwinSse {
  final ApplicationSettings a;
  final MyStruct b;
  final List<MyEnum> c;
  final List<ApplicationSettings> d;

  const MirrorStructTwinSse({
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
      other is MirrorStructTwinSse &&
          runtimeType == other.runtimeType &&
          a == other.a &&
          b == other.b &&
          c == other.c &&
          d == other.d;
}
