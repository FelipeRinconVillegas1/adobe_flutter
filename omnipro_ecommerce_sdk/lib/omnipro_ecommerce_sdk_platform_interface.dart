import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'omnipro_ecommerce_sdk_method_channel.dart';

abstract class OmniproEcommerceSdkPlatform extends PlatformInterface {
  /// Constructs a OmniproEcommerceSdkPlatform.
  OmniproEcommerceSdkPlatform() : super(token: _token);

  static final Object _token = Object();

  static OmniproEcommerceSdkPlatform _instance = MethodChannelOmniproEcommerceSdk();

  /// The default instance of [OmniproEcommerceSdkPlatform] to use.
  ///
  /// Defaults to [MethodChannelOmniproEcommerceSdk].
  static OmniproEcommerceSdkPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [OmniproEcommerceSdkPlatform] when
  /// they register themselves.
  static set instance(OmniproEcommerceSdkPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
