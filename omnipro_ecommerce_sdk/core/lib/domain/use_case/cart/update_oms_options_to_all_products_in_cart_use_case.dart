import 'package:core/domain/entity/cart/add_product_to_cart_oms_options.dart';
import 'package:core/utils/error_handler/error_code.dart';
import 'package:core/utils/error_handler/error_handler.dart';
import 'package:dartz/dartz.dart';
import 'package:core/data/repository/cart/cart_repository.dart';
import '../cart/get_cart_id_use_case.dart';

class UpdateOmsOptionsToAllProductsInCartUseCase {
  UpdateOmsOptionsToAllProductsInCartUseCase(this._cartRepository, this._getCartIdUseCase);

  final CartRepository _cartRepository;
  final GetCartIdUseCase _getCartIdUseCase;

  Future<Either<ErrorHandler, String>> call(
    AddToCartOmsOptions addToCartOmsOptions,
  ) async {
    final cartId = await _getCartIdUseCase.call();

    if (cartId.isEmpty) {
      return left(ErrorHandlerExternal(
          errorCode: ErrorCode.emptyCartIdUpdateOmsOptionsToAllProductsInCart,
          errorMessage: "Cart id is empty UpdateOmsOptionsToAllProductsInCartUseCase"));
    }

    return _cartRepository.setOmsOptionsInCart(cartId: cartId, addToCartOmsOptions: addToCartOmsOptions);
  }
}
