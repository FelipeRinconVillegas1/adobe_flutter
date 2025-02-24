import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'omnipro_ecommerce_sdk_platform_interface.dart';

/// An implementation of [OmniproEcommerceSdkPlatform] that uses method channels.
class MethodChannelOmniproEcommerceSdk extends OmniproEcommerceSdkPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('omnipro_ecommerce_sdk');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
