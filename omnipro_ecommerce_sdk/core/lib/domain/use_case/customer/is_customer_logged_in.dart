import 'package:core/local/data/repository/secure_storege_repository.dart';
import 'package:core/local/key_secure_storage.dart';

class IsCustomerLoggedIn {
  IsCustomerLoggedIn(this._secureStorageRepository);

  final SecureStorageRepository _secureStorageRepository;

  /// Returns true if the customer is logged in the app,
  /// false if the customer is not logged in the app.
  Future<bool> call() async {
    return Future.wait([
      _secureStorageRepository.getData(KeySecureStorage.customer),
      _secureStorageRepository.getData(KeySecureStorage.sessionData)
    ]).then((value) => value[0].isNotEmpty && value[1].isNotEmpty);
  }
}
