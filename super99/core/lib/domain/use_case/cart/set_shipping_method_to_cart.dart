import 'package:core/domain/entity/cart/config_shipping_method.dart';
import 'package:core/domain/use_case/customer/is_customer_logged_in.dart';
import 'package:core/utils/error_handler/error_code.dart';
import 'package:core/utils/error_handler/error_handler.dart';
import 'package:dartz/dartz.dart';
import 'package:core/data/repository/cart/cart_repository.dart';
import '../../entity/cart/cart.fr.dart';
import 'get_cart_id_use_case.dart';

class SetShippingMethodToCart {
  final CartRepository _cartRepository;
  final GetCartIdUseCase _getCartIdUseCase;
  final IsCustomerLoggedIn _isCustomerLoggedIn;

  SetShippingMethodToCart(this._cartRepository, this._getCartIdUseCase, this._isCustomerLoggedIn);

  /// Set shipping method to cart by [shippingMethod] and [cartId] from [_getCartIdUseCase]
  Future<Either<ErrorHandler, Cart>> call(ConfigShippingMethod shippingMethod) async {
    final cartId = await _getCartIdUseCase.call();

    if (cartId.isEmpty) {
      return left(
          ErrorHandlerExternal(errorCode: ErrorCode.emptyCartIdSetShippingMethod, errorMessage: "Cart id is empty"));
    }
    final bool isCustomer = await _isCustomerLoggedIn.call();

    return _cartRepository.setShippingMethodOnCart(
      shippingMethod,
      cartId,
      isGuestUser: !isCustomer,
    );
  }
}
