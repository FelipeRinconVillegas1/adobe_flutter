// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_dto.fr.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CartDTOImpl _$$CartDTOImplFromJson(
  Map<String, dynamic> json,
) => _$CartDTOImpl(
  id: json['id'] as String,
  items:
      (json['items'] as List<dynamic>?)
          ?.map((e) => CartItemsDTO.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  email: json['email'] as String?,
  tip: (json['tip'] as num?)?.toDouble(),
  shippingAddresses:
      (json['shipping_addresses'] as List<dynamic>?)
          ?.map(
            (e) => ShippingAddressOnCartDTO.fromJson(e as Map<String, dynamic>),
          )
          .toList() ??
      const [],
  availablePaymentMethods:
      (json['available_payment_methods'] as List<dynamic>?)
          ?.map(
            (e) =>
                AvailablePaymentMethodDTO.fromJson(e as Map<String, dynamic>),
          )
          .toList() ??
      const [],
  billingAddress:
      json['billing_address'] == null
          ? null
          : BillingAddressOnCartDTO.fromJson(
            json['billing_address'] as Map<String, dynamic>,
          ),
  selectedPaymentMethod:
      json['selected_payment_method'] == null
          ? null
          : SelectedPaymentMethodDTO.fromJson(
            json['selected_payment_method'] as Map<String, dynamic>,
          ),
  appliedCoupons:
      (json['applied_coupons'] as List<dynamic>?)
          ?.map((e) => AppliedCouponDTO.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  prices: CartPricesDTO.fromJson(json['prices'] as Map<String, dynamic>),
);

Map<String, dynamic> _$$CartDTOImplToJson(_$CartDTOImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'items': instance.items,
      'email': instance.email,
      'tip': instance.tip,
      'shipping_addresses': instance.shippingAddresses,
      'available_payment_methods': instance.availablePaymentMethods,
      'billing_address': instance.billingAddress,
      'selected_payment_method': instance.selectedPaymentMethod,
      'applied_coupons': instance.appliedCoupons,
      'prices': instance.prices,
    };

_$AppliedCouponDTOImpl _$$AppliedCouponDTOImplFromJson(
  Map<String, dynamic> json,
) => _$AppliedCouponDTOImpl(code: json['code'] as String);

Map<String, dynamic> _$$AppliedCouponDTOImplToJson(
  _$AppliedCouponDTOImpl instance,
) => <String, dynamic>{'code': instance.code};

_$CartPricesDTOImpl _$$CartPricesDTOImplFromJson(Map<String, dynamic> json) =>
    _$CartPricesDTOImpl(
      grandTotalDTO: MoneyDTO.fromJson(
        json['grand_total'] as Map<String, dynamic>,
      ),
      catalogDiscountAmountDTO: CatalogDiscountAmountDTO.fromJson(
        json['catalog_discount_amount'] as Map<String, dynamic>,
      ),
      subtotalExcludingTaxDTO: MoneyDTO.fromJson(
        json['subtotal_excluding_tax'] as Map<String, dynamic>,
      ),
      discountsDTO:
          (json['discounts'] as List<dynamic>?)
              ?.map((e) => MoneyInfoDTO.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      appliedTaxesDTO:
          (json['applied_taxes'] as List<dynamic>?)
              ?.map((e) => MoneyInfoDTO.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$CartPricesDTOImplToJson(_$CartPricesDTOImpl instance) =>
    <String, dynamic>{
      'grand_total': instance.grandTotalDTO,
      'catalog_discount_amount': instance.catalogDiscountAmountDTO,
      'subtotal_excluding_tax': instance.subtotalExcludingTaxDTO,
      'discounts': instance.discountsDTO,
      'applied_taxes': instance.appliedTaxesDTO,
    };

_$CatalogDiscountAmountDTOImpl _$$CatalogDiscountAmountDTOImplFromJson(
  Map<String, dynamic> json,
) => _$CatalogDiscountAmountDTOImpl(value: (json['value'] as num).toDouble());

Map<String, dynamic> _$$CatalogDiscountAmountDTOImplToJson(
  _$CatalogDiscountAmountDTOImpl instance,
) => <String, dynamic>{'value': instance.value};

_$CartItemsDTOImpl _$$CartItemsDTOImplFromJson(
  Map<String, dynamic> json,
) => _$CartItemsDTOImpl(
  quantity: (json['quantity'] as num).toDouble(),
  uid: json['uid'] as String,
  product: ProductsItemsDTO.fromJson(json['product'] as Map<String, dynamic>),
  prices: CartItemsPricesDTO.fromJson(json['prices'] as Map<String, dynamic>),
);

Map<String, dynamic> _$$CartItemsDTOImplToJson(_$CartItemsDTOImpl instance) =>
    <String, dynamic>{
      'quantity': instance.quantity,
      'uid': instance.uid,
      'product': instance.product,
      'prices': instance.prices,
    };

_$CartProductDTOImpl _$$CartProductDTOImplFromJson(Map<String, dynamic> json) =>
    _$CartProductDTOImpl(
      name: json['name'] as String,
      sku: json['sku'] as String,
      image: ProductsImageDTO.fromJson(json['image'] as Map<String, dynamic>),
      smallImage: ProductsImageDTO.fromJson(
        json['small_image'] as Map<String, dynamic>,
      ),
      priceRange: PriceRangeDTO.fromJson(
        json['price_range'] as Map<String, dynamic>,
      ),
    );

Map<String, dynamic> _$$CartProductDTOImplToJson(
  _$CartProductDTOImpl instance,
) => <String, dynamic>{
  'name': instance.name,
  'sku': instance.sku,
  'image': instance.image,
  'small_image': instance.smallImage,
  'price_range': instance.priceRange,
};

_$PriceRangeDTOImpl _$$PriceRangeDTOImplFromJson(Map<String, dynamic> json) =>
    _$PriceRangeDTOImpl(
      maximumPrice: ItemPriceRangeDTO.fromJson(
        json['maximum_price'] as Map<String, dynamic>,
      ),
    );

Map<String, dynamic> _$$PriceRangeDTOImplToJson(_$PriceRangeDTOImpl instance) =>
    <String, dynamic>{'maximum_price': instance.maximumPrice};

_$ItemPriceRangeDTOImpl _$$ItemPriceRangeDTOImplFromJson(
  Map<String, dynamic> json,
) => _$ItemPriceRangeDTOImpl(
  finalPrice: MoneyDTO.fromJson(json['final_price'] as Map<String, dynamic>),
  regularPrice: MoneyDTO.fromJson(
    json['regular_price'] as Map<String, dynamic>,
  ),
  discount: DiscountDTO.fromJson(json['discount'] as Map<String, dynamic>),
);

Map<String, dynamic> _$$ItemPriceRangeDTOImplToJson(
  _$ItemPriceRangeDTOImpl instance,
) => <String, dynamic>{
  'final_price': instance.finalPrice,
  'regular_price': instance.regularPrice,
  'discount': instance.discount,
};

_$DiscountDTOImpl _$$DiscountDTOImplFromJson(Map<String, dynamic> json) =>
    _$DiscountDTOImpl(amountOff: (json['amount_off'] as num).toDouble());

Map<String, dynamic> _$$DiscountDTOImplToJson(_$DiscountDTOImpl instance) =>
    <String, dynamic>{'amount_off': instance.amountOff};

_$CartItemsPricesDTOImpl _$$CartItemsPricesDTOImplFromJson(
  Map<String, dynamic> json,
) => _$CartItemsPricesDTOImpl(
  price: CartItemPriceDto.fromJson(json['price'] as Map<String, dynamic>),
  appliedTaxes:
      (json['applied_taxes'] as List<dynamic>?)
          ?.map((e) => AppliedTaxesDTO.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
);

Map<String, dynamic> _$$CartItemsPricesDTOImplToJson(
  _$CartItemsPricesDTOImpl instance,
) => <String, dynamic>{
  'price': instance.price,
  'applied_taxes': instance.appliedTaxes,
};

_$AppliedTaxesDTOImpl _$$AppliedTaxesDTOImplFromJson(
  Map<String, dynamic> json,
) => _$AppliedTaxesDTOImpl(
  label: json['label'] as String,
  amount: MoneyDTO.fromJson(json['amount'] as Map<String, dynamic>),
);

Map<String, dynamic> _$$AppliedTaxesDTOImplToJson(
  _$AppliedTaxesDTOImpl instance,
) => <String, dynamic>{'label': instance.label, 'amount': instance.amount};

_$CartItemPriceDtoImpl _$$CartItemPriceDtoImplFromJson(
  Map<String, dynamic> json,
) => _$CartItemPriceDtoImpl(
  value: (json['value'] as num).toDouble(),
  currency: json['currency'] as String,
);

Map<String, dynamic> _$$CartItemPriceDtoImplToJson(
  _$CartItemPriceDtoImpl instance,
) => <String, dynamic>{'value': instance.value, 'currency': instance.currency};

_$SelectedPaymentMethodDTOImpl _$$SelectedPaymentMethodDTOImplFromJson(
  Map<String, dynamic> json,
) => _$SelectedPaymentMethodDTOImpl(code: json['code'] as String? ?? '');

Map<String, dynamic> _$$SelectedPaymentMethodDTOImplToJson(
  _$SelectedPaymentMethodDTOImpl instance,
) => <String, dynamic>{'code': instance.code};

_$BillingAddressOnCartDTOImpl _$$BillingAddressOnCartDTOImplFromJson(
  Map<String, dynamic> json,
) => _$BillingAddressOnCartDTOImpl(
  firstname: json['firstname'] as String,
  lastname: json['lastname'] as String,
  street: (json['street'] as List<dynamic>).map((e) => e as String).toList(),
  city: json['city'] as String,
  telephone: json['telephone'] as String,
  postcode: json['postcode'] as String?,
  country: LocalizationItemDTO.fromJson(
    json['country'] as Map<String, dynamic>,
  ),
  cityCustom: json['city_custom'] as String?,
  stateCustom: json['state_custom'] as String?,
  zoneCustom: json['zone_custom'] as String?,
);

Map<String, dynamic> _$$BillingAddressOnCartDTOImplToJson(
  _$BillingAddressOnCartDTOImpl instance,
) => <String, dynamic>{
  'firstname': instance.firstname,
  'lastname': instance.lastname,
  'street': instance.street,
  'city': instance.city,
  'telephone': instance.telephone,
  'postcode': instance.postcode,
  'country': instance.country,
  'city_custom': instance.cityCustom,
  'state_custom': instance.stateCustom,
  'zone_custom': instance.zoneCustom,
};
