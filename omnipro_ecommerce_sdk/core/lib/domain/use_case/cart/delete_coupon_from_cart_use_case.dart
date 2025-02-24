import 'package:core/utils/error_handler/error_code.dart';
import 'package:core/utils/error_handler/error_handler.dart';
import 'package:dartz/dartz.dart';
import 'package:core/data/repository/cart/cart_repository.dart';

import '../../entity/cart/cart.fr.dart';
import '../customer/is_customer_logged_in.dart';
import 'get_cart_id_use_case.dart';

class DeleteCouponFromCartUseCase {
  DeleteCouponFromCartUseCase(this._cartRepository, this._getCartIdUseCase, this._isCustomerLoggedIn);

  final CartRepository _cartRepository;
  final GetCartIdUseCase _getCartIdUseCase;
  final IsCustomerLoggedIn _isCustomerLoggedIn;

  /// Delete coupon from cart
  /// Id used for delete coupon is the current cart for the user (guest or logged in) or the custom cart id if provided
  /// Return the updated cart if success without the coupon
  Future<Either<ErrorHandler, Cart>> call({String customCartId = ''}) async {
    late String cartId;

    if (customCartId.isEmpty) {
      cartId = await _getCartIdUseCase();
      if (cartId.isEmpty) {
        return left(
            ErrorHandlerExternal(errorCode: ErrorCode.emptyCartIdDeleteCoupon, errorMessage: "Cart id is empty"));
      }
    } else {
      cartId = customCartId;
    }

    bool isCustomer = await _isCustomerLoggedIn.call();
    return await _cartRepository.deleteCouponFromCart(cartId: cartId, isGuestUser: !isCustomer);
  }
}
