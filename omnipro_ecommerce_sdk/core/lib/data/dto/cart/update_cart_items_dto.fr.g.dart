// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_cart_items_dto.fr.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CartItemUpdateInputDTOImpl _$$CartItemUpdateInputDTOImplFromJson(
  Map<String, dynamic> json,
) => _$CartItemUpdateInputDTOImpl(
  cartItemUid: json['cart_item_uid'] as String,
  quantity: (json['quantity'] as num).toDouble(),
  price: (json['price'] as num).toDouble(),
  sku: json['sku'] as String,
);

Map<String, dynamic> _$$CartItemUpdateInputDTOImplToJson(
  _$CartItemUpdateInputDTOImpl instance,
) => <String, dynamic>{
  'cart_item_uid': instance.cartItemUid,
  'quantity': instance.quantity,
};
