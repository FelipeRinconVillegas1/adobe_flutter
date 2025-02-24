// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'promotion_categories_dto.fr.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PromotionCategoriesDTOImpl _$$PromotionCategoriesDTOImplFromJson(
        Map<String, dynamic> json) =>
    _$PromotionCategoriesDTOImpl(
      name: json['name'] as String,
      description: json['description'] as String?,
      urlImag: json['urlImag'] as String,
      categoryId: json['categoryId'] as int,
    );

Map<String, dynamic> _$$PromotionCategoriesDTOImplToJson(
        _$PromotionCategoriesDTOImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'urlImag': instance.urlImag,
      'categoryId': instance.categoryId,
    };
