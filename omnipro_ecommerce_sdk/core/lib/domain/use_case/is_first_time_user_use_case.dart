import 'package:core/local/data/repository/secure_storege_repository.dart';
import 'package:core/local/key_secure_storage.dart';

class IsFirstTimeUserUseCase {
  IsFirstTimeUserUseCase(this._secureStorageRepository);

  final SecureStorageRepository _secureStorageRepository;

  /// Set as true when user use the app for first time
  Future<bool> call() async {
    final result = await _secureStorageRepository.getData(KeySecureStorage.isFirstTime);
    return result.isEmpty;
  }
}
