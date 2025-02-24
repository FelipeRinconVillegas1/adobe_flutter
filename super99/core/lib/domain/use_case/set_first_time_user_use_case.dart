import 'package:core/local/data/repository/secure_storege_repository.dart';
import 'package:core/local/key_secure_storage.dart';

class SetFirstTimeUserUseCase {
  final SecureStorageRepository _secureStorageRepository;

  SetFirstTimeUserUseCase(this._secureStorageRepository);

  /// Set as true when user use the app for first time
  Future<void> call(bool isFirstTime) async {
    await _secureStorageRepository.saveData(KeySecureStorage.isFirstTime, isFirstTime ? '' : 'false');
  }
}
