import 'package:flutter_test/flutter_test.dart';
import 'package:omnipro_ecommerce_sdk/omnipro_ecommerce_sdk.dart';
import 'package:omnipro_ecommerce_sdk/omnipro_ecommerce_sdk_platform_interface.dart';
import 'package:omnipro_ecommerce_sdk/omnipro_ecommerce_sdk_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockOmniproEcommerceSdkPlatform
    with MockPlatformInterfaceMixin
    implements OmniproEcommerceSdkPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final OmniproEcommerceSdkPlatform initialPlatform = OmniproEcommerceSdkPlatform.instance;

  test('$MethodChannelOmniproEcommerceSdk is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelOmniproEcommerceSdk>());
  });

  test('getPlatformVersion', () async {
    OmniproEcommerceSdk omniproEcommerceSdkPlugin = OmniproEcommerceSdk();
    MockOmniproEcommerceSdkPlatform fakePlatform = MockOmniproEcommerceSdkPlatform();
    OmniproEcommerceSdkPlatform.instance = fakePlatform;

    expect(await omniproEcommerceSdkPlugin.getPlatformVersion(), '42');
  });
}
