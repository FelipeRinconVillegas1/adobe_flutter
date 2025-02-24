import '../../network/conectivity_check.dart';

class CheckInternetConnectionUseCase {
  CheckInternetConnectionUseCase(this._connectivityCheck);

  final ConnectivityCheck _connectivityCheck;

  Future<bool> call() async {
    return await _connectivityCheck.isConnected();
  }
}
