// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'instaleap_availability_response.fr.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$InstaleapAvailabilityResponseImpl
_$$InstaleapAvailabilityResponseImplFromJson(Map<String, dynamic> json) =>
    _$InstaleapAvailabilityResponseImpl(
      description: json['description'] as String,
      expiresAt: json['expires_at'] as String,
      from: json['from'] as String,
      to: json['to'] as String,
      id: json['id'] as String,
      operationalModel: json['operational_model'] as String,
      shippingFee: json['shipping_fee'] as bool,
      store: InstaleapStore.fromJson(json['store'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$InstaleapAvailabilityResponseImplToJson(
  _$InstaleapAvailabilityResponseImpl instance,
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

_$InstaleapStoreImpl _$$InstaleapStoreImplFromJson(Map<String, dynamic> json) =>
    _$InstaleapStoreImpl(
      id: json['id'] as String,
      name: json['name'] as String,
    );

Map<String, dynamic> _$$InstaleapStoreImplToJson(
  _$InstaleapStoreImpl instance,
) => <String, dynamic>{'id': instance.id, 'name': instance.name};
