import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:openlogin_flutter/openlogin_flutter.dart';

void main() {
  const MethodChannel channel = MethodChannel('openlogin_flutter');

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
    expect(await OpenloginFlutter.platformVersion, '42');
  });
}
