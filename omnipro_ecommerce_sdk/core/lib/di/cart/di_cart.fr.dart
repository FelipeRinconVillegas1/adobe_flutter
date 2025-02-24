import 'package:core/di/data_provider.fr.dart';
import 'package:core/domain/use_case/cart/get_enables_shipping_methods_use_case.dart';
import 'package:core/domain/use_case/cart/remove_cart_items_use_case.dart';
import 'package:core/domain/use_case/cart/update_oms_options_to_all_products_in_cart_use_case.dart';
import 'package:core/domain/use_case/stores/set_warehouse_address_on_cart_use_case.dart';
import 'package:core/local/di_secure_storage.fr.dart';
import 'package:core/data/datasource/cart/cart_datasource.dart';
import 'package:core/data/repository/cart/cart_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:core/domain/use_case/cart/add_product_to_cart_use_case.dart';
import 'package:core/domain/use_case/cart/set_guest_email_on_cart.dart';
import 'package:core/di/use_cases_provider.fr.dart';

import '../../data/datasource/cart/cart_datasource_impl.dart';
import '../../data/repository/cart/cart_repository_impl.dart';
import '../../domain/use_case/cart/add_tip_to_cart_use_case.dart';
import '../../domain/use_case/cart/applied_coupon_use_case.dart';
import '../../domain/use_case/cart/create_cart_use_case.dart';
import '../../domain/use_case/cart/create_empty_cart_use_case.dart';
import '../../domain/use_case/cart/delete_cart_use_case.dart';
import '../../domain/use_case/cart/delete_coupon_from_cart_use_case.dart';
import '../../domain/use_case/cart/get_cart_id_use_case.dart';
import '../../domain/use_case/cart/get_cart_info_use_case.dart';
import '../../domain/use_case/cart/get_crosssell_products_use_case.dart';
import '../../domain/use_case/cart/remove_all_items_from_cart_use_case.dart';
import '../../domain/use_case/cart/remove_product_to_cart_use_case.dart';
import '../../domain/use_case/cart/set_appointment_information_on_cart_use_case.dart';
import '../../domain/use_case/cart/set_billing_address_to_cart.dart';
import '../../domain/use_case/cart/set_payment_method_to_cart_use_case.dart';
import '../../domain/use_case/cart/set_shipping_address_to_cart.dart';
import '../../domain/use_case/cart/set_shipping_method_to_cart.dart';
import '../../domain/use_case/cart/update_cart_items_use_case.dart';

part 'di_cart.fr.g.dart';

@Riverpod(keepAlive: true)
GetEnabledShippingMethodsUseCase getEnabledShippingMethodsUseCase(GetEnabledShippingMethodsUseCaseRef ref) {
  return GetEnabledShippingMethodsUseCase(ref.watch(cartRepositorySourceProvider));
}

@Riverpod(keepAlive: true)
AddTipToCartUseCase addTipToCartUseCase(AddTipToCartUseCaseRef ref) {
  return AddTipToCartUseCase(ref.watch(cartRepositorySourceProvider), ref.watch(getCartIdUseCaseProvider));
}

@Riverpod(keepAlive: true)
DeleteCurrentCartUseCase deleteCurrentCartUseCase(DeleteCurrentCartUseCaseRef ref) {
  return DeleteCurrentCartUseCase(ref.watch(secureStorageRepositorySourceProvider));
}

@Riverpod(keepAlive: true)
GetCrossSellProductsUseCase getCrossSellProductsUseCase(GetCrossSellProductsUseCaseRef ref) {
  return GetCrossSellProductsUseCase(ref.watch(cartRepositorySourceProvider));
}

@Riverpod(keepAlive: true)
UpdateCartItemsUseCase updateCartItemsUseCase(UpdateCartItemsUseCaseRef ref) {
  return UpdateCartItemsUseCase(ref.watch(cartRepositorySourceProvider), ref.watch(getCartIdUseCaseProvider),
      ref.watch(isCustomerLoggedInSourceProvider));
}

@Riverpod(keepAlive: true)
RemoveProductToCartUseCase removeProductToCartUseCase(RemoveProductToCartUseCaseRef ref) {
  return RemoveProductToCartUseCase(ref.watch(cartRepositorySourceProvider), ref.watch(getCartIdUseCaseProvider),
      ref.watch(isCustomerLoggedInSourceProvider));
}

@Riverpod(keepAlive: true)
ApplyCouponUseCase applyCouponUseCase(ApplyCouponUseCaseRef ref) {
  return ApplyCouponUseCase(ref.watch(cartRepositorySourceProvider), ref.watch(getCartIdUseCaseProvider),
      ref.watch(isCustomerLoggedInSourceProvider));
}

@Riverpod(keepAlive: true)
DeleteCouponFromCartUseCase deleteCouponFromCartUseCase(DeleteCouponFromCartUseCaseRef ref) {
  return DeleteCouponFromCartUseCase(ref.watch(cartRepositorySourceProvider), ref.watch(getCartIdUseCaseProvider),
      ref.watch(isCustomerLoggedInSourceProvider));
}

@Riverpod(keepAlive: true)
SetGuestEmailOnCartUseCase setGuestEmailOnCartUseCase(SetGuestEmailOnCartUseCaseRef ref) {
  return SetGuestEmailOnCartUseCase(ref.watch(cartRepositorySourceProvider), ref.watch(getCartIdUseCaseProvider));
}

