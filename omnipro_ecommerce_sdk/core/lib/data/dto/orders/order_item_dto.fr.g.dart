// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_item_dto.fr.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OrderItemDTOImpl _$$OrderItemDTOImplFromJson(Map<String, dynamic> json) =>
    _$OrderItemDTOImpl(
      id: json['id'] as String,
      status: json['status'] as String,
      statusCode: json['status_code'] as String,
      editedAt: json['edited_at'] as String?,
      shippingMethod: json['shipping_method'] as String,
      number: json['order_number'] as String,
      carrier: json['carrier'] as String? ?? '',
      orderDate: json['order_date'] as String,
      total: OrderItemTotalDTO.fromJson(json['total'] as Map<String, dynamic>),
      shippingAddress: ShippingAddressOrderDTO.fromJson(
        json['shipping_address'] as Map<String, dynamic>,
      ),
      paymentMethods:
          (json['payment_methods'] as List<dynamic>)
              .map(
                (e) => OrderPaymentMethodItemDTO.fromJson(
                  e as Map<String, dynamic>,
                ),
              )
              .toList(),
      items:
          (json['items'] as List<dynamic>)
              .map((e) => ItemProductDTO.fromJson(e as Map<String, dynamic>))
              .toList(),
    );

Map<String, dynamic> _$$OrderItemDTOImplToJson(_$OrderItemDTOImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'status': instance.status,
      'status_code': instance.statusCode,
      'edited_at': instance.editedAt,
      'shipping_method': instance.shippingMethod,
      'order_number': instance.number,
      'carrier': instance.carrier,
      'order_date': instance.orderDate,
      'total': instance.total,
      'shipping_address': instance.shippingAddress,
      'payment_methods': instance.paymentMethods,
      'items': instance.items,
    };

_$ShippingAddressOrderDTOImpl _$$ShippingAddressOrderDTOImplFromJson(
  Map<String, dynamic> json,
) => _$ShippingAddressOrderDTOImpl(
  city: json['city'] as String,
  company: json['company'] as String?,
  countryCode: json['country_code'] as String,
  fax: json['fax'] as String?,
  firstname: json['firstname'] as String,
  lastname: json['lastname'] as String,
  postcode: json['postcode'] as String? ?? '',
  region: json['region'] as String,
  street: (json['street'] as List<dynamic>).map((e) => e as String).toList(),
  telephone: json['telephone'] as String,
);

Map<String, dynamic> _$$ShippingAddressOrderDTOImplToJson(
  _$ShippingAddressOrderDTOImpl instance,
) => <String, dynamic>{
  'city': instance.city,
  'company': instance.company,
  'country_code': instance.countryCode,
  'fax': instance.fax,
  'firstname': instance.firstname,
  'lastname': instance.lastname,
  'postcode': instance.postcode,
  'region': instance.region,
  'street': instance.street,
  'telephone': instance.telephone,
};

_$OrderPaymentMethodItemDTOImpl _$$OrderPaymentMethodItemDTOImplFromJson(
  Map<String, dynamic> json,
) => _$OrderPaymentMethodItemDTOImpl(
  name: json['name'] as String,
  type: json['type'] as String,
);

Map<String, dynamic> _$$OrderPaymentMethodItemDTOImplToJson(
  _$OrderPaymentMethodItemDTOImpl instance,
) => <String, dynamic>{'name': instance.name, 'type': instance.type};

