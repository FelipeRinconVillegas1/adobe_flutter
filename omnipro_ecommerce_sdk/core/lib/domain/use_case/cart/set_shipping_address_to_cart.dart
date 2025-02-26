import 'package:core/utils/error_handler/error_code.dart';
import 'package:core/utils/error_handler/error_handler.dart';
import 'package:core/data/repository/cart/cart_repository.dart';
import 'package:omnipro_ecommerce_sdk/address/lib/domain/entity/customer_address_entity.dart';
import '../../entity/cart/cart.fr.dart';
import '../customer/is_customer_logged_in.dart';
import 'get_cart_id_use_case.dart';
import 'package:dartz/dartz.dart';

class SetShippingAddressToCartUseCase {
  SetShippingAddressToCartUseCase(this._cartRepository, this._getCartIdUseCase, this._isCustomerLoggedIn);

  final CartRepository _cartRepository;
  final GetCartIdUseCase _getCartIdUseCase;
  final IsCustomerLoggedIn _isCustomerLoggedIn;

  Future<Either<ErrorHandler, Cart>> call(CustomerAddressEntity orderAddress) async {
    final cartId = await _getCartIdUseCase.call();

    if (cartId.isEmpty) {
      return left(
        ErrorHandlerExternal(errorCode: ErrorCode.emptyCartIdSetShippingAddress, errorMessage: "Cart id is empty"),
      );
    }

    final bool isCustomer = await _isCustomerLoggedIn.call();
    return _cartRepository.setShippingAddressesOnCart(orderAddress, cartId, isGuestUser: !isCustomer);
  }
}
