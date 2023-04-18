import 'package:flutter_rust_bridge/flutter_rust_bridge.dart';

import 'bridge_generated_api_1.dart';
import 'bridge_generated_api_2.dart';
import 'package:test/test.dart';

void main(List<String> args) {
  print(args.length);
  print(args);
  String dylibPath = args[0];
  print('flutter_rust_bridge example program start (dylibPath=$dylibPath)');
  print('construct api');

  final dylib = loadLibForDart(dylibPath);

  //↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓test api 1↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓
  final api1 = ApiClass1Impl(dylib);
  test('dart call testInbuiltType1', () async {
    expect(await api1.testInbuiltType1(a: 42, b: 100.0), 142.0);
  });

  test('dart call testString1', () async {
    expect(await api1.testString1(s: "string", i: 1), "string_1");
  });

  test('dart call testSharedStruct1', () async {
    expect(
      await api1.testSharedStruct1(
          custom: SharedStruct(name: "string", id: 1, num: 2.2),
          s: "newString",
          i: 2),
      SharedStruct(name: "newString", id: 2, num: 2.2),
    );
  });

  test('dart call testUniqueStruct1', () async {
    expect(
      await api1.testUniqueStruct1(
          custom: OnlyForApi1Struct(name: "string", id: 1, num: 2.2),
          s: "newString",
          i: 2),
      OnlyForApi1Struct(name: "newString", id: 2, num: 2.2),
    );
  });

  test('dart call testCrossSharedStruct1', () async {
    expect(
      await api1.testCrossSharedStruct1(
        custom: CrossSharedStruct(name: "string1"),
      ),
      "string1",
    );
  });
  //↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑test api 1↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑

  //↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓test api 2↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓
  final api2 = ApiClass2Impl(dylib);
  test('dart call testInbuiltType2', () async {
    expect(await api2.testInbuiltType2(a: 42, b: 100.0), 142.0);
  });

  test('dart call testString2', () async {
    expect(await api2.testString2(s: "string", i: 1), "string_1");
  });

  test('dart call testSharedStruct2', () async {
    expect(
      await api2.testSharedStruct2(
          custom: SharedStruct(name: "string", id: 1, num: 2.2),
          s: "newString",
          i: 2),
      SharedStruct(name: "newString", id: 2, num: 2.2),
    );
  });

  test('dart call testUniqueStruct2', () async {
    expect(
      await api2.testUniqueStruct2(
          custom: OnlyForApi2Struct(name: "string", id: 1, num: 2.2),
          s: "newString",
          i: 2),
      OnlyForApi2Struct(name: "newString", id: 2, num: 2.2),
    );
  });

  test('dart call testCrossSharedStruct2', () async {
    expect(
      await api2.testCrossSharedStruct2(
        name: "string2",
      ),
      CrossSharedStruct(name: "string2"),
    );
  });
  //↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑test api 2↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑

  //↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓test struct methods↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓
  test('test struct method of `SharedStruct`', () async {
    final obj = SharedStruct(name: "string", id: 1, num: 2.2);
    expect(
      await obj.testMethod(message: 'msg'),
      "msg",
    );
    expect(
      await SharedStruct.testStaticMethod(message: 'msg'),
      "msg",
    );
  });
  test('test struct method of `OnlyForApi1Struct`', () async {
    final obj = OnlyForApi1Struct(name: "string", id: 1, num: 2.2);
    expect(
      await obj.testMethod(message: 'msg'),
      "msg",
    );
    expect(
      await OnlyForApi1Struct.testStaticMethod(message: 'msg'),
      "msg",
    );
  });
  test('test struct method of `OnlyForApi2Struct`', () async {
    final obj = OnlyForApi2Struct(name: "string", id: 1, num: 2.2);
    expect(
      await obj.testMethod(message: 'msg'),
      "msg",
    );
    expect(
      await OnlyForApi2Struct.testStaticMethod(message: 'msg'),
      "msg",
    );
  });

  test('test struct method of `CrossSharedStruct`', () async {
    final obj = CrossSharedStruct(name: "testName");
    expect(
      await obj.testMethod(message: 'msg'),
      "msg",
    );
    expect(
      await CrossSharedStruct.testStaticMethod(message: 'msg'),
      "msg",
    );
  });

  test('test struct method of `StructDefinedInApi1`', () async {
    final obj = StructDefinedInApi1(bridge: api1, name: "testName");
    expect(
      await obj.testMethod(message: 'msg'),
      "msg",
    );
    expect(
      await StructDefinedInApi1.testStaticMethod(bridge: api1, message: 'msg'),
      "msg",
    );
  });

  test('test struct method of `StructDefinedInApi2`', () async {
    final obj = StructDefinedInApi2(bridge: api2, name: "testName");
    expect(
      await obj.testMethod(message: 'msg'),
      "msg",
    );
    expect(
      await StructDefinedInApi2.testStaticMethod(bridge: api2, message: 'msg'),
      "msg",
    );
  });
  //↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑test struct methods↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑

  tearDownAll(() {
    api1.dispose();
    api2.dispose();
  });
}
