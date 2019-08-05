import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:ia_path/ia_path.dart';

void main() {
  const MethodChannel channel = MethodChannel('ia_path');

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });


}
