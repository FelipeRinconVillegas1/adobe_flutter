// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'products.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductsImpl _$$ProductsImplFromJson(
  Map<String, dynamic> json,
) => _$ProductsImpl(
  items:
      (json['items'] as List<dynamic>?)
          ?.map((e) => ProductsItems.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  pageInfo: ProductsPageInfo.fromJson(json['pageInfo'] as Map<String, dynamic>),
  totalCount: (json['totalCount'] as num).toInt(),
  aggregations:
      (json['aggregations'] as List<dynamic>?)
          ?.map((e) => ProductsAggregations.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
);

Map<String, dynamic> _$$ProductsImplToJson(_$ProductsImpl instance) =>
    <String, dynamic>{
      'items': instance.items,
      'pageInfo': instance.pageInfo,
      'totalCount': instance.totalCount,
      'aggregations': instance.aggregations,
    };

_$ProductsPageInfoImpl _$$ProductsPageInfoImplFromJson(
  Map<String, dynamic> json,
) => _$ProductsPageInfoImpl(
  currentPage: (json['currentPage'] as num).toInt(),
  pageSize: (json['pageSize'] as num).toInt(),
  totalPages: (json['totalPages'] as num).toInt(),
);

Map<String, dynamic> _$$ProductsPageInfoImplToJson(
  _$ProductsPageInfoImpl instance,
) => <String, dynamic>{
  'currentPage': instance.currentPage,
  'pageSize': instance.pageSize,
  'totalPages': instance.totalPages,
};

_$ProductsItemsImpl _$$ProductsItemsImplFromJson(
  Map<String, dynamic> json,
) => _$ProductsItemsImpl(
  id: (json['id'] as num).toInt(),
  minSaleQty: (json['minSaleQty'] as num).toDouble(),
  margin: (json['margin'] as num).toDouble(),
  typeId: json['typeId'] as String,
  marca: (json['marca'] as num?)?.toInt(),
  labels: (json['labels'] as List<dynamic>?)?.map((e) => e as String).toList(),
  type: json['type'] as String?,
  measureUnit: json['measureUnit'] as String?,
  brandName: json['brandName'] as String?,
  upc: json['upc'] as String?,
  name: json['name'] as String,
  sku: json['sku'] as String,
  tags: (json['tags'] as List<dynamic>).map((e) => e as String).toList(),
  uid: json['uid'] as String?,
  urlKey: json['urlKey'] as String?,
  specialPrice: (json['specialPrice'] as num?)?.toDouble(),
  variants:
      (json['variants'] as List<dynamic>?)
          ?.map((e) => ProductsVariants.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  description:
      json['description'] == null
          ? null
          : ProductsDescription.fromJson(
            json['description'] as Map<String, dynamic>,
          ),
  image: ProductsImage.fromJson(json['image'] as Map<String, dynamic>),
  smallImage:
      json['smallImage'] == null
          ? null
          : ProductsImage.fromJson(json['smallImage'] as Map<String, dynamic>),
  mediaGallery:
      (json['mediaGallery'] as List<dynamic>?)
          ?.map((e) => ProductsMediaGallery.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  ratingSummary: (json['ratingSummary'] as num?)?.toInt(),
  reviewCount: (json['reviewCount'] as num?)?.toInt(),
  priceRange:
      json['priceRange'] == null
          ? null
          : ProductsPriceRange.fromJson(
            json['priceRange'] as Map<String, dynamic>,
          ),
  salesUnitOfMeasure: json['salesUnitOfMeasure'] as String?,
  stockStatus: json['stockStatus'] as String?,
  shortDescription:
      json['shortDescription'] == null
          ? null
          : ProductsDescription.fromJson(
            json['shortDescription'] as Map<String, dynamic>,
          ),
  taxAmount:
      (json['taxAmount'] as List<dynamic>?)
          ?.map((e) => TaxAmount.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  ribbons:
      (json['ribbons'] as List<dynamic>?)
          ?.map((e) => Ribbons.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  categories:
      (json['categories'] as List<dynamic>?)
          ?.map((e) => ProductsCategory.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  relatedProducts:
      (json['relatedProducts'] as List<dynamic>?)
          ?.map(
            (e) => ProductsRelatedProducts.fromJson(e as Map<String, dynamic>),
          )
          .toList() ??
      const [],
  upsellProducts:
      (json['upsellProducts'] as List<dynamic>?)
          ?.map(
            (e) => ProductsRelatedProducts.fromJson(e as Map<String, dynamic>),
          )
          .toList() ??
      const [],
  crosssellProducts:
      (json['crosssellProducts'] as List<dynamic>?)
          ?.map(
            (e) => ProductsRelatedProducts.fromJson(e as Map<String, dynamic>),
          )
          .toList() ??
      const [],
  associatedProducts:
      (json['associatedProducts'] as List<dynamic>?)
          ?.map((e) => ProductsItems.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  isCatalogExtended: (json['isCatalogExtended'] as num?)?.toInt() ?? 0,
  quantity: (json['quantity'] as num?)?.toDouble() ?? 0,
);

Map<String, dynamic> _$$ProductsItemsImplToJson(
  _$ProductsItemsImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'minSaleQty': instance.minSaleQty,
  'margin': instance.margin,
  'typeId': instance.typeId,
  'marca': instance.marca,
  'labels': instance.labels,
  'type': instance.type,
  'measureUnit': instance.measureUnit,
  'brandName': instance.brandName,
  'upc': instance.upc,
  'name': instance.name,
  'sku': instance.sku,
  'tags': instance.tags,
  'uid': instance.uid,
  'urlKey': instance.urlKey,
  'specialPrice': instance.specialPrice,
  'variants': instance.variants.map((e) => e.toJson()).toList(),
  'description': instance.description?.toJson(),
  'image': instance.image.toJson(),
  'smallImage': instance.smallImage?.toJson(),
  'mediaGallery': instance.mediaGallery.map((e) => e.toJson()).toList(),
  'ratingSummary': instance.ratingSummary,
  'reviewCount': instance.reviewCount,
  'priceRange': instance.priceRange?.toJson(),
  'salesUnitOfMeasure': instance.salesUnitOfMeasure,
  'stockStatus': instance.stockStatus,
  'shortDescription': instance.shortDescription?.toJson(),
  'taxAmount': instance.taxAmount.map((e) => e.toJson()).toList(),
  'ribbons': instance.ribbons.map((e) => e.toJson()).toList(),
  'categories': instance.categories.map((e) => e.toJson()).toList(),
  'relatedProducts': instance.relatedProducts.map((e) => e.toJson()).toList(),
  'upsellProducts': instance.upsellProducts.map((e) => e.toJson()).toList(),
  'crosssellProducts':
      instance.crosssellProducts.map((e) => e.toJson()).toList(),
  'associatedProducts':
      instance.associatedProducts.map((e) => e.toJson()).toList(),
  'isCatalogExtended': instance.isCatalogExtended,
  'quantity': instance.quantity,
};

_$TaxAmountImpl _$$TaxAmountImplFromJson(Map<String, dynamic> json) =>
    _$TaxAmountImpl(
      id: (json['id'] as num).toInt(),
      value: (json['value'] as num).toDouble(),
    );

Map<String, dynamic> _$$TaxAmountImplToJson(_$TaxAmountImpl instance) =>
    <String, dynamic>{'id': instance.id, 'value': instance.value};

_$RibbonsImpl _$$RibbonsImplFromJson(Map<String, dynamic> json) =>
    _$RibbonsImpl(
      code: json['code'] as String,
      color: json['color'] as String,
      text: json['text'] as String,
    );

Map<String, dynamic> _$$RibbonsImplToJson(_$RibbonsImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'color': instance.color,
      'text': instance.text,
    };

_$ProductsRelatedProductsImpl _$$ProductsRelatedProductsImplFromJson(
  Map<String, dynamic> json,
) => _$ProductsRelatedProductsImpl(
  name: json['name'] as String,
  uid: json['uid'] as String,
  sku: json['sku'] as String,
);

Map<String, dynamic> _$$ProductsRelatedProductsImplToJson(
  _$ProductsRelatedProductsImpl instance,
) => <String, dynamic>{
  'name': instance.name,
  'uid': instance.uid,
  'sku': instance.sku,
};

_$ProductsDescriptionImpl _$$ProductsDescriptionImplFromJson(
  Map<String, dynamic> json,
) => _$ProductsDescriptionImpl(html: json['html'] as String);

Map<String, dynamic> _$$ProductsDescriptionImplToJson(
  _$ProductsDescriptionImpl instance,
) => <String, dynamic>{'html': instance.html};

_$ProductsImageImpl _$$ProductsImageImplFromJson(Map<String, dynamic> json) =>
    _$ProductsImageImpl(
      label: json['label'] as String,
      url: json['url'] as String?,
    );

Map<String, dynamic> _$$ProductsImageImplToJson(_$ProductsImageImpl instance) =>
    <String, dynamic>{'label': instance.label, 'url': instance.url};

_$ProductsMediaGalleryImpl _$$ProductsMediaGalleryImplFromJson(
  Map<String, dynamic> json,
) => _$ProductsMediaGalleryImpl(
  label: json['label'] as String?,
  url: json['url'] as String?,
  position: (json['position'] as num).toInt(),
  disabled: json['disabled'] as bool,
);

Map<String, dynamic> _$$ProductsMediaGalleryImplToJson(
  _$ProductsMediaGalleryImpl instance,
) => <String, dynamic>{
  'label': instance.label,
  'url': instance.url,
  'position': instance.position,
  'disabled': instance.disabled,
};

_$ProductsPriceRangeImpl _$$ProductsPriceRangeImplFromJson(
  Map<String, dynamic> json,
) => _$ProductsPriceRangeImpl(
  minimumPrice:
      json['minimumPrice'] == null
          ? null
          : ProductsOptionPrice.fromJson(
            json['minimumPrice'] as Map<String, dynamic>,
          ),
  maximumPrice:
      json['maximumPrice'] == null
          ? null
          : ProductsOptionPrice.fromJson(
            json['maximumPrice'] as Map<String, dynamic>,
          ),
);

Map<String, dynamic> _$$ProductsPriceRangeImplToJson(
  _$ProductsPriceRangeImpl instance,
) => <String, dynamic>{
  'minimumPrice': instance.minimumPrice,
  'maximumPrice': instance.maximumPrice,
};

_$ProductsOptionPriceImpl _$$ProductsOptionPriceImplFromJson(
  Map<String, dynamic> json,
) => _$ProductsOptionPriceImpl(
  discount: Money.fromJson(json['discount'] as Map<String, dynamic>),
  finalPrice: Money.fromJson(json['finalPrice'] as Map<String, dynamic>),
  regularPrice: Money.fromJson(json['regularPrice'] as Map<String, dynamic>),
);

Map<String, dynamic> _$$ProductsOptionPriceImplToJson(
  _$ProductsOptionPriceImpl instance,
) => <String, dynamic>{
  'discount': instance.discount,
  'finalPrice': instance.finalPrice,
  'regularPrice': instance.regularPrice,
};

_$ProductsAtributesImpl _$$ProductsAtributesImplFromJson(
  Map<String, dynamic> json,
) => _$ProductsAtributesImpl(
  uid: json['uid'] as String,
  label: json['label'] as String,
  code: json['code'] as String,
);

Map<String, dynamic> _$$ProductsAtributesImplToJson(
  _$ProductsAtributesImpl instance,
) => <String, dynamic>{
  'uid': instance.uid,
  'label': instance.label,
  'code': instance.code,
};

_$ProductsVariantsImpl _$$ProductsVariantsImplFromJson(
  Map<String, dynamic> json,
) => _$ProductsVariantsImpl(
  attributes:
      (json['attributes'] as List<dynamic>?)
          ?.map((e) => ProductsAtributes.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
);

Map<String, dynamic> _$$ProductsVariantsImplToJson(
  _$ProductsVariantsImpl instance,
) => <String, dynamic>{'attributes': instance.attributes};

_$ProductsAggregationsImpl _$$ProductsAggregationsImplFromJson(
  Map<String, dynamic> json,
) => _$ProductsAggregationsImpl(
  label: json['label'] as String,
  attributeCode: json['attributeCode'] as String,
  options:
      (json['options'] as List<dynamic>?)
          ?.map((e) => ProductsOptions.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
);

Map<String, dynamic> _$$ProductsAggregationsImplToJson(
  _$ProductsAggregationsImpl instance,
) => <String, dynamic>{
  'label': instance.label,
  'attributeCode': instance.attributeCode,
  'options': instance.options,
};

_$ProductsOptionsImpl _$$ProductsOptionsImplFromJson(
  Map<String, dynamic> json,
) => _$ProductsOptionsImpl(
  label: json['label'] as String,
  value: json['value'] as String,
  count: (json['count'] as num).toInt(),
);

Map<String, dynamic> _$$ProductsOptionsImplToJson(
  _$ProductsOptionsImpl instance,
) => <String, dynamic>{
  'label': instance.label,
  'value': instance.value,
  'count': instance.count,
};

_$ProductsCategoryImpl _$$ProductsCategoryImplFromJson(
  Map<String, dynamic> json,
) => _$ProductsCategoryImpl(
  uid: json['uid'] as String,
  name: json['name'] as String,
  level: (json['level'] as num).toInt(),
  includeInMenu: (json['includeInMenu'] as num).toInt(),
);

Map<String, dynamic> _$$ProductsCategoryImplToJson(
  _$ProductsCategoryImpl instance,
) => <String, dynamic>{
  'uid': instance.uid,
  'name': instance.name,
  'level': instance.level,
  'includeInMenu': instance.includeInMenu,
};
