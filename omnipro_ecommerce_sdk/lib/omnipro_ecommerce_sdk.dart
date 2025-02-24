
import 'omnipro_ecommerce_sdk_platform_interface.dart';

class OmniproEcommerceSdk {
  Future<String?> getPlatformVersion() {
    return OmniproEcommerceSdkPlatform.instance.getPlatformVersion();
  }
}
