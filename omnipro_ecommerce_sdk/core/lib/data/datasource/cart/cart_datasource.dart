import 'package:core/data/dto/customer_address_dto.fr.dart';
import 'package:core/data/dto/cart/add_product_to_cart_dto.fr.dart';
import 'package:core/data/dto/cart/cart_dto.fr.dart';
import 'package:core/data/dto/cart/config_shipping_method_dto.fr.dart';
import 'package:core/data/dto/cart/enabled_shipping_method_dto.fr.dart';
import 'package:core/data/dto/cart/update_cart_items_dto.fr.dart';
import 'package:core/data/dto/products_dto.fr.dart';
import 'package:dartz/dartz.dart';
import 'package:core/utils/error_handler/error_handler.dart';
import '../../../domain/entity/cart/input_set_payment_method_on_cart_entity.fr.dart';
import '../../../domain/entity/customer.fr.dart';
import '../../../domain/entity/stores/warehouse_address_entity.fr.dart';
import '../../dto/cart/send_tip_dto.dart';

abstract class CartDatasource {
  Future<Either<ErrorHandler, CartDTO>> addProductToCart(
    List<AddProductToCartDTO> addProductToCartDTO, {
    required bool isGuestUser,
  });

  Future<Either<ErrorHandler, CartDTO>> updateCartItems({
    required UpdateCartItemsInputDTO updateCartItemsInputDTO,
    required bool isGuestUser,
  });

  Future<Either<ErrorHandler, CartDTO>> removeCartItems({
    required String cartId,
    required List<int> cartItemIds,
    required bool isGuestUser,
  });

  Future<Either<ErrorHandler, CartDTO>> removeProductFromCart({
    required String cartId,
    required String cartItemId,
    required bool isGuestUser,
  });

  Future<Either<ErrorHandler, String>> createCustomerCart({required bool isGuestUser});

  Future<Either<ErrorHandler, String>> createEmptyCart({required bool isGuestUser});

  Future<Either<ErrorHandler, CartDTO>> getCartInfo(String cartId, {required bool isGuestUser});

  Future<Either<ErrorHandler, CartDTO>> setWarehouseAddressOnCart(
    WareHouseAddressEntity wareHouseAddressEntity,
    String cartId, {
    required Customer customerLogged,
  });

  Future<Either<ErrorHandler, CartDTO>> setShippingAddressesOnCart(
    CustomerAddressDTO orderAddressDTO,
    String cartId, {
    required bool isGuestUser,
  });

  Future<Either<ErrorHandler, CartDTO>> setBillingAddressesOnCart(
    CustomerAddressDTO orderAddressDTO,
    String cartId, {
    required bool isGuestUser,
  });

  Future<Either<ErrorHandler, CartDTO>> setShippingMethodOnCart(
    ConfigShippingMethodDTO newShippingMethod,
    String cartId, {
    required bool isGuestUser,
  });

  Future<Either<ErrorHandler, CartDTO>> setPaymentMethodOnCart(
    InputSetPaymentMethodOnCartEntity input, {
    required bool isGuestUser,
  });

  Future<Either<ErrorHandler, CartDTO>> setGuestEmailOnCart({required String email, required String cartId});

  /// Apply coupon code to cart and return new cart info with applied coupon
  Future<Either<ErrorHandler, CartDTO>> appliedCoupon({
    required String cartId,
    required String couponCode,
    required bool isGuestUser,
  });

  /// Delete coupon code from cart and return new cart info without coupon
  Future<Either<ErrorHandler, CartDTO>> deleteCouponFromCart({required String cartId, required bool isGuestUser});

  Future<Either<ErrorHandler, List<ProductsItemsDTO>>> getCrossSellingProducts({required List<String> skus});

  Future<Either<ErrorHandler, SendTipResponseDTO>> addTipToCart({required SendTipDTO sendTipDTO});

  Future<Either<ErrorHandler, List<EnabledShippingMethodDTO>>> getEnabledShippingMethods();

  Future<Either<ErrorHandler, CartDTO>> removeAllItemsFromCart({required String cartId});
}
