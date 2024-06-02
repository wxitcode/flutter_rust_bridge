// This file is automatically generated, so please do not edit it.
// Generated by `flutter_rust_bridge`@ 2.0.0-dev.37.

// ignore_for_file: invalid_use_of_internal_member, unused_import, unnecessary_import

import '../../frb_generated.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge_for_generated.dart';

// These functions are ignored because they are not marked as `pub`: `clone`, `clone`, `create_binary_tree_map`, `create_binary_tree_protobuf`, `create_binary_tree`, `create_blob`, `deref`, `deref`, `fmt`, `fmt`, `initialize`, `initialize`
// These types are ignored because they are not used by any `pub` functions: `BINARY_TREES_PROTOBUF`, `BINARY_TREES`

void benchmarkVoidTwinSyncSse() => RustLib.instance.api
    .crateApiPseudoManualBenchmarkApiTwinSyncSseBenchmarkVoidTwinSyncSse();

int benchmarkInputBytesTwinSyncSse({required List<int> bytes}) => RustLib
    .instance.api
    .crateApiPseudoManualBenchmarkApiTwinSyncSseBenchmarkInputBytesTwinSyncSse(
        bytes: bytes);

Uint8List benchmarkOutputBytesTwinSyncSse({required int size}) => RustLib
    .instance.api
    .crateApiPseudoManualBenchmarkApiTwinSyncSseBenchmarkOutputBytesTwinSyncSse(
        size: size);

void benchmarkBinaryTreeInputTwinSyncSse(
        {required BenchmarkBinaryTreeTwinSyncSse tree}) =>
    RustLib.instance.api
        .crateApiPseudoManualBenchmarkApiTwinSyncSseBenchmarkBinaryTreeInputTwinSyncSse(
            tree: tree);

BenchmarkBinaryTreeTwinSyncSse benchmarkBinaryTreeOutputTwinSyncSse(
        {required int depth}) =>
    RustLib.instance.api
        .crateApiPseudoManualBenchmarkApiTwinSyncSseBenchmarkBinaryTreeOutputTwinSyncSse(
            depth: depth);

void benchmarkBinaryTreeInputProtobufTwinSyncSse({required List<int> raw}) =>
    RustLib.instance.api
        .crateApiPseudoManualBenchmarkApiTwinSyncSseBenchmarkBinaryTreeInputProtobufTwinSyncSse(
            raw: raw);

Uint8List benchmarkBinaryTreeOutputProtobufTwinSyncSse({required int depth}) =>
    RustLib.instance.api
        .crateApiPseudoManualBenchmarkApiTwinSyncSseBenchmarkBinaryTreeOutputProtobufTwinSyncSse(
            depth: depth);

void benchmarkBinaryTreeInputJsonTwinSyncSse({required String raw}) => RustLib
    .instance.api
    .crateApiPseudoManualBenchmarkApiTwinSyncSseBenchmarkBinaryTreeInputJsonTwinSyncSse(
        raw: raw);

String benchmarkBinaryTreeOutputJsonTwinSyncSse({required int depth}) => RustLib
    .instance.api
    .crateApiPseudoManualBenchmarkApiTwinSyncSseBenchmarkBinaryTreeOutputJsonTwinSyncSse(
        depth: depth);

void benchmarkBlobInputTwinSyncSse({required BenchmarkBlobTwinSyncSse blob}) =>
    RustLib.instance.api
        .crateApiPseudoManualBenchmarkApiTwinSyncSseBenchmarkBlobInputTwinSyncSse(
            blob: blob);

BenchmarkBlobTwinSyncSse benchmarkBlobOutputTwinSyncSse({required int size}) =>
    RustLib.instance.api
        .crateApiPseudoManualBenchmarkApiTwinSyncSseBenchmarkBlobOutputTwinSyncSse(
            size: size);

void benchmarkBlobInputProtobufTwinSyncSse({required List<int> raw}) => RustLib
    .instance.api
    .crateApiPseudoManualBenchmarkApiTwinSyncSseBenchmarkBlobInputProtobufTwinSyncSse(
        raw: raw);

Uint8List benchmarkBlobOutputProtobufTwinSyncSse({required int size}) => RustLib
    .instance.api
    .crateApiPseudoManualBenchmarkApiTwinSyncSseBenchmarkBlobOutputProtobufTwinSyncSse(
        size: size);

void benchmarkBlobInputJsonTwinSyncSse({required String raw}) => RustLib
    .instance.api
    .crateApiPseudoManualBenchmarkApiTwinSyncSseBenchmarkBlobInputJsonTwinSyncSse(
        raw: raw);

String benchmarkBlobOutputJsonTwinSyncSse({required int size}) => RustLib
    .instance.api
    .crateApiPseudoManualBenchmarkApiTwinSyncSseBenchmarkBlobOutputJsonTwinSyncSse(
        size: size);

class BenchmarkBinaryTreeTwinSyncSse {
  final String name;
  final BenchmarkBinaryTreeTwinSyncSse? left;
  final BenchmarkBinaryTreeTwinSyncSse? right;

  const BenchmarkBinaryTreeTwinSyncSse({
    required this.name,
    this.left,
    this.right,
  });

  @override
  int get hashCode => name.hashCode ^ left.hashCode ^ right.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is BenchmarkBinaryTreeTwinSyncSse &&
          runtimeType == other.runtimeType &&
          name == other.name &&
          left == other.left &&
          right == other.right;
}

class BenchmarkBlobTwinSyncSse {
  final Uint8List first;
  final Uint8List second;
  final Uint8List third;

  const BenchmarkBlobTwinSyncSse({
    required this.first,
    required this.second,
    required this.third,
  });

  @override
  int get hashCode => first.hashCode ^ second.hashCode ^ third.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is BenchmarkBlobTwinSyncSse &&
          runtimeType == other.runtimeType &&
          first == other.first &&
          second == other.second &&
          third == other.third;
}
