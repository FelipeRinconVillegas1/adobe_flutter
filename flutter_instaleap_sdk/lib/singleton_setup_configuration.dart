import 'package:flutter/foundation.dart';

import 'oms/core/loggers/logger_oms.dart';
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
    LoggerOms().init(isDebug: kDebugMode);
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
