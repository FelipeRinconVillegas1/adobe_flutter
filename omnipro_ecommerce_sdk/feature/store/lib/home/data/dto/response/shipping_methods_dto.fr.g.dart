// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shipping_methods_dto.fr.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ShippingMethodsDTOImpl _$$ShippingMethodsDTOImplFromJson(
        Map<String, dynamic> json) =>
    _$ShippingMethodsDTOImpl(
      getEnabledShippingMethods: (json['getEnabledShippingMethods']
              as List<dynamic>)
          .map((e) => ShippingMethodIemDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ShippingMethodsDTOImplToJson(
        _$ShippingMethodsDTOImpl instance) =>
    <String, dynamic>{
      'getEnabledShippingMethods': instance.getEnabledShippingMethods,
    };

_$ShippingMethodIemDTOImpl _$$ShippingMethodIemDTOImplFromJson(
        Map<String, dynamic> json) =>
    _$ShippingMethodIemDTOImpl(
      methodCode: json['method_code'] as String,
      methodLabel: json['method_label'] as String,
      image: json['image'] as String?,
    );

Map<String, dynamic> _$$ShippingMethodIemDTOImplToJson(
        _$ShippingMethodIemDTOImpl instance) =>
    <String, dynamic>{
      'method_code': instance.methodCode,
      'method_label': instance.methodLabel,
      'image': instance.image,
    };
