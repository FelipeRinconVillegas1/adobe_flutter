// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer_tokens_dto.fr.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CustomerTokensDTOImpl _$$CustomerTokensDTOImplFromJson(
        Map<String, dynamic> json) =>
    _$CustomerTokensDTOImpl(
      token: json['token'] as String,
      refreshToken: json['refresh_token'] as String?,
    );

Map<String, dynamic> _$$CustomerTokensDTOImplToJson(
        _$CustomerTokensDTOImpl instance) =>
    <String, dynamic>{
      'token': instance.token,
      'refresh_token': instance.refreshToken,
    };
