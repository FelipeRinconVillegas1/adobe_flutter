import 'package:core/local/data/repository/secure_storege_repository.dart';
import 'package:core/local/key_secure_storage.dart';

class DeleteCurrentCartUseCase {
  final SecureStorageRepository _secureRepository;

  DeleteCurrentCartUseCase(this._secureRepository);

  Future<void> call() async {
    await _secureRepository.deleteData(KeySecureStorage.guestCartID);
    await _secureRepository.deleteData(KeySecureStorage.customerCartID);
  }
}
