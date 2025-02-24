import 'package:core/data/dto/available_payment_method_dto.fr.dart';
import 'package:core/data/dto/cart/shipping_address_on_cart_dto.fr.dart';
import 'package:core/data/dto/localization_item_dto.fr.dart';
import 'package:core/data/dto/money_info_dto.fr.dart';
import 'package:core/data/dto/products_dto.fr.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:core/data/dto/money_dto.fr.dart';

import 'refundable_fee_dto.fr.dart';
part 'cart_dto.fr.freezed.dart';
part 'cart_dto.fr.g.dart';

@freezed
class CartDTO with _$CartDTO {
  const factory CartDTO({
    required String id,
    @Default([]) List<CartItemsDTO> items,
    String? email,
    double? tip,
    @JsonKey(name: 'shipping_addresses') @Default([]) List<ShippingAddressOnCartDTO>? shippingAddresses,
    @JsonKey(name: 'available_payment_methods') @Default([]) List<AvailablePaymentMethodDTO> availablePaymentMethods,
    @JsonKey(name: 'billing_address') BillingAddressOnCartDTO? billingAddress,
    @JsonKey(name: 'selected_payment_method') SelectedPaymentMethodDTO? selectedPaymentMethod,
    @JsonKey(name: 'applied_coupons') @Default([]) List<AppliedCouponDTO> appliedCoupons,
    required CartPricesDTO prices,
  }) = _CartDTO;

  factory CartDTO.fromJson(Map<String, Object?> json) => _$CartDTOFromJson(json);
}

@freezed
class AppliedCouponDTO with _$AppliedCouponDTO {
  const factory AppliedCouponDTO({
    @JsonKey(name: 'code') required String code,
  }) = _AppliedCouponDTO;

  factory AppliedCouponDTO.fromJson(Map<String, Object?> json) => _$AppliedCouponDTOFromJson(json);
}

@freezed
class CartPricesDTO with _$CartPricesDTO {
  const factory CartPricesDTO({
    @JsonKey(name: 'grand_total') required MoneyDTO grandTotalDTO,
    @JsonKey(name: 'refundable_fee') required RefundableFeeDTO refundableFeeDTO,
    @JsonKey(name: 'catalog_discount_amount') required CatalogDiscountAmountDTO catalogDiscountAmountDTO,
    @JsonKey(name: 'subtotal_excluding_tax') required MoneyDTO subtotalExcludingTaxDTO,
    @JsonKey(name: 'discounts') @Default([]) List<MoneyInfoDTO> discountsDTO,
    @JsonKey(name: 'applied_taxes') @Default([]) List<MoneyInfoDTO> appliedTaxesDTO,
  }) = _CartPricesDTO;

  factory CartPricesDTO.fromJson(Map<String, Object?> json) => _$CartPricesDTOFromJson(json);
}

@freezed
class CatalogDiscountAmountDTO with _$CatalogDiscountAmountDTO {
  const factory CatalogDiscountAmountDTO({
    required double value,
  }) = _CatalogDiscountAmountDTO;

  factory CatalogDiscountAmountDTO.fromJson(Map<String, Object?> json) => _$CatalogDiscountAmountDTOFromJson(json);
}

@freezed
class CartItemsDTO with _$CartItemsDTO {
  const factory CartItemsDTO({
    required double quantity,
    @JsonKey(name: 'uid') required String uid,
    required ProductsItemsDTO product,
    required CartItemsPricesDTO prices,
  }) = _CartItemsDTO;

  factory CartItemsDTO.fromJson(Map<String, Object?> json) => _$CartItemsDTOFromJson(json);
}

@freezed
class CartProductDTO with _$CartProductDTO {
  const factory CartProductDTO({
    required String name,
    required String sku,
    required ProductsImageDTO image,
    @JsonKey(name: "small_image") required ProductsImageDTO smallImage,
    @JsonKey(name: 'price_range') required PriceRangeDTO priceRange,
  }) = _CartProductDTO;

  factory CartProductDTO.fromJson(Map<String, Object?> json) => _$CartProductDTOFromJson(json);
}

@freezed
class PriceRangeDTO with _$PriceRangeDTO {
  const factory PriceRangeDTO({
    @JsonKey(name: 'maximum_price') required ItemPriceRangeDTO maximumPrice,
  }) = _PriceRangeDTO;

  factory PriceRangeDTO.fromJson(Map<String, Object?> json) => _$PriceRangeDTOFromJson(json);
}

@freezed
class ItemPriceRangeDTO with _$ItemPriceRangeDTO {
  const factory ItemPriceRangeDTO({
    @JsonKey(name: 'final_price') required MoneyDTO finalPrice,
    @JsonKey(name: 'regular_price') required MoneyDTO regularPrice,
    required DiscountDTO discount,
  }) = _ItemPriceRangeDTO;

  factory ItemPriceRangeDTO.fromJson(Map<String, Object?> json) => _$ItemPriceRangeDTOFromJson(json);
}

@freezed
class DiscountDTO with _$DiscountDTO {
  const factory DiscountDTO({
    @JsonKey(name: 'amount_off') required double amountOff,
  }) = _DiscountDTO;

  factory DiscountDTO.fromJson(Map<String, Object?> json) => _$DiscountDTOFromJson(json);
}

@freezed
class CartItemsPricesDTO with _$CartItemsPricesDTO {
  const factory CartItemsPricesDTO({
    required CartItemPriceDto price,
    @Default([]) @JsonKey(name: 'applied_taxes') List<AppliedTaxesDTO> appliedTaxes,
  }) = _CartItemsPricesDTO;

  factory CartItemsPricesDTO.fromJson(Map<String, Object?> json) => _$CartItemsPricesDTOFromJson(json);
}

@freezed
class AppliedTaxesDTO with _$AppliedTaxesDTO {
  const factory AppliedTaxesDTO({
    required String label,
    required MoneyDTO amount,
  }) = _AppliedTaxesDTO;

  factory AppliedTaxesDTO.fromJson(Map<String, Object?> json) => _$AppliedTaxesDTOFromJson(json);
}

@freezed
class CartItemPriceDto with _$CartItemPriceDto {
  const factory CartItemPriceDto({
    required double value,
    required String currency,
  }) = _CartItemPriceDto;

  factory CartItemPriceDto.fromJson(Map<String, Object?> json) => _$CartItemPriceDtoFromJson(json);
}

@freezed
class SelectedPaymentMethodDTO with _$SelectedPaymentMethodDTO {
  const factory SelectedPaymentMethodDTO({
    @Default('') String code,
  }) = _SelectedPaymentMethodDTO;

  factory SelectedPaymentMethodDTO.fromJson(Map<String, Object?> json) => _$SelectedPaymentMethodDTOFromJson(json);
}

@freezed
class BillingAddressOnCartDTO with _$BillingAddressOnCartDTO {
  const factory BillingAddressOnCartDTO({
    required String firstname,
    required String lastname,
    required List<String> street,
    required String city,
    required String telephone,
    String? postcode,
    required LocalizationItemDTO country,
    @JsonKey(name: 'city_custom') String? cityCustom,
    @JsonKey(name: 'state_custom') String? stateCustom,
    @JsonKey(name: 'zone_custom') String? zoneCustom,
  }) = _BillingAddressOnCartDTO;

  factory BillingAddressOnCartDTO.fromJson(Map<String, Object?> json) => _$BillingAddressOnCartDTOFromJson(json);
}
