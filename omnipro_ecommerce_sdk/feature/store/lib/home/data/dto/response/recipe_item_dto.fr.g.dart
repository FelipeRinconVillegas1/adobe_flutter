// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recipe_item_dto.fr.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RecipeItemDTOImpl _$$RecipeItemDTOImplFromJson(Map<String, dynamic> json) =>
    _$RecipeItemDTOImpl(
      name: json['name'] as String,
      image: json['image'] as String,
      sku: json['sku'] as String,
      productLink: json['product_link'] as String,
    );

Map<String, dynamic> _$$RecipeItemDTOImplToJson(_$RecipeItemDTOImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'image': instance.image,
      'sku': instance.sku,
      'product_link': instance.productLink,
    };
