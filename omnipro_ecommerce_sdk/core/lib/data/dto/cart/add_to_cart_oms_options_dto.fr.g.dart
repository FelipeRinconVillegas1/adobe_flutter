// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_to_cart_oms_options_dto.fr.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AddToCartOmsOptionsDTOImpl _$$AddToCartOmsOptionsDTOImplFromJson(
  Map<String, dynamic> json,
) => _$AddToCartOmsOptionsDTOImpl(
  omsCid: json['oms_cid'] as String,
  omsCode: json['oms_code'] as String,
  omsNotes: json['oms_notes'] as String? ?? '',
  omsShippingMethod: json['oms_shipping_method'] as String,
  omsStoreName: json['oms_store_name'] as String?,
);

Map<String, dynamic> _$$AddToCartOmsOptionsDTOImplToJson(
  _$AddToCartOmsOptionsDTOImpl instance,
) => <String, dynamic>{
  'oms_cid': instance.omsCid,
  'oms_code': instance.omsCode,
  'oms_notes': instance.omsNotes,
  'oms_shipping_method': instance.omsShippingMethod,
  'oms_store_name': instance.omsStoreName,
};
