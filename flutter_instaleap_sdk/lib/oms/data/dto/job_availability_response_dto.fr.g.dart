// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'job_availability_response_dto.fr.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$JobAvailabilityResponseDTOImpl _$$JobAvailabilityResponseDTOImplFromJson(
  Map<String, dynamic> json,
) => _$JobAvailabilityResponseDTOImpl(
  id: json['id'] as String,
  from: json['from'] as String,
  to: json['to'] as String,
  store: StoreDTO.fromJson(json['store'] as Map<String, dynamic>),
  description: json['description'] as String,
  operationalModel: json['operationalModel'] as String,
  expiresAt: json['expiresAt'] as String,
);

Map<String, dynamic> _$$JobAvailabilityResponseDTOImplToJson(
  _$JobAvailabilityResponseDTOImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'from': instance.from,
  'to': instance.to,
  'store': instance.store,
  'description': instance.description,
  'operationalModel': instance.operationalModel,
  'expiresAt': instance.expiresAt,
};

_$StoreDTOImpl _$$StoreDTOImplFromJson(Map<String, dynamic> json) =>
    _$StoreDTOImpl(id: json['id'] as String, name: json['name'] as String);

Map<String, dynamic> _$$StoreDTOImplToJson(_$StoreDTOImpl instance) =>
    <String, dynamic>{'id': instance.id, 'name': instance.name};
