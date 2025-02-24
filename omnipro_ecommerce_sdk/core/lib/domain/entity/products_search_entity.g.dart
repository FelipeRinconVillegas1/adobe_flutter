// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'products_search_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductsSearchImpl _$$ProductsSearchImplFromJson(Map<String, dynamic> json) =>
    _$ProductsSearchImpl(
      items:
          (json['items'] as List<dynamic>?)
              ?.map(
                (e) => ProductsSearchItems.fromJson(e as Map<String, dynamic>),
              )
              .toList() ??
          const [],
      totalCount: (json['totalCount'] as num).toInt(),
    );

Map<String, dynamic> _$$ProductsSearchImplToJson(
  _$ProductsSearchImpl instance,
) => <String, dynamic>{
  'items': instance.items,
  'totalCount': instance.totalCount,
};

_$ProductsSearchItemsImpl _$$ProductsSearchItemsImplFromJson(
  Map<String, dynamic> json,
) => _$ProductsSearchItemsImpl(
  name: json['name'] as String,
  sku: json['sku'] as String,
  id: (json['id'] as num).toInt(),
  labels: (json['labels'] as List<dynamic>?)?.map((e) => e as String).toList(),
  type: json['type'] as String?,
  urlKey: json['urlKey'] as String?,
  specialPrice: (json['specialPrice'] as num?)?.toDouble(),
  image: ProductsSearchImage.fromJson(json['image'] as Map<String, dynamic>),
  smallImage:
      json['smallImage'] == null
          ? null
          : ProductsSearchImage.fromJson(
            json['smallImage'] as Map<String, dynamic>,
          ),
  ratingSummary: (json['ratingSummary'] as num?)?.toInt(),
  reviewsCount: (json['reviewsCount'] as num?)?.toInt(),
  isSalable: json['isSalable'] as bool?,
  priceRange:
      json['priceRange'] == null
          ? null
          : ProductsSearchPriceRange.fromJson(
            json['priceRange'] as Map<String, dynamic>,
          ),
);

Map<String, dynamic> _$$ProductsSearchItemsImplToJson(
  _$ProductsSearchItemsImpl instance,
) => <String, dynamic>{
  'name': instance.name,
  'sku': instance.sku,
  'id': instance.id,
  'labels': instance.labels,
  'type': instance.type,
  'urlKey': instance.urlKey,
  'specialPrice': instance.specialPrice,
  'image': instance.image.toJson(),
  'smallImage': instance.smallImage?.toJson(),
  'ratingSummary': instance.ratingSummary,
  'reviewsCount': instance.reviewsCount,
  'isSalable': instance.isSalable,
  'priceRange': instance.priceRange?.toJson(),
};

_$ProductsSearchPriceRangeImpl _$$ProductsSearchPriceRangeImplFromJson(
  Map<String, dynamic> json,
) => _$ProductsSearchPriceRangeImpl(
  minimumPrice:
      json['minimumPrice'] == null
          ? null
          : ProductsSearchOptionPrice.fromJson(
            json['minimumPrice'] as Map<String, dynamic>,
          ),
  maximumPrice:
      json['maximumPrice'] == null
          ? null
          : ProductsSearchOptionPrice.fromJson(
            json['maximumPrice'] as Map<String, dynamic>,
          ),
);

Map<String, dynamic> _$$ProductsSearchPriceRangeImplToJson(
  _$ProductsSearchPriceRangeImpl instance,
) => <String, dynamic>{
  'minimumPrice': instance.minimumPrice,
  'maximumPrice': instance.maximumPrice,
};

_$ProductsSearchOptionPriceImpl _$$ProductsSearchOptionPriceImplFromJson(
  Map<String, dynamic> json,
) => _$ProductsSearchOptionPriceImpl(
  finalPrice: Money.fromJson(json['finalPrice'] as Map<String, dynamic>),
  regularPrice: Money.fromJson(json['regularPrice'] as Map<String, dynamic>),
);

Map<String, dynamic> _$$ProductsSearchOptionPriceImplToJson(
  _$ProductsSearchOptionPriceImpl instance,
) => <String, dynamic>{
  'finalPrice': instance.finalPrice,
  'regularPrice': instance.regularPrice,
};

_$ProductsSearchImageImpl _$$ProductsSearchImageImplFromJson(
  Map<String, dynamic> json,
) => _$ProductsSearchImageImpl(
  label: json['label'] as String,
  url: json['url'] as String?,
);

Map<String, dynamic> _$$ProductsSearchImageImplToJson(
  _$ProductsSearchImageImpl instance,
) => <String, dynamic>{'label': instance.label, 'url': instance.url};
