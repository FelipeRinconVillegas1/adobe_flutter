import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:omnipro_ecommerce_sdk/omnipro_ecommerce_sdk_method_channel.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  MethodChannelOmniproEcommerceSdk platform = MethodChannelOmniproEcommerceSdk();
  const MethodChannel channel = MethodChannel('omnipro_ecommerce_sdk');

  setUp(() {
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger.setMockMethodCallHandler(
      channel,
      (MethodCall methodCall) async {
        return '42';
      },
    );
  });

  tearDown(() {
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger.setMockMethodCallHandler(channel, null);
  });

  test('getPlatformVersion', () async {
    expect(await platform.getPlatformVersion(), '42');
  });
}
