// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'instaleap_availability_response_dto.fr.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$InstaleapAvailabilityResponseDTOImpl
_$$InstaleapAvailabilityResponseDTOImplFromJson(Map<String, dynamic> json) =>
    _$InstaleapAvailabilityResponseDTOImpl(
      description: json['description'] as String,
      expiresAt: json['expires_at'] as String,
      from: json['from'] as String,
      to: json['to'] as String,
      id: json['id'] as String,
      operationalModel: json['operational_model'] as String,
      shippingFee: json['shipping_fee'] as bool,
      store: InstaleapStoreDTO.fromJson(json['store'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$InstaleapAvailabilityResponseDTOImplToJson(
  _$InstaleapAvailabilityResponseDTOImpl instance,
) => <String, dynamic>{
  'description': instance.description,
  'expires_at': instance.expiresAt,
  'from': instance.from,
  'to': instance.to,
  'id': instance.id,
  'operational_model': instance.operationalModel,
  'shipping_fee': instance.shippingFee,
  'store': instance.store,
};

_$InstaleapStoreDTOImpl _$$InstaleapStoreDTOImplFromJson(
  Map<String, dynamic> json,
) => _$InstaleapStoreDTOImpl(
  id: json['id'] as String,
  name: json['name'] as String,
);

Map<String, dynamic> _$$InstaleapStoreDTOImplToJson(
  _$InstaleapStoreDTOImpl instance,
) => <String, dynamic>{'id': instance.id, 'name': instance.name};
