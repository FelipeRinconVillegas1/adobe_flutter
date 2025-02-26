import 'package:core/domain/entity/available_payment_method.dart';
import 'package:core/domain/entity/cart/shipping_address_on_cart.dart';
import 'package:core/domain/entity/money.fr.dart';
import 'package:core/domain/entity/products.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'amount_saved.dart';
import 'detail_address_on_cart.dart';

part 'cart.fr.freezed.dart';

enum InventoryStatusInCart { pending, completed, error }

@freezed
class Cart with _$Cart {
  //Empty cart
  factory Cart.empty() => const Cart(
      id: "",
      prices: CartPrices(
          grandTotal: Money(value: 0, currency: ''),
          subtotalExcludingTax: Money(value: 0, currency: ''),
          catalogDiscountAmount: CatalogDiscountAmount(value: 0)));

  //Cart with items
  const factory Cart(
      {required String id,
      @Default([]) List<CartItems> items,
      @Default([]) List<ShippingAddressOnCart>? shippingAddresses,
      @Default([]) List<AvailablePaymentMethod> availablePaymentMethods,
      @Default([]) List<AppliedCoupon> appliedCoupons,
      DetailAddressOnCart? billingAddress,
      String? email,
      double? tip,
      double? tipAux,
      SelectedPaymentMethod? selectedPaymentMethod,
      required CartPrices prices,
      @Default(InventoryStatusInCart.pending) InventoryStatusInCart inventoryStatusInCart,
      String? errorCode,
      @Default(true) bool isAvailableInventory}) = _Cart;
}

@freezed
class CartPrices with _$CartPrices {
  const factory CartPrices({
    @JsonKey(name: 'grand_total') required Money grandTotal,
    @JsonKey(name: 'catalog_discount_amount') required CatalogDiscountAmount catalogDiscountAmount,
    required Money subtotalExcludingTax,
    @JsonKey(name: 'discounts') @Default([]) List<MoneyInfo> discounts,
    @JsonKey(name: 'applied_taxes') @Default([]) List<MoneyInfo> appliedTaxes,
    @JsonKey(name: 'amount_saved') @Default(AmountSaved(value: 0)) AmountSaved amountSaved,
  }) = _CartPrices;
}

@freezed
class CatalogDiscountAmount with _$CatalogDiscountAmount {
  const factory CatalogDiscountAmount({
    required double value,
  }) = _CatalogDiscountAmount;
}

@freezed
class CartItems with _$CartItems {
  const factory CartItems({
    required double quantity,

    /// [quantityAvailable] Is null, util we get the inventory info.
    double? quantityAvailable,
    required String uid,
    required ProductsItems product,
    required CartItemsPrices prices,
  }) = _CartItems;
}

@freezed
class CartProduct with _$CartProduct {
  const factory CartProduct({
    required String name,
    required String sku,
    required ProductsImage image,
    required ProductsImage smallImage,
    required PriceRange priceRange,
  }) = _CartProduct;
}

@freezed
class PriceRange with _$PriceRange {
  const factory PriceRange({
    required ItemPriceRange maximumPrice,
  }) = _PriceRange;
}

@freezed
class ItemPriceRange with _$ItemPriceRange {
  const factory ItemPriceRange({
    required Money finalPrice,
    required Money regularPrice,
    required Discount discount,
  }) = _ItemPriceRange;
}

@freezed
class Discount with _$Discount {
  const factory Discount({
    required double amountOff,
  }) = _Discount;
}

@freezed
class CartItemsPrices with _$CartItemsPrices {
  const factory CartItemsPrices({
    required CartItemPrice price,
    required List<AppliedTaxes> appliedTaxes,
  }) = _CartItemsPrices;
}

@freezed
class AppliedTaxes with _$AppliedTaxes {
  const factory AppliedTaxes({
    required String label,
    required Money amount,
  }) = _AppliedTaxes;
}

@freezed
class CartItemPrice with _$CartItemPrice {
  const factory CartItemPrice({
    required double value,
    required String currency,
  }) = _CartItemPrice;
}

@freezed
class SelectedPaymentMethod with _$SelectedPaymentMethod {
  const factory SelectedPaymentMethod({
    required String code,
  }) = _SelectedPaymentMethod;
}

@freezed
class AppliedCoupon with _$AppliedCoupon {
  const factory AppliedCoupon({
    @JsonKey(name: 'code') required String code,
  }) = _AppliedCoupon;
}

extension CartExtension on Cart {
  double get totalItemInCart => items.map((e) => e.quantity).fold(0, (pre, next) => pre + next);
  List<CartItems> get itemsWithoutStock => items.where((element) {
        if (element.quantityAvailable == null) return false;
        return element.quantity > (element.quantityAvailable ?? 0);
      }).toList();
  List<CartItems> get itemsWithStock => items.where((element) {
        if (element.quantityAvailable == null) return true;
        return element.quantity <= (element.quantityAvailable ?? 0);
      }).toList();

  double getShippingCost() {
    try {
      if ((shippingAddresses ?? []).isNotEmpty) {
        final selectedShippingMethod = shippingAddresses![0].selectedShippingMethod;
        if (selectedShippingMethod != null) {
          return selectedShippingMethod.amount.value;
        }
      }
      return 0;
    } catch (e) {
      return 0;
    }
  }
}

extension CartItemsExtensionList on List<CartItems> {
  List<CartItems> bagLast(String skuBag) {
    try {
      final bag = where((element) => element.product.sku == skuBag).toList();
      final other = where((element) => element.product.sku != skuBag).toList();
      return [...other, ...bag];
    } catch (e) {
      return this;
    }
  }

  List<CartItems> excludeBag(String skuBag) {
    try {
      return where((element) => element.product.sku != skuBag).toList();
    } catch (e) {
      return this;
    }
  }
}
