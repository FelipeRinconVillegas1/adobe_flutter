// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'services_health_home_dto.fr.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ServicesHealthHomeDTOImpl _$$ServicesHealthHomeDTOImplFromJson(
        Map<String, dynamic> json) =>
    _$ServicesHealthHomeDTOImpl(
      items: (json['items'] as List<dynamic>)
          .map((e) =>
              ItemsServicesHealthHomeDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ServicesHealthHomeDTOImplToJson(
        _$ServicesHealthHomeDTOImpl instance) =>
    <String, dynamic>{
      'items': instance.items,
    };

_$ItemsServicesHealthHomeDTOImpl _$$ItemsServicesHealthHomeDTOImplFromJson(
        Map<String, dynamic> json) =>
    _$ItemsServicesHealthHomeDTOImpl(
      title: json['title'] as String,
      urlImage: json['urlImage'] as String,
      type: $enumDecode(_$ItemTypeDTOEnumMap, json['type']),
      preference: json['preference'] as int,
      categoryName: json['categoryName'] as String,
      label1Eng: json['label1Eng'] as String,
      label1Spn: json['label1Spn'] as String,
      label2Eng: json['label2Eng'] as String,
      label2Spn: json['label2Spn'] as String,
      url: json['url'] as String,
    );

Map<String, dynamic> _$$ItemsServicesHealthHomeDTOImplToJson(
        _$ItemsServicesHealthHomeDTOImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'urlImage': instance.urlImage,
      'type': _$ItemTypeDTOEnumMap[instance.type]!,
      'preference': instance.preference,
      'categoryName': instance.categoryName,
      'label1Eng': instance.label1Eng,
      'label1Spn': instance.label1Spn,
      'label2Eng': instance.label2Eng,
      'label2Spn': instance.label2Spn,
      'url': instance.url,
    };

const _$ItemTypeDTOEnumMap = {
  ItemTypeDTO.url: 'url',
  ItemTypeDTO.category: 'category',
  ItemTypeDTO.inApp: 'inApp',
};
