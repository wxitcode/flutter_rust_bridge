// This file is automatically generated, so please do not edit it.
// Generated by `flutter_rust_bridge`@ 2.0.0-dev.37.

// ignore_for_file: invalid_use_of_internal_member, unused_import, unnecessary_import

import '../../frb_generated.dart';
import 'package:collection/collection.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge_for_generated.dart';
import 'package:freezed_annotation/freezed_annotation.dart' hide protected;
part 'method_twin_rust_async_sse.freezed.dart';

// The functions `fmt`, `clone` are not `pub`, thus are ignored.

Future<SumWithTwinRustAsyncSse> getSumStructTwinRustAsyncSse() => RustLib
    .instance.api
    .crateApiPseudoManualMethodTwinRustAsyncSseGetSumStructTwinRustAsyncSse();

Future<SumWithTwinRustAsyncSseArray3> getSumArrayTwinRustAsyncSse(
        {required int a, required int b, required int c}) =>
    RustLib.instance.api
        .crateApiPseudoManualMethodTwinRustAsyncSseGetSumArrayTwinRustAsyncSse(
            a: a, b: b, c: c);

// Rust type: RustOpaqueNom<flutter_rust_bridge::for_generated::RustAutoOpaqueInner<StaticGetterOnlyTwinRustAsyncSse>>
@sealed
class StaticGetterOnlyTwinRustAsyncSse extends RustOpaque {
  // Not to be used by end users
  StaticGetterOnlyTwinRustAsyncSse.frbInternalDcoDecode(List<dynamic> wire)
      : super.frbInternalDcoDecode(wire, _kStaticData);

  // Not to be used by end users
  StaticGetterOnlyTwinRustAsyncSse.frbInternalSseDecode(
      BigInt ptr, int externalSizeOnNative)
      : super.frbInternalSseDecode(ptr, externalSizeOnNative, _kStaticData);

  static final _kStaticData = RustArcStaticData(
    rustArcIncrementStrongCount: RustLib.instance.api
        .rust_arc_increment_strong_count_StaticGetterOnlyTwinRustAsyncSse,
    rustArcDecrementStrongCount: RustLib.instance.api
        .rust_arc_decrement_strong_count_StaticGetterOnlyTwinRustAsyncSse,
    rustArcDecrementStrongCountPtr: RustLib.instance.api
        .rust_arc_decrement_strong_count_StaticGetterOnlyTwinRustAsyncSsePtr,
  );

  static Future<int> get staticGetterTwinRustAsyncSse => RustLib.instance.api
      .crateApiPseudoManualMethodTwinRustAsyncSseStaticGetterOnlyTwinRustAsyncSseStaticGetterTwinRustAsyncSse();
}

class ConcatenateWithTwinRustAsyncSse {
  final String a;

  const ConcatenateWithTwinRustAsyncSse({
    required this.a,
  });

  static Future<String> concatenateStaticTwinRustAsyncSse(
          {required String a, required String b}) =>
      RustLib.instance.api
          .crateApiPseudoManualMethodTwinRustAsyncSseConcatenateWithTwinRustAsyncSseConcatenateStaticTwinRustAsyncSse(
              a: a, b: b);

  Future<String> concatenateTwinRustAsyncSse({required String b}) => RustLib
      .instance.api
      .crateApiPseudoManualMethodTwinRustAsyncSseConcatenateWithTwinRustAsyncSseConcatenateTwinRustAsyncSse(
          that: this, b: b);

  static Stream<int> handleSomeStaticStreamSinkSingleArgTwinRustAsyncSse() =>
      RustLib.instance.api
          .crateApiPseudoManualMethodTwinRustAsyncSseConcatenateWithTwinRustAsyncSseHandleSomeStaticStreamSinkSingleArgTwinRustAsyncSse();

