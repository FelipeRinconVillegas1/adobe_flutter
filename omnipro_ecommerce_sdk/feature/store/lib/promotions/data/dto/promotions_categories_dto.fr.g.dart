// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'promotions_categories_dto.fr.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PromotionsCategoriesDTOImpl _$$PromotionsCategoriesDTOImplFromJson(
        Map<String, dynamic> json) =>
    _$PromotionsCategoriesDTOImpl(
      promotionsCategories: (json['promotionsCategories'] as List<dynamic>)
          .map(
              (e) => PromotionCategoriesDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$PromotionsCategoriesDTOImplToJson(
        _$PromotionsCategoriesDTOImpl instance) =>
    <String, dynamic>{
      'promotionsCategories': instance.promotionsCategories,
    };
