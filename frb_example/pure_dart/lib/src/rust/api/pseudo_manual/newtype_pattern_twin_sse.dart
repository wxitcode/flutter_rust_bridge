// This file is automatically generated, so please do not edit it.
// Generated by `flutter_rust_bridge`@ 2.0.0-dev.37.

// ignore_for_file: invalid_use_of_internal_member, unused_import, unnecessary_import

import '../../frb_generated.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge_for_generated.dart';

// The functions `fmt` are not `pub`, thus are ignored.

Future<NewTypeIntTwinSse> handleNewtypeTwinSse(
        {required NewTypeIntTwinSse arg}) =>
    RustLib.instance.api
        .crateApiPseudoManualNewtypePatternTwinSseHandleNewtypeTwinSse(
            arg: arg);

class NewTypeIntTwinSse {
  final PlatformInt64 field0;

  const NewTypeIntTwinSse({
    required this.field0,
  });

  @override
  int get hashCode => field0.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is NewTypeIntTwinSse &&
          runtimeType == other.runtimeType &&
          field0 == other.field0;
}
