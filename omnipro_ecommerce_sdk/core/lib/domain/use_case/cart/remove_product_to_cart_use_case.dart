import 'package:core/domain/use_case/customer/is_customer_logged_in.dart';
import 'package:core/utils/error_handler/error_handler.dart';
import 'package:dartz/dartz.dart';
import 'package:core/data/repository/cart/cart_repository.dart';

import '../../entity/cart/cart.fr.dart';
import 'get_cart_id_use_case.dart';

class RemoveProductToCartUseCase {
  final GetCartIdUseCase _getCartIdUseCase;
  final CartRepository _cartRepository;
  final IsCustomerLoggedIn _isCustomerLoggedIn;

  RemoveProductToCartUseCase(this._cartRepository, this._getCartIdUseCase, this._isCustomerLoggedIn);

  Future<Either<ErrorHandler, Cart>> call({required String cartItemUID}) async {
    final cartId = await _getCartIdUseCase();
    final bool isCustomer = await _isCustomerLoggedIn.call();
    return _cartRepository.removeProductFromCart(cartId: cartId, cartItemId: cartItemUID, isGuestUser: !isCustomer);
  }
}
