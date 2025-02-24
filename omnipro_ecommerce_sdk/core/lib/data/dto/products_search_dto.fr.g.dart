// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'products_search_dto.fr.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductsSearchDTOImpl _$$ProductsSearchDTOImplFromJson(
  Map<String, dynamic> json,
) => _$ProductsSearchDTOImpl(
  items:
      (json['items'] as List<dynamic>)
          .map(
            (e) => ProductsItemsSearchDTO.fromJson(e as Map<String, dynamic>),
          )
          .toList(),
  totalCount: (json['total_count'] as num).toInt(),
);

Map<String, dynamic> _$$ProductsSearchDTOImplToJson(
  _$ProductsSearchDTOImpl instance,
) => <String, dynamic>{
  'items': instance.items,
  'total_count': instance.totalCount,
};

_$ProductsItemsSearchDTOImpl _$$ProductsItemsSearchDTOImplFromJson(
  Map<String, dynamic> json,
) => _$ProductsItemsSearchDTOImpl(
  id: (json['id'] as num).toInt(),
  name: json['name'] as String,
  sku: json['sku'] as String,
  description:
      json['description'] == null
          ? null
          : ProductsDescriptionSearchDTO.fromJson(
            json['description'] as Map<String, dynamic>,
          ),
  shortDescription:
      json['short_description'] == null
          ? null
          : ProductsDescriptionSearchDTO.fromJson(
            json['short_description'] as Map<String, dynamic>,
          ),
  image: ProductsImageSearchDTO.fromJson(json['image'] as Map<String, dynamic>),
  smallImage:
      json['small_image'] == null
          ? null
          : ProductsImageSearchDTO.fromJson(
            json['small_image'] as Map<String, dynamic>,
          ),
  thumbnail:
      json['thumbnail'] == null
          ? null
          : ProductsImageSearchDTO.fromJson(
            json['thumbnail'] as Map<String, dynamic>,
          ),
  isSalable: json['is_salable'] as bool?,
  ratingSummary: (json['rating_summary'] as num?)?.toInt(),
  reviewsCount: (json['reviews_count'] as num?)?.toInt(),
  urlKey: json['url_key'] as String?,
  urlSuffix: json['url_suffix'] as String?,
  urlPath: json['url_path'] as String?,
  specialPrice: (json['special_price'] as num?)?.toDouble(),
  specialFromDate: json['special_from_date'] as String?,
  specialToDate: json['special_to_date'] as String?,
  attributeSetId: (json['attribute_set_id'] as num?)?.toInt(),
  metaTitle: json['meta_title'] as String?,
  metaKeyword: json['meta_keyword'] as String?,
  metaDescription: json['meta_description'] as String?,
  newFromDate: json['new_from_date'] as String?,
  newToDate: json['new_to_date'] as String?,
  tierPrice: (json['tier_price'] as num?)?.toDouble(),
  optionsContainer: json['options_container'] as String?,
  createdAt: json['created_at'] as String?,
  updatedAt: json['updated_at'] as String?,
  typeId: json['type_id'] as String?,
  priceRange:
      json['price_range'] == null
          ? null
          : ProductsSearchPriceRangeDTO.fromJson(
            json['price_range'] as Map<String, dynamic>,
          ),
  canonicalUrl: json['canonical_url'] as String?,
);

