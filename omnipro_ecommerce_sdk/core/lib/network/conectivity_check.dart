import 'package:connectivity_plus/connectivity_plus.dart';

mixin ConnectivityCheck {
  Future<bool> isConnected();
}

class ConnectivityCheckImpl implements ConnectivityCheck {
  ConnectivityCheckImpl(this._dataConnectionChecker);
  final Connectivity _dataConnectionChecker;

  @override
  Future<bool> isConnected() async {
    final connectivityResult = await _dataConnectionChecker.checkConnectivity();
    return !connectivityResult.contains(ConnectivityResult.none);
  }
}