  static Stream<
      Log2TwinRustAsyncSse> handleSomeStaticStreamSinkTwinRustAsyncSse(
          {required int key, required int max}) =>
      RustLib.instance.api
          .crateApiPseudoManualMethodTwinRustAsyncSseConcatenateWithTwinRustAsyncSseHandleSomeStaticStreamSinkTwinRustAsyncSse(
              key: key, max: max);

  Stream<int> handleSomeStreamSinkAt1TwinRustAsyncSse() => RustLib.instance.api
          .crateApiPseudoManualMethodTwinRustAsyncSseConcatenateWithTwinRustAsyncSseHandleSomeStreamSinkAt1TwinRustAsyncSse(
        that: this,
      );

  Stream<Log2TwinRustAsyncSse> handleSomeStreamSinkTwinRustAsyncSse(
          {required int key, required int max}) =>
      RustLib.instance.api
          .crateApiPseudoManualMethodTwinRustAsyncSseConcatenateWithTwinRustAsyncSseHandleSomeStreamSinkTwinRustAsyncSse(
              that: this, key: key, max: max);

  static Future<ConcatenateWithTwinRustAsyncSse> newTwinRustAsyncSse(
          {required String a}) =>
      RustLib.instance.api
          .crateApiPseudoManualMethodTwinRustAsyncSseConcatenateWithTwinRustAsyncSseNewTwinRustAsyncSse(
              a: a);

  Future<String> get simpleGetterTwinRustAsyncSse => RustLib.instance.api
          .crateApiPseudoManualMethodTwinRustAsyncSseConcatenateWithTwinRustAsyncSseSimpleGetterTwinRustAsyncSse(
        that: this,
      );

  @override
  int get hashCode => a.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ConcatenateWithTwinRustAsyncSse &&
          runtimeType == other.runtimeType &&
          a == other.a;
}

class Log2TwinRustAsyncSse {
  final int key;
  final String value;

  const Log2TwinRustAsyncSse({
    required this.key,
    required this.value,
  });

  @override
  int get hashCode => key.hashCode ^ value.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Log2TwinRustAsyncSse &&
          runtimeType == other.runtimeType &&
          key == other.key &&
          value == other.value;
}

class MyCallableTwinRustAsyncSse {
  final String one;

  const MyCallableTwinRustAsyncSse({
    required this.one,
  });

  Future<String> call({required String two}) => RustLib.instance.api
      .crateApiPseudoManualMethodTwinRustAsyncSseMyCallableTwinRustAsyncSseCall(
          that: this, two: two);

  @override
  int get hashCode => one.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MyCallableTwinRustAsyncSse &&
          runtimeType == other.runtimeType &&
          one == other.one;
}

@freezed
sealed class SimpleEnumTwinRustAsyncSse with _$SimpleEnumTwinRustAsyncSse {
  const SimpleEnumTwinRustAsyncSse._();

  const factory SimpleEnumTwinRustAsyncSse.first() =
      SimpleEnumTwinRustAsyncSse_First;
  const factory SimpleEnumTwinRustAsyncSse.second(
    String field0,
  ) = SimpleEnumTwinRustAsyncSse_Second;

  static Future<SimpleEnumTwinRustAsyncSse> returnSelfTwinRustAsyncSse(
          {required String one}) =>
      RustLib.instance.api
          .crateApiPseudoManualMethodTwinRustAsyncSseSimpleEnumTwinRustAsyncSseReturnSelfTwinRustAsyncSse(
              one: one);

  Future<String> simpleMethodTwinRustAsyncSse() => RustLib.instance.api
          .crateApiPseudoManualMethodTwinRustAsyncSseSimpleEnumTwinRustAsyncSseSimpleMethodTwinRustAsyncSse(
        that: this,
      );
}

enum SimplePrimitiveEnumTwinRustAsyncSse {
  first,
  second,
  ;

