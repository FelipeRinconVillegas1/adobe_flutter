import 'package:core/data/dto/products_mapper.dart';
import 'package:core/data/repository/cart/mapper.dart';
import 'package:core/domain/entity/cart/enabled_shipping_method.dart';
import 'package:core/domain/entity/cart/send_tip.dart';
import 'package:core/domain/entity/stores/warehouse_address_entity.fr.dart';
import 'package:core/domain/entity/products.dart';
import 'package:dartz/dartz.dart';
import 'package:core/data/datasource/cart/cart_datasource.dart';
import 'package:core/data/repository/cart/cart_repository.dart';
import 'package:core/utils/error_handler/error_handler.dart';
import 'package:omnipro_ecommerce_sdk/address/lib/data/repository/address_mapper.dart';
import 'package:omnipro_ecommerce_sdk/address/lib/domain/entity/customer_address_entity.dart';
import '../../../domain/entity/cart/add_product_to_cart.dart';
import '../../../domain/entity/cart/cart.fr.dart';
import '../../../domain/entity/cart/config_shipping_method.dart';
import '../../../domain/entity/cart/input_set_payment_method_on_cart_entity.fr.dart';
import '../../../domain/entity/cart/update_cart_items.dart';
import '../../../domain/entity/customer.fr.dart';

class CartRepositoryImpl extends CartRepository {
  final CartDatasource _cartDatasource;

  CartRepositoryImpl(this._cartDatasource);

  @override
  Future<Either<ErrorHandler, Cart>> updateCartItems({
    required UpdateCartItemsInput updateCartItemsInput,
    required isGuestUser,
  }) {
    return _cartDatasource
        .updateCartItems(updateCartItemsInputDTO: updateCartItemsInput.toDto(), isGuestUser: isGuestUser)
        .then((value) => value.fold((errorHandler) => left(errorHandler), (cartDTO) => right(cartDTO.toDomain())));
  }

  @override
  Future<Either<ErrorHandler, Cart>> addProductToCart(
    List<AddProductToCart> addProductToCart, {
    required bool isGuestUser,
  }) async {
    return (await _cartDatasource.addProductToCart(
      addProductToCart.map((e) => e.toDTO()).toList(),
      isGuestUser: isGuestUser,
    )).fold((errorHandler) => left(errorHandler), (cartDTO) => right(cartDTO.toDomain()));
  }

  @override
  Future<Either<ErrorHandler, Cart>> removeProductFromCart({
    required String cartId,
    required String cartItemId,
    required isGuestUser,
  }) {
    return _cartDatasource
        .removeProductFromCart(cartId: cartId, cartItemId: cartItemId, isGuestUser: isGuestUser)
        .then((value) => value.fold((errorHandler) => left(errorHandler), (cartDTO) => right(cartDTO.toDomain())));
  }

  @override
  Future<Either<ErrorHandler, Cart>> getCartInfo(String cartId, {required bool isGuestUser}) async {
    return (await _cartDatasource.getCartInfo(
      cartId,
      isGuestUser: isGuestUser,
    )).fold((errorHandler) => left(errorHandler), (cartDTO) => right(cartDTO.toDomain()));
  }

  @override
  Future<Either<ErrorHandler, String>> createCustomerCart({required isGuestUser}) {
    return _cartDatasource.createCustomerCart(isGuestUser: isGuestUser);
  }

  @override
  Future<Either<ErrorHandler, String>> createEmptyCart({required isGuestUser}) {
    return _cartDatasource.createEmptyCart(isGuestUser: isGuestUser);
  }

  @override
  Future<Either<ErrorHandler, Cart>> setShippingAddressesOnCart(
    CustomerAddressEntity orderAddress,
    String cartId, {
    required isGuestUser,
  }) {
    return _cartDatasource
        .setShippingAddressesOnCart(orderAddress.toDTO(), cartId, isGuestUser: isGuestUser)
        .then((value) => value.fold((errorHandler) => left(errorHandler), (cartDTO) => right(cartDTO.toDomain())));
  }

  @override
  Future<Either<ErrorHandler, Cart>> setBillingAddressesOnCart(
    CustomerAddressEntity orderAddress,
    String cartId, {
    required isGuestUser,
  }) {
    return _cartDatasource
        .setBillingAddressesOnCart(
          orderAddress.toDTO(),
          cartId,
          isGuestUser: isGuestUser,
        )
        .then((value) => value.fold((errorHandler) => left(errorHandler), (cartDTO) => right(cartDTO.toDomain())));
  }

