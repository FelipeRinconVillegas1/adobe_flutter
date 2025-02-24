import 'package:core/domain/use_case/customer/is_customer_logged_in.dart';
import 'package:core/local/data/repository/secure_storege_repository.dart';
import 'package:core/local/key_secure_storage.dart';
import 'package:core/utils/error_handler/error_handler.dart';
import 'package:dartz/dartz.dart';
import 'package:core/data/repository/cart/cart_repository.dart';

class CreateEmptyCartUseCase {
  final CartRepository _cartRepository;
  final IsCustomerLoggedIn _isCustomerLoggedIn;
  final SecureStorageRepository _secureStorageRepository;

  CreateEmptyCartUseCase(this._cartRepository, this._isCustomerLoggedIn, this._secureStorageRepository);

  Future<Either<ErrorHandler, String>> call() async {
    try {
      final bool isCustomerLoggedIn = await _isCustomerLoggedIn.call();
      KeySecureStorage keyCartId = isCustomerLoggedIn ? KeySecureStorage.customerCartID : KeySecureStorage.guestCartID;

      final result = await _cartRepository.createEmptyCart(isGuestUser: !isCustomerLoggedIn);

      return result.fold(
        (errorHandler) => left(errorHandler),
        (cartId) async {
          await _secureStorageRepository.saveData(keyCartId, cartId);
          return right(cartId);
        },
      );
    } catch (e) {
      return left(ErrorHandlerInternal(errorMessage: e.toString()));
    }
  }
}