  Future<int> simpleMethodTwinRustAsyncSse() => RustLib.instance.api
          .crateApiPseudoManualMethodTwinRustAsyncSseSimplePrimitiveEnumTwinRustAsyncSseSimpleMethodTwinRustAsyncSse(
        that: this,
      );
}

class SimpleStructTwinRustAsyncSse {
  final String one;

  const SimpleStructTwinRustAsyncSse({
    required this.one,
  });

  static Future<String> argSelfTwinRustAsyncSse(
          {required SimpleStructTwinRustAsyncSse a,
          required SimpleStructTwinRustAsyncSse b}) =>
      RustLib.instance.api
          .crateApiPseudoManualMethodTwinRustAsyncSseSimpleStructTwinRustAsyncSseArgSelfTwinRustAsyncSse(
              a: a, b: b);

  Future<String> receiverBorrowTwinRustAsyncSse() => RustLib.instance.api
          .crateApiPseudoManualMethodTwinRustAsyncSseSimpleStructTwinRustAsyncSseReceiverBorrowTwinRustAsyncSse(
        that: this,
      );

  Future<String> receiverOwnTwinRustAsyncSse() => RustLib.instance.api
          .crateApiPseudoManualMethodTwinRustAsyncSseSimpleStructTwinRustAsyncSseReceiverOwnTwinRustAsyncSse(
        that: this,
      );

  static Future<SimpleStructTwinRustAsyncSse> returnSelfTwinRustAsyncSse(
          {required String one}) =>
      RustLib.instance.api
          .crateApiPseudoManualMethodTwinRustAsyncSseSimpleStructTwinRustAsyncSseReturnSelfTwinRustAsyncSse(
              one: one);

  static Future<List<String>> vecSelfTwinRustAsyncSse(
          {required List<SimpleStructTwinRustAsyncSse> arg}) =>
      RustLib.instance.api
          .crateApiPseudoManualMethodTwinRustAsyncSseSimpleStructTwinRustAsyncSseVecSelfTwinRustAsyncSse(
              arg: arg);

  @override
  int get hashCode => one.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SimpleStructTwinRustAsyncSse &&
          runtimeType == other.runtimeType &&
          one == other.one;
}

class StaticOnlyTwinRustAsyncSse {
  final String one;

  const StaticOnlyTwinRustAsyncSse({
    required this.one,
  });

  static Future<int> staticMethodTwinRustAsyncSse({required int a}) => RustLib
      .instance.api
      .crateApiPseudoManualMethodTwinRustAsyncSseStaticOnlyTwinRustAsyncSseStaticMethodTwinRustAsyncSse(
          a: a);

  @override
  int get hashCode => one.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is StaticOnlyTwinRustAsyncSse &&
          runtimeType == other.runtimeType &&
          one == other.one;
}

class SumWithTwinRustAsyncSse {
  final int x;

  const SumWithTwinRustAsyncSse({
    required this.x,
  });

  Future<int> sumTwinRustAsyncSse({required int y, required int z}) => RustLib
      .instance.api
      .crateApiPseudoManualMethodTwinRustAsyncSseSumWithTwinRustAsyncSseSumTwinRustAsyncSse(
          that: this, y: y, z: z);

  @override
  int get hashCode => x.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SumWithTwinRustAsyncSse &&
          runtimeType == other.runtimeType &&
          x == other.x;
}

class SumWithTwinRustAsyncSseArray3
    extends NonGrowableListView<SumWithTwinRustAsyncSse> {
  static const arraySize = 3;

  @internal
  List<SumWithTwinRustAsyncSse> get inner => _inner;
  final List<SumWithTwinRustAsyncSse> _inner;

  SumWithTwinRustAsyncSseArray3(this._inner)
      : assert(_inner.length == arraySize),
        super(_inner);

  SumWithTwinRustAsyncSseArray3.init(SumWithTwinRustAsyncSse fill)
      : this(List<SumWithTwinRustAsyncSse>.filled(arraySize, fill));
}
