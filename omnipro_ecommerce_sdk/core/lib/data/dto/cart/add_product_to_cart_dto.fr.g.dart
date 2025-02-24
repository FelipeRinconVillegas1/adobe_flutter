// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_product_to_cart_dto.fr.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AddProductToCartDTOImpl _$$AddProductToCartDTOImplFromJson(
  Map<String, dynamic> json,
) => _$AddProductToCartDTOImpl(
  cartId: json['cartId'] as String,
  cartItems: CartItemInputDTO.fromJson(
    json['cartItems'] as Map<String, dynamic>,
  ),
  omsOptions:
      json['oms_options'] == null
          ? null
          : AddToCartOmsOptionsDTO.fromJson(
            json['oms_options'] as Map<String, dynamic>,
          ),
);

Map<String, dynamic> _$$AddProductToCartDTOImplToJson(
  _$AddProductToCartDTOImpl instance,
) => <String, dynamic>{
  'cartId': instance.cartId,
  'cartItems': instance.cartItems,
  'oms_options': instance.omsOptions,
};