@Riverpod(keepAlive: true)
SetPaymentMethodOnCartUseCase setPaymentMethodOnCart(SetPaymentMethodOnCartRef ref) {
  return SetPaymentMethodOnCartUseCase(
      ref.watch(cartRepositorySourceProvider), ref.watch(isCustomerLoggedInSourceProvider));
}

@Riverpod(keepAlive: true)
SetShippingMethodToCart setShippingMethodToCart(SetShippingMethodToCartRef ref) {
  return SetShippingMethodToCart(ref.watch(cartRepositorySourceProvider), ref.watch(getCartIdUseCaseProvider),
      ref.watch(isCustomerLoggedInSourceProvider));
}

@Riverpod(keepAlive: true)
SetBillingAddressToCartUseCase setBillingAddressToCartUseCase(SetBillingAddressToCartUseCaseRef ref) {
  return SetBillingAddressToCartUseCase(ref.watch(cartRepositorySourceProvider), ref.watch(getCartIdUseCaseProvider),
      ref.watch(isCustomerLoggedInSourceProvider));
}

@Riverpod(keepAlive: true)
SetAppointmentOnCartUseCase setAppointmentOnCartUseCase(SetAppointmentOnCartUseCaseRef ref) {
  return SetAppointmentOnCartUseCase(ref.watch(cartRepositorySourceProvider), ref.watch(getCartIdUseCaseProvider));
}

@Riverpod(keepAlive: true)
SetShippingAddressToCartUseCase setShippingAddressToCartUseCase(SetShippingAddressToCartUseCaseRef ref) {
  return SetShippingAddressToCartUseCase(ref.watch(cartRepositorySourceProvider), ref.watch(getCartIdUseCaseProvider),
      ref.watch(isCustomerLoggedInSourceProvider));
}

@Riverpod(keepAlive: true)
SetWarehouseAddressOnCartUseCase setWarehouseAddressOnCartUseCase(SetWarehouseAddressOnCartUseCaseRef ref) {
  return SetWarehouseAddressOnCartUseCase(
    ref.watch(cartRepositorySourceProvider),
    ref.watch(getCartIdUseCaseProvider),
  );
}

@Riverpod(keepAlive: true)
GetCartIfoUseCase getCartInfoUseCase(GetCartInfoUseCaseRef ref) {
  return GetCartIfoUseCase(ref.watch(cartRepositorySourceProvider), ref.watch(createCartUseCaseSourceProvider),
      ref.watch(getCartIdUseCaseProvider), ref.watch(isCustomerLoggedInSourceProvider));
}

@Riverpod(keepAlive: true)
AddProductToCartUseCase addProductToCartUseCase(AddProductToCartUseCaseRef ref) {
  return AddProductToCartUseCase(ref.watch(cartRepositorySourceProvider), ref.watch(getCartIdUseCaseProvider),
      ref.watch(createCartUseCaseSourceProvider), ref.watch(isCustomerLoggedInSourceProvider));
}

@Riverpod(keepAlive: true)
RemoveCartItemsUseCase removeCartItemsUseCase(RemoveCartItemsUseCaseRef ref) {
  return RemoveCartItemsUseCase(ref.watch(cartRepositorySourceProvider), ref.watch(getCartIdUseCaseProvider),
      ref.watch(isCustomerLoggedInSourceProvider));
}

@Riverpod(keepAlive: true)
CreateEmptyCartUseCase createEmptyCartUseCase(CreateEmptyCartUseCaseRef ref) {
  return CreateEmptyCartUseCase(ref.watch(cartRepositorySourceProvider), ref.watch(isCustomerLoggedInSourceProvider),
      ref.watch(secureStorageRepositorySourceProvider));
}

@Riverpod(keepAlive: true)
CreateCartUseCase createCartUseCaseSource(CreateCartUseCaseSourceRef ref) {
  return CreateCartUseCase(ref.watch(cartRepositorySourceProvider), ref.watch(isCustomerLoggedInSourceProvider),
      ref.watch(secureStorageRepositorySourceProvider));
}

@Riverpod(keepAlive: true)
GetCartIdUseCase getCartIdUseCase(GetCartIdUseCaseRef ref) {
  return GetCartIdUseCase(
      ref.watch(secureStorageRepositorySourceProvider), ref.watch(isCustomerLoggedInSourceProvider));
}

@Riverpod(keepAlive: true)
CartRepository cartRepositorySource(CartRepositorySourceRef ref) {
  return CartRepositoryImpl(ref.watch(cartDatasourceSourceProvider));
}

@Riverpod(keepAlive: true)
CartDatasource cartDatasourceSource(CartDatasourceSourceRef ref) {
  return CartDatasourceImpl(ref.watch(graphQLServiceSourceUsePOSTProvider),
      ref.watch(graphQLServiceSourceNoAuthenticatedProvider.call(useGet: false)));
}

@Riverpod(keepAlive: true)
RemoveAllItemsFromCartUseCase removeAllItemsFromCartUseCase(RemoveAllItemsFromCartUseCaseRef ref) {
  return RemoveAllItemsFromCartUseCase(ref.watch(cartRepositorySourceProvider), ref.watch(getCartIdUseCaseProvider));
}

@Riverpod(keepAlive: true)
UpdateOmsOptionsToAllProductsInCartUseCase updateOmsOptionsToAllProductsInCartUseCase(
    UpdateOmsOptionsToAllProductsInCartUseCaseRef ref) {
  return UpdateOmsOptionsToAllProductsInCartUseCase(
      ref.watch(cartRepositorySourceProvider), ref.watch(getCartIdUseCaseProvider));
}
