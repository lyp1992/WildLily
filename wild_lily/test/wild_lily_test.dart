import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:wild_lily/wild_lily.dart';

void main() {
  const MethodChannel channel = MethodChannel('wild_lily');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await WildLily.platformVersion, '42');
  });
}
