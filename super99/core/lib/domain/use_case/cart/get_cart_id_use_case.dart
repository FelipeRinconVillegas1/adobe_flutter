import 'package:core/local/data/repository/secure_storege_repository.dart';
import 'package:core/domain/use_case/customer/is_customer_logged_in.dart';
import 'package:core/local/key_secure_storage.dart';

class GetCartIdUseCase {
  final SecureStorageRepository _secureStorageRepository;
  final IsCustomerLoggedIn _isCustomerLoggedIn;

  GetCartIdUseCase(
    this._secureStorageRepository,
    this._isCustomerLoggedIn,
  );

  /// Get cart id from secure storage
  /// if customer is logged in get cart id from customer
  /// else get cart id from guest cart id
  Future<String> call() async {
    if (await _isCustomerLoggedIn()) {
      return await _secureStorageRepository.getData(KeySecureStorage.customerCartID);
    } else {
      return await _secureStorageRepository.getData(KeySecureStorage.guestCartID);
    }
  }
}
