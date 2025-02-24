import 'package:core/domain/use_case/customer/is_customer_logged_in.dart';
import 'package:core/utils/error_handler/error_handler.dart';
import 'package:dartz/dartz.dart';
import 'package:core/data/repository/cart/cart_repository.dart';

import '../../entity/cart/cart.fr.dart';
import 'create_cart_use_case.dart';
import 'get_cart_id_use_case.dart';

class GetCartIfoUseCase {
  final CartRepository _cartRepository;
  final CreateCartUseCase _createEmptyCartUseCase;
  final GetCartIdUseCase _getCartIdUseCase;
  final IsCustomerLoggedIn _isCustomerLoggedIn;

  GetCartIfoUseCase(
      this._cartRepository, this._createEmptyCartUseCase, this._getCartIdUseCase, this._isCustomerLoggedIn);

  /// If cart id is empty created new empty cart and get cart info
  /// else get cart info by cart id existed
  Future<Either<ErrorHandler, Cart>> call() async {
    var currentCartId = await _getCartIdUseCase();

    final bool isCustomer = await _isCustomerLoggedIn.call();
    if (currentCartId.isEmpty) {
      final result = await _createEmptyCartUseCase();
      return result.fold(
          (l) => left(l), (newCartID) => _cartRepository.getCartInfo(newCartID, isGuestUser: !isCustomer));
    } else {
      return _cartRepository.getCartInfo(currentCartId, isGuestUser: !isCustomer);
    }
  }
}
