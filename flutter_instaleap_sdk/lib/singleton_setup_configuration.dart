import 'oms/domain/entity/oms_configuration.fr.dart';

class SingletonSetupConfiguration {
  SingletonSetupConfiguration._();

  factory SingletonSetupConfiguration() {
    if (_instance._omsConfiguration == null) {
      throw Exception('SingletonSetupConfiguration not initialized');
    }
    return _instance;
  }

  factory SingletonSetupConfiguration.init({required OmsConfiguration omsConfiguration}) {
    _instance._omsConfiguration = omsConfiguration.copyWith();
    return _instance;
  }

  static final SingletonSetupConfiguration _instance = SingletonSetupConfiguration._();

  OmsConfiguration? _omsConfiguration;

  OmsConfiguration getOmsConfiguration() {
    if (_omsConfiguration == null) {
      throw Exception('SingletonSetupConfiguration not initialized');
    }
    return _omsConfiguration!;
  }
}