  @override
  Future<Either<ErrorHandler, Cart>> setShippingMethodOnCart(
    ConfigShippingMethod newShippingMethod,
    String cartId, {
    required bool isGuestUser,
  }) {
    return _cartDatasource
        .setShippingMethodOnCart(newShippingMethod.toDTO(), cartId, isGuestUser: isGuestUser)
        .then((value) => value.fold((errorHandler) => left(errorHandler), (cartDTO) => right(cartDTO.toDomain())));
  }

  @override
  Future<Either<ErrorHandler, Cart>> setPaymentMethodOnCart(
    InputSetPaymentMethodOnCartEntity input, {
    required bool isGuestUser,
  }) {
    return _cartDatasource
        .setPaymentMethodOnCart(input, isGuestUser: isGuestUser)
        .then((value) => value.fold((errorHandler) => left(errorHandler), (cartDTO) => right(cartDTO.toDomain())));
  }

  @override
  Future<Either<ErrorHandler, Cart>> setGuestEmailOnCart({required String email, required String cartId}) {
    return _cartDatasource
        .setGuestEmailOnCart(email: email, cartId: cartId)
        .then((value) => value.fold((errorHandler) => left(errorHandler), (cartDTO) => right(cartDTO.toDomain())));
  }

  @override
  Future<Either<ErrorHandler, Cart>> appliedCoupon({
    required String cartId,
    required String couponCode,
    required bool isGuestUser,
  }) {
    return _cartDatasource
        .appliedCoupon(cartId: cartId, couponCode: couponCode, isGuestUser: isGuestUser)
        .then((value) => value.fold((errorHandler) => left(errorHandler), (cartDTO) => right(cartDTO.toDomain())));
  }

  @override
  Future<Either<ErrorHandler, Cart>> deleteCouponFromCart({required String cartId, required bool isGuestUser}) {
    return _cartDatasource
        .deleteCouponFromCart(cartId: cartId, isGuestUser: isGuestUser)
        .then((value) => value.fold((errorHandler) => left(errorHandler), (cartDTO) => right(cartDTO.toDomain())));
  }

  @override
  Future<Either<ErrorHandler, List<ProductsItems>>> getCrossSellingProducts({required List<String> skus}) {
    return _cartDatasource
        .getCrossSellingProducts(skus: skus)
        .then(
          (value) => value.fold(
            (errorHandler) => left(errorHandler),
            (productsItemsDTO) => right(productsItemsDTO.map((e) => e.toDomain()).toList()),
          ),
        );
  }

  @override
  Future<Either<ErrorHandler, SendTipResponse>> sendTip({required SendTip sendTip}) {
    return _cartDatasource
        .addTipToCart(sendTipDTO: sendTip.toDto())
        .then(
          (value) => value.fold(
            (errorHandler) => left(errorHandler),
            (sendTipResponseDTO) => right(sendTipResponseDTO.toDomain()),
          ),
        );
  }

  @override
  Future<Either<ErrorHandler, List<EnabledShippingMethod>>> getEnabledShippingMethods() {
    return _cartDatasource.getEnabledShippingMethods().then(
      (value) => value.fold(
        (errorHandler) => left(errorHandler),
        (enabledShippingMethodDTO) => right(enabledShippingMethodDTO.map((e) => e.toDomain()).toList()),
      ),
    );
  }

  @override
  Future<Either<ErrorHandler, Cart>> removeAllItemsFromCart({required String cartId}) {
    return _cartDatasource
        .removeAllItemsFromCart(cartId: cartId)
        .then((value) => value.fold((errorHandler) => left(errorHandler), (cartDTO) => right(cartDTO.toDomain())));
  }

  @override
  Future<Either<ErrorHandler, Cart>> removeCartItems({
    required String cartId,
    required List<int> cartItemIds,
    required bool isGuestUser,
  }) {
    return _cartDatasource
        .removeCartItems(cartId: cartId, cartItemIds: cartItemIds, isGuestUser: isGuestUser)
        .then((value) => value.fold((errorHandler) => left(errorHandler), (cartDTO) => right(cartDTO.toDomain())));
  }
}
