import 'package:core/utils/error_handler/error_code.dart';
import 'package:core/utils/error_handler/error_handler.dart';
import 'package:dartz/dartz.dart';
import 'package:core/data/repository/cart/cart_repository.dart';

import '../../entity/cart/cart.fr.dart';
import '../customer/is_customer_logged_in.dart';
import 'get_cart_id_use_case.dart';

/// Apply coupon to cart
/// Id used for apply coupon is the current cart for the user (guest or logged in) or the custom cart id if provided
/// Return the updated cart if success with the applied coupon
class ApplyCouponUseCase {
  final CartRepository _cartRepository;
  final GetCartIdUseCase _getCartIdUseCase;
  final IsCustomerLoggedIn _isCustomerLoggedIn;

  ApplyCouponUseCase(this._cartRepository, this._getCartIdUseCase,this._isCustomerLoggedIn);

  Future<Either<ErrorHandler, Cart>> call({required String couponCode, String customCartId = ''}) async {
    late String cartId;

    if (customCartId.isEmpty) {
      cartId = await _getCartIdUseCase();
      if (cartId.isEmpty) {
        return left(
            ErrorHandlerExternal(errorCode: ErrorCode.emptyCartIdAppliedCoupon, errorMessage: "Cart id is empty"));
      }
    } else {
      cartId = customCartId;
    }

    bool isCustomer = await _isCustomerLoggedIn.call();
    return await _cartRepository.appliedCoupon(cartId: cartId, couponCode: couponCode,isGuestUser: !isCustomer);
  }
}