Map<String, dynamic> _$$ProductsItemsSearchDTOImplToJson(
  _$ProductsItemsSearchDTOImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'sku': instance.sku,
  'description': instance.description?.toJson(),
  'short_description': instance.shortDescription?.toJson(),
  'image': instance.image.toJson(),
  'small_image': instance.smallImage?.toJson(),
  'thumbnail': instance.thumbnail?.toJson(),
  'is_salable': instance.isSalable,
  'rating_summary': instance.ratingSummary,
  'reviews_count': instance.reviewsCount,
  'url_key': instance.urlKey,
  'url_suffix': instance.urlSuffix,
  'url_path': instance.urlPath,
  'special_price': instance.specialPrice,
  'special_from_date': instance.specialFromDate,
  'special_to_date': instance.specialToDate,
  'attribute_set_id': instance.attributeSetId,
  'meta_title': instance.metaTitle,
  'meta_keyword': instance.metaKeyword,
  'meta_description': instance.metaDescription,
  'new_from_date': instance.newFromDate,
  'new_to_date': instance.newToDate,
  'tier_price': instance.tierPrice,
  'options_container': instance.optionsContainer,
  'created_at': instance.createdAt,
  'updated_at': instance.updatedAt,
  'type_id': instance.typeId,
  'price_range': instance.priceRange?.toJson(),
  'canonical_url': instance.canonicalUrl,
};

_$ProductsSearchPriceRangeDTOImpl _$$ProductsSearchPriceRangeDTOImplFromJson(
  Map<String, dynamic> json,
) => _$ProductsSearchPriceRangeDTOImpl(
  minimumPrice:
      json['minimum_price'] == null
          ? null
          : ProductsSearchOptionPriceDTO.fromJson(
            json['minimum_price'] as Map<String, dynamic>,
          ),
  maximumPrice:
      json['maximum_price'] == null
          ? null
          : ProductsSearchOptionPriceDTO.fromJson(
            json['maximum_price'] as Map<String, dynamic>,
          ),
);

Map<String, dynamic> _$$ProductsSearchPriceRangeDTOImplToJson(
  _$ProductsSearchPriceRangeDTOImpl instance,
) => <String, dynamic>{
  'minimum_price': instance.minimumPrice,
  'maximum_price': instance.maximumPrice,
};

_$ProductsSearchOptionPriceDTOImpl _$$ProductsSearchOptionPriceDTOImplFromJson(
  Map<String, dynamic> json,
) => _$ProductsSearchOptionPriceDTOImpl(
  finalPrice: ProductsSearchDetailPriceDTO.fromJson(
    json['final_price'] as Map<String, dynamic>,
  ),
  regularPrice: ProductsSearchDetailPriceDTO.fromJson(
    json['regular_price'] as Map<String, dynamic>,
  ),
);

Map<String, dynamic> _$$ProductsSearchOptionPriceDTOImplToJson(
  _$ProductsSearchOptionPriceDTOImpl instance,
) => <String, dynamic>{
  'final_price': instance.finalPrice,
  'regular_price': instance.regularPrice,
};

_$ProductsSearchDetailPriceDTOImpl _$$ProductsSearchDetailPriceDTOImplFromJson(
  Map<String, dynamic> json,
) => _$ProductsSearchDetailPriceDTOImpl(
  value: (json['value'] as num).toDouble(),
  currency: json['currency'] as String,
);

Map<String, dynamic> _$$ProductsSearchDetailPriceDTOImplToJson(
  _$ProductsSearchDetailPriceDTOImpl instance,
) => <String, dynamic>{'value': instance.value, 'currency': instance.currency};

_$ProductsImageSearchDTOImpl _$$ProductsImageSearchDTOImplFromJson(
  Map<String, dynamic> json,
) => _$ProductsImageSearchDTOImpl(
  label: json['label'] as String,
  url: json['url'] as String?,
);

Map<String, dynamic> _$$ProductsImageSearchDTOImplToJson(
  _$ProductsImageSearchDTOImpl instance,
) => <String, dynamic>{'label': instance.label, 'url': instance.url};

_$ProductsDescriptionSearchDTOImpl _$$ProductsDescriptionSearchDTOImplFromJson(
  Map<String, dynamic> json,
) => _$ProductsDescriptionSearchDTOImpl(html: json['html'] as String);

Map<String, dynamic> _$$ProductsDescriptionSearchDTOImplToJson(
  _$ProductsDescriptionSearchDTOImpl instance,
) => <String, dynamic>{'html': instance.html};
