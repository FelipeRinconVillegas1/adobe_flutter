// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'state_dto.fr.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StateDTOImpl _$$StateDTOImplFromJson(Map<String, dynamic> json) =>
    _$StateDTOImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      code: json['code'] as String,
    );

Map<String, dynamic> _$$StateDTOImplToJson(_$StateDTOImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'code': instance.code,
    };