_$OrderItemTotalDTOImpl _$$OrderItemTotalDTOImplFromJson(
  Map<String, dynamic> json,
) => _$OrderItemTotalDTOImpl(
  grandTotal: OrderItemGrandTotalDTO.fromJson(
    json['grand_total'] as Map<String, dynamic>,
  ),
  totalTax: MoneyDTO.fromJson(json['total_tax'] as Map<String, dynamic>),
  subTotal: MoneyDTO.fromJson(json['subtotal'] as Map<String, dynamic>),
  shippingHandling: OrderItemShippingHandlingDTO.fromJson(
    json['shipping_handling'] as Map<String, dynamic>,
  ),
  discounts:
      (json['discounts'] as List<dynamic>)
          .map((e) => MoneyInfoDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
);

Map<String, dynamic> _$$OrderItemTotalDTOImplToJson(
  _$OrderItemTotalDTOImpl instance,
) => <String, dynamic>{
  'grand_total': instance.grandTotal,
  'total_tax': instance.totalTax,
  'subtotal': instance.subTotal,
  'shipping_handling': instance.shippingHandling,
  'discounts': instance.discounts,
};

_$OrderItemShippingHandlingDTOImpl _$$OrderItemShippingHandlingDTOImplFromJson(
  Map<String, dynamic> json,
) => _$OrderItemShippingHandlingDTOImpl(
  amount: MoneyDTO.fromJson(json['total_amount'] as Map<String, dynamic>),
);

Map<String, dynamic> _$$OrderItemShippingHandlingDTOImplToJson(
  _$OrderItemShippingHandlingDTOImpl instance,
) => <String, dynamic>{'total_amount': instance.amount};

_$OrderItemGrandTotalDTOImpl _$$OrderItemGrandTotalDTOImplFromJson(
  Map<String, dynamic> json,
) => _$OrderItemGrandTotalDTOImpl(
  value: (json['value'] as num).toDouble(),
  currency: json['currency'] as String,
);

Map<String, dynamic> _$$OrderItemGrandTotalDTOImplToJson(
  _$OrderItemGrandTotalDTOImpl instance,
) => <String, dynamic>{'value': instance.value, 'currency': instance.currency};

_$ItemProductDTOImpl _$$ItemProductDTOImplFromJson(Map<String, dynamic> json) =>
    _$ItemProductDTOImpl(
      productName: json['product_name'] as String,
      productSku: json['product_sku'] as String,
      productUrlKey: json['product_url_key'] as String,
      quantityOrdered: (json['quantity_ordered'] as num).toDouble(),
      quantityInvoiced: (json['quantity_invoiced'] as num).toDouble(),
      quantityShipped: (json['quantity_shipped'] as num).toDouble(),
      eligibleForReturn: json['eligible_for_return'] as bool,
      productSalePrice: ProductSalePriceDTO.fromJson(
        json['product_sale_price'] as Map<String, dynamic>,
      ),
      salesUnitOfMeasure: json['sales_unit_of_measure'] as String? ?? '',
      productImage: json['product_image'] as String?,
      productTaxPrice: ProductTaxPriceDTO.fromJson(
        json['product_tax_price'] as Map<String, dynamic>,
      ),
      omsShippingDate: json['oms_shipping_date'] as String,
      omsShippingTime: json['oms_shipping_time'] as String,
      omsShippingMethod:
          json['oms_shipping_method'] == null
              ? null
              : ItemProductOmsShippingMethodDTO.fromJson(
                json['oms_shipping_method'] as Map<String, dynamic>,
              ),
    );

Map<String, dynamic> _$$ItemProductDTOImplToJson(
  _$ItemProductDTOImpl instance,
) => <String, dynamic>{
  'product_name': instance.productName,
  'product_sku': instance.productSku,
  'product_url_key': instance.productUrlKey,
  'quantity_ordered': instance.quantityOrdered,
  'quantity_invoiced': instance.quantityInvoiced,
  'quantity_shipped': instance.quantityShipped,
  'eligible_for_return': instance.eligibleForReturn,
  'product_sale_price': instance.productSalePrice,
  'sales_unit_of_measure': instance.salesUnitOfMeasure,
  'product_image': instance.productImage,
  'product_tax_price': instance.productTaxPrice,
  'oms_shipping_date': instance.omsShippingDate,
  'oms_shipping_time': instance.omsShippingTime,
  'oms_shipping_method': instance.omsShippingMethod,
};

_$ItemProductOmsShippingMethodDTOImpl
_$$ItemProductOmsShippingMethodDTOImplFromJson(Map<String, dynamic> json) =>
    _$ItemProductOmsShippingMethodDTOImpl(
      code: json['code'] as String? ?? "",
      name: json['name'] as String? ?? "",
    );

Map<String, dynamic> _$$ItemProductOmsShippingMethodDTOImplToJson(
  _$ItemProductOmsShippingMethodDTOImpl instance,
) => <String, dynamic>{'code': instance.code, 'name': instance.name};

_$ProductSalePriceDTOImpl _$$ProductSalePriceDTOImplFromJson(
  Map<String, dynamic> json,
) => _$ProductSalePriceDTOImpl(
  value: (json['value'] as num).toDouble(),
  currency: json['currency'] as String,
);

Map<String, dynamic> _$$ProductSalePriceDTOImplToJson(
  _$ProductSalePriceDTOImpl instance,
) => <String, dynamic>{'value': instance.value, 'currency': instance.currency};

_$ProductTaxPriceDTOImpl _$$ProductTaxPriceDTOImplFromJson(
  Map<String, dynamic> json,
) => _$ProductTaxPriceDTOImpl(
  value: (json['value'] as num).toDouble(),
  currency: json['currency'] as String,
);

Map<String, dynamic> _$$ProductTaxPriceDTOImplToJson(
  _$ProductTaxPriceDTOImpl instance,
) => <String, dynamic>{'value': instance.value, 'currency': instance.currency};
