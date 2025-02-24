// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'server_config_dto.fr.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ServerConfigDtoImpl _$$ServerConfigDtoImplFromJson(
  Map<String, dynamic> json,
) => _$ServerConfigDtoImpl(
  serverUrls: Map<String, String>.from(json['service_urls'] as Map),
);

Map<String, dynamic> _$$ServerConfigDtoImplToJson(
  _$ServerConfigDtoImpl instance,
) => <String, dynamic>{'service_urls': instance.serverUrls};
