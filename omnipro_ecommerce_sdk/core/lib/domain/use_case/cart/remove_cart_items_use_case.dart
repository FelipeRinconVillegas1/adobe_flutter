import 'package:dartz/dartz.dart';

import '../../../data/repository/cart/cart_repository.dart';
import '../../../utils/error_handler/error_code.dart';
import '../../../utils/error_handler/error_handler.dart';
import '../../entity/cart/cart.fr.dart';
import '../customer/is_customer_logged_in.dart';
import 'get_cart_id_use_case.dart';

class RemoveCartItemsUseCase {
  RemoveCartItemsUseCase(this._cartRepository, this._getCartIdUseCase, this._isCustomerLoggedIn);

  final CartRepository _cartRepository;
  final GetCartIdUseCase _getCartIdUseCase;
  final IsCustomerLoggedIn _isCustomerLoggedIn;

  Future<Either<ErrorHandler, Cart>> call(List<int> cartItemsId) async {
    final bool isCustomerLoggedIn = await _isCustomerLoggedIn.call();
    late String cartId;

    cartId = await _getCartIdUseCase();
    if (cartId.isEmpty) {
      return left(
          ErrorHandlerExternal(errorCode: ErrorCode.emptyCartIdRemoveAllProducts, errorMessage: "Cart id is empty"));
    }

    return (await _cartRepository.removeCartItems(
            cartItemIds: cartItemsId, cartId: cartId, isGuestUser: !isCustomerLoggedIn))
        .fold(
      (errorHandler) => left(errorHandler),
      (cart) => right(cart),
    );
  }
}
