import 'package:core/domain/use_case/customer/is_customer_logged_in.dart';
import 'package:core/utils/error_handler/error_handler.dart';
import 'package:dartz/dartz.dart';
import 'package:core/data/repository/cart/cart_repository.dart';
import '../../entity/cart/cart.fr.dart';
import '../../entity/cart/update_cart_items.dart';
import 'get_cart_id_use_case.dart';

class UpdateCartItemsUseCase {
  final GetCartIdUseCase _getCartIdUseCase;
  final CartRepository _cartRepository;
  final IsCustomerLoggedIn _isCustomerLoggedIn;

  UpdateCartItemsUseCase(this._cartRepository, this._getCartIdUseCase, this._isCustomerLoggedIn);

  Future<Either<ErrorHandler, Cart>> call({required List<CartItemUpdateInput> items}) async {
    final cartId = await _getCartIdUseCase();
    final bool isCustomer = await _isCustomerLoggedIn.call();
    return _cartRepository.updateCartItems(
        updateCartItemsInput: UpdateCartItemsInput(cartId: cartId, cartItems: items), isGuestUser: !isCustomer);
  }
}
