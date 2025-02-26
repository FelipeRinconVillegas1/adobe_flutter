import '../domain/entity/omnipro_config/omnipro_configuration.fr.dart';

class SetupOnmiproSdk {
  SetupOnmiproSdk._();

  factory SetupOnmiproSdk() {
    if (_instance.omniConfiguration == null) {
      throw Exception('SetupOnmiproSdk not initialized');
    }
    return _instance;
  }

  factory SetupOnmiproSdk.init({required OmniproConfiguration config}) {
    _instance.omniConfiguration = config.copyWith();
    return _instance;
  }

  static final SetupOnmiproSdk _instance = SetupOnmiproSdk._();
  OmniproConfiguration? omniConfiguration;

  OmniproConfiguration getConfig() {
    if (omniConfiguration == null) {
      throw Exception('SetupOnmiproSdk not initialized');
    }
    return omniConfiguration!;
  }
}