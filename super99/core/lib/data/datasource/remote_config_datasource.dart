import 'dart:async';
import 'package:core/domain/entity/environment.dart';
import 'package:firebase_remote_config/firebase_remote_config.dart';
import '../../utils/constants.dart';
import '../../utils/error_handler/error_code.dart';
import '../../utils/error_handler/error_handler.dart';
import '../repository/remote_config_key.dart';

abstract class RemoteConfigDataSource {
  Future<void> init();

  bool getBool(String key);

  int getInt(String key);

  double getDouble(String key);

  String getString(String key);
}

class RemoteConfigDataSourceImp implements RemoteConfigDataSource {
  RemoteConfigDataSourceImp(this._firebaseRemoteConfig);
  final FirebaseRemoteConfig _firebaseRemoteConfig;

  @override
  Future<void> init() async {
    try {
      await _setConfigSettings();
      await _setDefaults();
      await _activateData();
    } catch (e,s) {
      if(e is ExceptionRemoteConfig){
        throw e;
      }else{
        throw ExceptionRemoteConfig(
          errorMessage: "Failed to fetch remote config connection: ${e.toString()}",
          stackTrace: s,
          error: e,
          errorCode: ErrorCode.errorGeneralRemoteConfig,
        );
      }
    }
  }

  Future<void> _setConfigSettings() async {
    final fetchTime = _fetchTime();
    final RemoteConfigSettings configSettings = RemoteConfigSettings(
      /// TODO: FELIPE CHANGE VALUE FOR PRODUCTION
      /// If the exceeds quota limit this config is ignore and fetchTimeout will set to  12 hours
      fetchTimeout: fetchTime,
      minimumFetchInterval: const Duration(hours: 1),
    );
    await _firebaseRemoteConfig.setConfigSettings(configSettings);
  }

  Duration _fetchTime() {
    final environment = Environment.fromString(String.fromEnvironment("ENVIRONMENT"));
    switch (environment) {
      case Environment.dev:
      case Environment.staging:
      case Environment.qa:
        return const Duration(seconds: 10);
      case Environment.prod:
        return const Duration(hours: 12);
      default:
        return const Duration(hours: 12);
    }
  }

  Future<void> _setDefaults() async {
    await _firebaseRemoteConfig.setDefaults(<String, dynamic>{
      RemoteConfigKey.superOffersID: Constants.superOffersID,
      RemoteConfigKey.skuBolsasAutomaticas: Constants.skuBolsaAutomatica,
      RemoteConfigKey.listBenefits: Constants.listBenefits,
    });
  }

  /// Fetch and activate the data
  Future<void> _activateData() async {
    await _firebaseRemoteConfig.fetchAndActivate().catchError((e, s) {
      if (e.message == 'Unable to connect to the server. Check your connection and try again.') {
        throw ExceptionRemoteConfig(
          errorMessage: "Failed to fetch remote config connection: ${e.message}",
          stackTrace: s,
          error: e,
          errorCode: ErrorCode.errorConnectionFetchAndActivateRemoteConfig,
        );
      }
      throw ExceptionRemoteConfig(
        errorMessage: "Failed to fetch remote config general error: ${e.message}",
        stackTrace: s,
        error: e,
        errorCode: ErrorCode.errorFetchAndActivateRemoteConfig,
      );
    });

    /// Listen for future fetch events and update the local cache accordingly
    /// automatically update the local cache on activation
    _firebaseRemoteConfig.onConfigUpdated.listen((_) {
      _firebaseRemoteConfig.activate();
    });
  }

  @override
  bool getBool(String key) {
    return _firebaseRemoteConfig.getBool(key);
  }

  @override
  double getDouble(String key) {
    return _firebaseRemoteConfig.getDouble(key);
  }

  @override
  int getInt(String key) {
    return _firebaseRemoteConfig.getInt(key);
  }

  @override
  String getString(String key) {
    return _firebaseRemoteConfig.getString(key);
  }
}
