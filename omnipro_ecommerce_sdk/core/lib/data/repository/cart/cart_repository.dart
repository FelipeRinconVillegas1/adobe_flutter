import 'package:core/domain/entity/cart/add_product_to_cart.dart';
import 'package:core/domain/entity/cart/cart.fr.dart';
import 'package:core/domain/entity/cart/enabled_shipping_method.dart';
import 'package:core/domain/entity/cart/send_tip.dart';
import 'package:core/domain/entity/cart/update_cart_items.dart';
import 'package:core/domain/entity/products.dart';
import 'package:core/utils/error_handler/error_handler.dart';
import 'package:omnipro_ecommerce_sdk/address/lib/domain/entity/customer_address_entity.dart';
import '../../../domain/entity/cart/add_product_to_cart_oms_options.dart';
import '../../../domain/entity/cart/appointment_selected_entity.dart';
import '../../../domain/entity/cart/config_shipping_method.dart';
import '../../../domain/entity/cart/input_set_payment_method_on_cart_entity.fr.dart';
import '../../../domain/entity/cart/set_shipping_address_oms_options.dart';
import '../../../domain/entity/customer.fr.dart';
import '../../../domain/entity/stores/warehouse_address_entity.fr.dart';
import 'package:dartz/dartz.dart';

abstract class CartRepository {
  Future<Either<ErrorHandler, Cart>> addProductToCart(List<AddProductToCart> addProductToCart,
      {required bool isGuestUser});

  Future<Either<ErrorHandler, Cart>> updateCartItems(
      {required UpdateCartItemsInput updateCartItemsInput, required bool isGuestUser});

  Future<Either<ErrorHandler, Cart>> removeProductFromCart(
      {required String cartId, required String cartItemId, required bool isGuestUser});

  Future<Either<ErrorHandler, Cart>> getCartInfo(String cartId, {required bool isGuestUser});

  Future<Either<ErrorHandler, String>> createCustomerCart({required bool isGuestUser});

  Future<Either<ErrorHandler, String>> createEmptyCart({required bool isGuestUser});

  Future<Either<ErrorHandler, Cart>> setWarehouseAddressOnCart(
    WareHouseAddressEntity wareHouseAddressEntity,
    String cartId, {
    required SetShippingAddressOmsOptions setShippingAddressOmsOptions,
    required Customer customerLogged,
  });

  Future<Either<ErrorHandler, Cart>> setShippingAddressesOnCart(CustomerAddressEntity orderAddress, String cartId,
      {required bool isGuestUser, required SetShippingAddressOmsOptions setShippingAddressOmsOptions});

  Future<Either<ErrorHandler, Cart>> setBillingAddressesOnCart(CustomerAddressEntity orderAddress, String cartId,
      {required bool isGuestUser, required AddressOmsOptions addressOmsOptions});

  Future<Either<ErrorHandler, Cart>> setShippingMethodOnCart(ConfigShippingMethod newShippingMethod, String cartId,
      {required bool isGuestUser});

  Future<Either<ErrorHandler, Cart>> setPaymentMethodOnCart(InputSetPaymentMethodOnCartEntity input,
      {required bool isGuestUser});

  Future<Either<ErrorHandler, Cart>> setGuestEmailOnCart({required String email, required String cartId});

  /// Apply coupon code to cart and return new cart info with applied coupon
  Future<Either<ErrorHandler, Cart>> appliedCoupon(
      {required String cartId, required String couponCode, required bool isGuestUser});

  /// Delete coupon code from cart and return new cart info without coupon
  Future<Either<ErrorHandler, Cart>> deleteCouponFromCart({required String cartId, required bool isGuestUser});

  Future<Either<ErrorHandler, List<ProductsItems>>> getCrossSellingProducts({required List<String> skus});

  Future<Either<ErrorHandler, SendTipResponse>> sendTip({required SendTip sendTip});

  Future<Either<ErrorHandler, List<EnabledShippingMethod>>> getEnabledShippingMethods();

  Future<Either<ErrorHandler, Cart>> removeAllItemsFromCart({required String cartId});

  Future<Either<ErrorHandler, AppointmentSelectedEntity>> setAppointmentInformationOnCart(
      {required AppointmentSelectedEntity appointmentOnCartEntity});

  Future<Either<ErrorHandler, Cart>> removeCartItems(
      {required String cartId, required List<int> cartItemIds, required bool isGuestUser});

  Future<Either<ErrorHandler, String>> setOmsOptionsInCart(
      {required AddToCartOmsOptions addToCartOmsOptions,required String cartId});
}
