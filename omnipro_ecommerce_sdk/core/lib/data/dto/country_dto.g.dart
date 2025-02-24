// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'country_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CountryDTO _$CountryDTOFromJson(Map<String, dynamic> json) => CountryDTO(
  name: json['name'] as String,
  dialCode: json['dial_code'] as String,
  code: json['code'] as String,
);

Map<String, dynamic> _$CountryDTOToJson(CountryDTO instance) =>
    <String, dynamic>{
      'name': instance.name,
      'dial_code': instance.dialCode,
      'code': instance.code,
    };
