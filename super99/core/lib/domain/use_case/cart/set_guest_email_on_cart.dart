import 'package:core/utils/error_handler/error_code.dart';
import 'package:core/utils/error_handler/error_handler.dart';
import 'package:dartz/dartz.dart';
import 'package:core/data/repository/cart/cart_repository.dart';
import '../../entity/cart/cart.fr.dart';
import 'get_cart_id_use_case.dart';

class SetGuestEmailOnCartUseCase {
  final CartRepository _cartRepository;
  final GetCartIdUseCase _getCartIdUseCase;

  SetGuestEmailOnCartUseCase(this._cartRepository, this._getCartIdUseCase);

  Future<Either<ErrorHandler, Cart>> call(String newEmail) async {
    final currentCartId = await _getCartIdUseCase();

    if (currentCartId.isEmpty) {
      return left(
          ErrorHandlerExternal(errorCode: ErrorCode.emptyCartIdSetPaymentMethod, errorMessage: "Cart id is empty"));
    }
    return await _cartRepository.setGuestEmailOnCart(email: newEmail, cartId: currentCartId);
  }
}
