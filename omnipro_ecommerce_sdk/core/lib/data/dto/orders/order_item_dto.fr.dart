import 'package:core/data/dto/money_dto.fr.dart';
import 'package:core/data/dto/money_info_dto.fr.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_item_dto.fr.freezed.dart';

part 'order_item_dto.fr.g.dart';

@freezed
class OrderItemDTO with _$OrderItemDTO {
  const factory OrderItemDTO(
      {required String id,
      required String status,
      @JsonKey(name: 'status_code') required String statusCode,
      @JsonKey(name: 'edited_at') String? editedAt,
      @JsonKey(name: 'shipping_method') required String shippingMethod,
      @JsonKey(name: 'order_number') required String number,
      @Default('') String carrier,
      @JsonKey(name: 'order_date') required String orderDate,
      required OrderItemTotalDTO total,
      @JsonKey(name: 'shipping_address') required ShippingAddressOrderDTO shippingAddress,
      @JsonKey(name: 'payment_methods') required List<OrderPaymentMethodItemDTO> paymentMethods,
      required List<ItemProductDTO> items}) = _OrderItemDTO;

  factory OrderItemDTO.fromJson(Map<String, Object?> json) => _$OrderItemDTOFromJson(json);
}

@freezed
class ShippingAddressOrderDTO with _$ShippingAddressOrderDTO {
  const factory ShippingAddressOrderDTO({
    required String city,
    String? company,
    @JsonKey(name: 'country_code') required String countryCode,
    String? fax,
    required String firstname,
    required String lastname,
    @Default('') String postcode,
    required String region,
    required List<String> street,
    required String telephone,
  }) = _ShippingAddressOrderDTO;

  factory ShippingAddressOrderDTO.fromJson(Map<String, dynamic> json) => _$ShippingAddressOrderDTOFromJson(json);
}

@freezed
class OrderPaymentMethodItemDTO with _$OrderPaymentMethodItemDTO {
  const factory OrderPaymentMethodItemDTO({
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'type') required String type,
  }) = _OrderPaymentMethodItemDTO;

  factory OrderPaymentMethodItemDTO.fromJson(Map<String, Object?> json) => _$OrderPaymentMethodItemDTOFromJson(json);
}

@freezed
class OrderItemTotalDTO with _$OrderItemTotalDTO {
  const factory OrderItemTotalDTO({
    @JsonKey(name: 'grand_total') required OrderItemGrandTotalDTO grandTotal,
    @JsonKey(name: 'total_tax') required MoneyDTO totalTax,
    @JsonKey(name: 'subtotal') required MoneyDTO subTotal,
    @JsonKey(name: 'shipping_handling') required OrderItemShippingHandlingDTO shippingHandling,
    required List<MoneyInfoDTO> discounts,
  }) = _OrderItemTotalDTO;

  factory OrderItemTotalDTO.fromJson(Map<String, Object?> json) => _$OrderItemTotalDTOFromJson(json);
}

@freezed
class OrderItemShippingHandlingDTO with _$OrderItemShippingHandlingDTO {
  const factory OrderItemShippingHandlingDTO({
    @JsonKey(name: 'total_amount') required MoneyDTO amount,
  }) = _OrderItemShippingHandlingDTO;

  factory OrderItemShippingHandlingDTO.fromJson(Map<String, Object?> json) =>
      _$OrderItemShippingHandlingDTOFromJson(json);
}

@freezed
class OrderItemGrandTotalDTO with _$OrderItemGrandTotalDTO {
  const factory OrderItemGrandTotalDTO({
    required double value,
    required String currency,
  }) = _OrderItemGrandTotalDTO;

  factory OrderItemGrandTotalDTO.fromJson(Map<String, Object?> json) => _$OrderItemGrandTotalDTOFromJson(json);
}

@freezed
class ItemProductDTO with _$ItemProductDTO {
  const factory ItemProductDTO({
    @JsonKey(name: 'product_name') required String productName,
    @JsonKey(name: 'product_sku') required String productSku,
    @JsonKey(name: 'product_url_key') required String productUrlKey,
    @JsonKey(name: 'quantity_ordered') required double quantityOrdered,
    @JsonKey(name: 'quantity_invoiced') required double quantityInvoiced,
    @JsonKey(name: 'quantity_shipped') required double quantityShipped,
    @JsonKey(name: 'eligible_for_return') required bool eligibleForReturn,
    @JsonKey(name: 'product_sale_price') required ProductSalePriceDTO productSalePrice,
    @JsonKey(name: 'sales_unit_of_measure', defaultValue: '') required String salesUnitOfMeasure,
    @JsonKey(name: 'product_image') String? productImage,
    @JsonKey(name: 'product_tax_price') required ProductTaxPriceDTO productTaxPrice,
    @JsonKey(name: 'oms_shipping_date') required String omsShippingDate,
    @JsonKey(name: 'oms_shipping_time') required String omsShippingTime,
    @JsonKey(name: 'oms_shipping_method') ItemProductOmsShippingMethodDTO? omsShippingMethod,
  }) = _ItemProductDTO;

  factory ItemProductDTO.fromJson(Map<String, Object?> json) => _$ItemProductDTOFromJson(json);
}

@freezed
class ItemProductOmsShippingMethodDTO with _$ItemProductOmsShippingMethodDTO {
  const factory ItemProductOmsShippingMethodDTO({
    @Default("") String code,
    @Default("") String name,
  }) = _ItemProductOmsShippingMethodDTO;

  factory ItemProductOmsShippingMethodDTO.fromJson(Map<String, Object?> json) =>
      _$ItemProductOmsShippingMethodDTOFromJson(json);
}

@freezed
class ProductSalePriceDTO with _$ProductSalePriceDTO {
  const factory ProductSalePriceDTO({
    required double value,
    required String currency,
  }) = _ProductSalePriceDTO;

  factory ProductSalePriceDTO.fromJson(Map<String, Object?> json) => _$ProductSalePriceDTOFromJson(json);
}

@freezed
class ProductTaxPriceDTO with _$ProductTaxPriceDTO {
  const factory ProductTaxPriceDTO({
    required double value,
    required String currency,
  }) = _ProductTaxPriceDTO;

  factory ProductTaxPriceDTO.fromJson(Map<String, Object?> json) => _$ProductTaxPriceDTOFromJson(json);
}
