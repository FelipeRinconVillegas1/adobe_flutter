import 'package:dartz/dartz.dart';

import '../../../data/repository/cart/cart_repository.dart';
import '../../../utils/error_handler/error_code.dart';
import '../../../utils/error_handler/error_handler.dart';
import '../../entity/cart/cart.fr.dart';
import 'get_cart_id_use_case.dart';

class RemoveAllItemsFromCartUseCase {
  final CartRepository _cartRepository;
  final GetCartIdUseCase _getCartIdUseCase;

  RemoveAllItemsFromCartUseCase(this._cartRepository, this._getCartIdUseCase);

  Future<Either<ErrorHandler, Cart>> call() async {
    late String cartId;

    cartId = await _getCartIdUseCase();
    if (cartId.isEmpty) {
      return left(
          ErrorHandlerExternal(errorCode: ErrorCode.emptyCartIdRemoveAllProducts, errorMessage: "Cart id is empty"));
    }

    return (await _cartRepository.removeAllItemsFromCart(cartId: cartId)).fold(
      (errorHandler) => left(errorHandler),
      (cart) => right(cart),
    );
  }
}
