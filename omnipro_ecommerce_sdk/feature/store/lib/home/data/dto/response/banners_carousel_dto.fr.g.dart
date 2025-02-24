// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'banners_carousel_dto.fr.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BannersCarouselDTOImpl _$$BannersCarouselDTOImplFromJson(
        Map<String, dynamic> json) =>
    _$BannersCarouselDTOImpl(
      items: (json['items'] as List<dynamic>)
          .map((e) => BannerCarouselDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$BannersCarouselDTOImplToJson(
        _$BannersCarouselDTOImpl instance) =>
    <String, dynamic>{
      'items': instance.items,
    };

_$BannerCarouselDTOImpl _$$BannerCarouselDTOImplFromJson(
        Map<String, dynamic> json) =>
    _$BannerCarouselDTOImpl(
      title: json['title'] as String,
      urlImage: json['image'] as String,
      type: $enumDecode(_$ItemTypeDTOEnumMap, json['type']),
      preference: json['preference'] as int,
      promotion: json['promotion'] as String?,
      listUidSubcategory: (json['listUidSubcategory'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      uidCategory: json['uidCategory'] as String,
      label1Eng: json['label1Eng'] as String,
      label1Spn: json['label1Spn'] as String,
      label2Eng: json['label2Eng'] as String,
      label2Spn: json['label2Spn'] as String,
      url: json['url'] as String,
      moduleInApp: json['module'] as String,
      skus: json['skus'] as String,
    );

Map<String, dynamic> _$$BannerCarouselDTOImplToJson(
        _$BannerCarouselDTOImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'image': instance.urlImage,
      'type': _$ItemTypeDTOEnumMap[instance.type]!,
      'preference': instance.preference,
      'promotion': instance.promotion,
      'listUidSubcategory': instance.listUidSubcategory,
      'uidCategory': instance.uidCategory,
      'label1Eng': instance.label1Eng,
      'label1Spn': instance.label1Spn,
      'label2Eng': instance.label2Eng,
      'label2Spn': instance.label2Spn,
      'url': instance.url,
      'module': instance.moduleInApp,
      'skus': instance.skus,
    };

const _$ItemTypeDTOEnumMap = {
  ItemTypeDTO.advertisement: 'advertisement',
  ItemTypeDTO.product: 'product',
  ItemTypeDTO.promotion: 'promotion',
  ItemTypeDTO.url: 'url',
  ItemTypeDTO.category: 'category',
  ItemTypeDTO.inApp: 'inApp',
};
