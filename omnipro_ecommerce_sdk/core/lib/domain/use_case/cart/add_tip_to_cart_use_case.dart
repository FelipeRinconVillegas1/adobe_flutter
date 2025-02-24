import 'package:dartz/dartz.dart';

import '../../../data/repository/cart/cart_repository.dart';
import '../../../utils/error_handler/error_code.dart';
import '../../../utils/error_handler/error_handler.dart';
import '../../entity/cart/send_tip.dart';
import 'get_cart_id_use_case.dart';

class AddTipToCartUseCase {
  final CartRepository _cartRepository;
  final GetCartIdUseCase _getCartIdUseCase;

  AddTipToCartUseCase(this._cartRepository, this._getCartIdUseCase);

  Future<Either<ErrorHandler, SendTipResponse>> execute(String valueTip) async {
    late String cartId;

    cartId = await _getCartIdUseCase();
    if (cartId.isEmpty) {
      return left(
          ErrorHandlerExternal(errorCode: ErrorCode.emptyCartIdAppliedCoupon, errorMessage: "Cart id is empty"));
    }

    return _cartRepository.sendTip(sendTip: SendTip(cartId: cartId, tip: valueTip));
  }
}
