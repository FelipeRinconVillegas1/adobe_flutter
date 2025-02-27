// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'job_availability_response.fr.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$JobAvailabilityResponseImpl _$$JobAvailabilityResponseImplFromJson(
  Map<String, dynamic> json,
) => _$JobAvailabilityResponseImpl(
  id: json['id'] as String,
  from: json['from'] as String,
  to: json['to'] as String,
  store: Store.fromJson(json['store'] as Map<String, dynamic>),
  description: json['description'] as String,
  operationalModel: json['operationalModel'] as String,
  expiresAt: json['expiresAt'] as String,
);

Map<String, dynamic> _$$JobAvailabilityResponseImplToJson(
  _$JobAvailabilityResponseImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'from': instance.from,
  'to': instance.to,
  'store': instance.store,
  'description': instance.description,
  'operationalModel': instance.operationalModel,
  'expiresAt': instance.expiresAt,
};

_$StoreImpl _$$StoreImplFromJson(Map<String, dynamic> json) =>
    _$StoreImpl(id: json['id'] as String, name: json['name'] as String);

Map<String, dynamic> _$$StoreImplToJson(_$StoreImpl instance) =>
    <String, dynamic>{'id': instance.id, 'name': instance.name};
