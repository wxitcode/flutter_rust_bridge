// This file is automatically generated, so please do not edit it.
// Generated by `flutter_rust_bridge`@ 2.0.0-dev.37.

// ignore_for_file: invalid_use_of_internal_member, unused_import, unnecessary_import

import '../../frb_generated.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge_for_generated.dart';

// These functions are ignored because they are not marked as `pub`: `clone`, `clone`, `create_binary_tree_map`, `create_binary_tree_protobuf`, `create_binary_tree`, `create_blob`, `deref`, `deref`, `fmt`, `fmt`, `initialize`, `initialize`

Future<void> benchmarkVoidTwinNormal() => RustLib.instance.api
    .crateApiPseudoManualBenchmarkApiBenchmarkVoidTwinNormal();

Future<int> benchmarkInputBytesTwinNormal({required List<int> bytes}) =>
    RustLib.instance.api
        .crateApiPseudoManualBenchmarkApiBenchmarkInputBytesTwinNormal(
            bytes: bytes);

Future<Uint8List> benchmarkOutputBytesTwinNormal({required int size}) => RustLib
    .instance.api
    .crateApiPseudoManualBenchmarkApiBenchmarkOutputBytesTwinNormal(size: size);

Future<void> benchmarkBinaryTreeInputTwinNormal(
        {required BenchmarkBinaryTreeTwinNormal tree}) =>
    RustLib.instance.api
        .crateApiPseudoManualBenchmarkApiBenchmarkBinaryTreeInputTwinNormal(
            tree: tree);

Future<BenchmarkBinaryTreeTwinNormal> benchmarkBinaryTreeOutputTwinNormal(
        {required int depth}) =>
    RustLib.instance.api
        .crateApiPseudoManualBenchmarkApiBenchmarkBinaryTreeOutputTwinNormal(
            depth: depth);

Future<void> benchmarkBinaryTreeInputProtobufTwinNormal(
        {required List<int> raw}) =>
    RustLib.instance.api
        .crateApiPseudoManualBenchmarkApiBenchmarkBinaryTreeInputProtobufTwinNormal(
            raw: raw);

Future<Uint8List> benchmarkBinaryTreeOutputProtobufTwinNormal(
        {required int depth}) =>
    RustLib.instance.api
        .crateApiPseudoManualBenchmarkApiBenchmarkBinaryTreeOutputProtobufTwinNormal(
            depth: depth);

Future<void> benchmarkBinaryTreeInputJsonTwinNormal({required String raw}) =>
    RustLib.instance.api
        .crateApiPseudoManualBenchmarkApiBenchmarkBinaryTreeInputJsonTwinNormal(
            raw: raw);

Future<String> benchmarkBinaryTreeOutputJsonTwinNormal({required int depth}) =>
    RustLib.instance.api
        .crateApiPseudoManualBenchmarkApiBenchmarkBinaryTreeOutputJsonTwinNormal(
            depth: depth);

Future<void> benchmarkBlobInputTwinNormal(
        {required BenchmarkBlobTwinNormal blob}) =>
    RustLib.instance.api
        .crateApiPseudoManualBenchmarkApiBenchmarkBlobInputTwinNormal(
            blob: blob);

Future<BenchmarkBlobTwinNormal> benchmarkBlobOutputTwinNormal(
        {required int size}) =>
    RustLib.instance.api
        .crateApiPseudoManualBenchmarkApiBenchmarkBlobOutputTwinNormal(
            size: size);

Future<void> benchmarkBlobInputProtobufTwinNormal({required List<int> raw}) =>
    RustLib.instance.api
        .crateApiPseudoManualBenchmarkApiBenchmarkBlobInputProtobufTwinNormal(
            raw: raw);

Future<Uint8List> benchmarkBlobOutputProtobufTwinNormal({required int size}) =>
    RustLib.instance.api
        .crateApiPseudoManualBenchmarkApiBenchmarkBlobOutputProtobufTwinNormal(
            size: size);

Future<void> benchmarkBlobInputJsonTwinNormal({required String raw}) => RustLib
    .instance.api
    .crateApiPseudoManualBenchmarkApiBenchmarkBlobInputJsonTwinNormal(raw: raw);

Future<String> benchmarkBlobOutputJsonTwinNormal({required int size}) =>
    RustLib.instance.api
        .crateApiPseudoManualBenchmarkApiBenchmarkBlobOutputJsonTwinNormal(
            size: size);

class BenchmarkBinaryTreeTwinNormal {
  final String name;
  final BenchmarkBinaryTreeTwinNormal? left;
  final BenchmarkBinaryTreeTwinNormal? right;

  const BenchmarkBinaryTreeTwinNormal({
    required this.name,
    this.left,
    this.right,
  });

  @override
  int get hashCode => name.hashCode ^ left.hashCode ^ right.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is BenchmarkBinaryTreeTwinNormal &&
          runtimeType == other.runtimeType &&
          name == other.name &&
          left == other.left &&
          right == other.right;
}

class BenchmarkBlobTwinNormal {
  final Uint8List first;
  final Uint8List second;
  final Uint8List third;

  const BenchmarkBlobTwinNormal({
    required this.first,
    required this.second,
    required this.third,
  });

  @override
  int get hashCode => first.hashCode ^ second.hashCode ^ third.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is BenchmarkBlobTwinNormal &&
          runtimeType == other.runtimeType &&
          first == other.first &&
          second == other.second &&
          third == other.third;
}
