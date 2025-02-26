import 'package:core/local/data/repository/secure_storege_repository.dart';
import 'package:core/local/key_secure_storage.dart';

/// Use case to check if a user session exists
/// if this use case returns data it means that the user logged in
/// finds authenticated.
class GetSessionUseCase {
  final SecureStorageRepository secureStorageRepository;

  GetSessionUseCase(this.secureStorageRepository);

  Future<String> call() async {
    return await secureStorageRepository.getData(KeySecureStorage.sessionData);
  }
}
