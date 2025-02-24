// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shipping_methods_dto.fr.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ShippingMethodsDTOImpl _$$ShippingMethodsDTOImplFromJson(
  Map<String, dynamic> json,
) => _$ShippingMethodsDTOImpl(
  items:
      (json['items'] as List<dynamic>)
          .map((e) => ShippingMethodItemDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
);

Map<String, dynamic> _$$ShippingMethodsDTOImplToJson(
  _$ShippingMethodsDTOImpl instance,
) => <String, dynamic>{'items': instance.items};

_$ShippingMethodIemDTOImpl _$$ShippingMethodIemDTOImplFromJson(
  Map<String, dynamic> json,
) => _$ShippingMethodIemDTOImpl(
  code: json['code'] as String,
  name: json['name'] as String,
  message: json['message'] as String,
);

Map<String, dynamic> _$$ShippingMethodIemDTOImplToJson(
  _$ShippingMethodIemDTOImpl instance,
) => <String, dynamic>{
  'code': instance.code,
  'name': instance.name,
  'message': instance.message,
};
