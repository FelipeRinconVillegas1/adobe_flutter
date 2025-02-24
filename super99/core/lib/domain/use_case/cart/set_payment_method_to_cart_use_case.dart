import 'package:core/utils/error_handler/error_handler.dart';
import 'package:dartz/dartz.dart';
import 'package:core/data/repository/cart/cart_repository.dart';
import '../../entity/cart/cart.fr.dart';
import '../../entity/cart/input_set_payment_method_on_cart_entity.fr.dart';
import '../customer/is_customer_logged_in.dart';

class SetPaymentMethodOnCartUseCase {
  SetPaymentMethodOnCartUseCase(this._cartRepository,this._isCustomerLoggedIn);

  final CartRepository _cartRepository;
  final IsCustomerLoggedIn _isCustomerLoggedIn;

  Future<Either<ErrorHandler, Cart>> call(InputSetPaymentMethodOnCartEntity input) async {
    bool isCustomer = await _isCustomerLoggedIn.call();
    return _cartRepository.setPaymentMethodOnCart(input,isGuestUser: !isCustomer);
  }
}
