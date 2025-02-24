import 'package:core/domain/use_case/customer/is_customer_logged_in.dart';
import 'package:dartz/dartz.dart';
import 'package:core/data/repository/cart/cart_repository.dart';
import 'package:core/utils/error_handler/error_handler.dart';
import 'package:core/domain/entity/cart/add_product_to_cart.dart';

import '../../entity/cart/cart.fr.dart';
import 'create_cart_use_case.dart';
import 'get_cart_id_use_case.dart';

class AddProductToCartUseCase {
  AddProductToCartUseCase(
    this._cartRepository,
    this._getCartIdUseCase,
    this._createEmptyCartUseCase,
    this._isCustomerLoggedIn,
  );

  final CartRepository _cartRepository;
  final GetCartIdUseCase _getCartIdUseCase;
  final CreateCartUseCase _createEmptyCartUseCase;
  final IsCustomerLoggedIn _isCustomerLoggedIn;

  /// Add a product to the cart
  /// If the cart is empty, create a new cart and add the product to the cart
  /// A cartId is assigned automatically to the [AddProductToCart] object
  Future<Either<ErrorHandler, Cart>> call(List<AddProductToCart> addProductToCart) async {
    try {
      var cartId = await _getCartIdUseCase();

      ///YA VALIDA DENTRO DEL GUEST USER O CUSTOMER
      if (cartId.isEmpty) {
        final result = await _createEmptyCartUseCase();

        ///YA VALIDA DENTRO DEL GUEST USER O CUSTOMER
        return result.fold(
          (errorHandler) => left(errorHandler),
          (cartIdResult) async {
            addProductToCart.first.cartId = cartIdResult;
            bool isCustomer = await _isCustomerLoggedIn.call();
            return await _cartRepository.addProductToCart(addProductToCart, isGuestUser: !isCustomer);
          },
        );
      } else {
        addProductToCart.first.cartId = cartId;
        bool isCustomer = await _isCustomerLoggedIn.call();
        return await _cartRepository.addProductToCart(addProductToCart, isGuestUser: !isCustomer);
      }
    } catch (e) {
      return left(ErrorHandlerInternal(errorMessage: e.toString()));
    }
  }
}
