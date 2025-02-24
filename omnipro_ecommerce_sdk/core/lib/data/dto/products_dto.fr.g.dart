// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'products_dto.fr.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductsDTOImpl _$$ProductsDTOImplFromJson(Map<String, dynamic> json) =>
    _$ProductsDTOImpl(
      items:
          (json['items'] as List<dynamic>)
              .map((e) => ProductsItemsDTO.fromJson(e as Map<String, dynamic>))
              .toList(),
      pageInfo: ProductsPageInfoDTO.fromJson(
        json['page_info'] as Map<String, dynamic>,
      ),
      totalCount: (json['total_count'] as num).toInt(),
      aggregations:
          (json['aggregations'] as List<dynamic>?)
              ?.map(
                (e) =>
                    ProductsAggregationsDTO.fromJson(e as Map<String, dynamic>),
              )
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$ProductsDTOImplToJson(_$ProductsDTOImpl instance) =>
    <String, dynamic>{
      'items': instance.items,
      'page_info': instance.pageInfo,
      'total_count': instance.totalCount,
      'aggregations': instance.aggregations,
    };

_$ProductsPageInfoDTOImpl _$$ProductsPageInfoDTOImplFromJson(
  Map<String, dynamic> json,
) => _$ProductsPageInfoDTOImpl(
  currentPage: (json['current_page'] as num).toInt(),
  pageSize: (json['page_size'] as num).toInt(),
  totalPages: (json['total_pages'] as num).toInt(),
);

Map<String, dynamic> _$$ProductsPageInfoDTOImplToJson(
  _$ProductsPageInfoDTOImpl instance,
) => <String, dynamic>{
  'current_page': instance.currentPage,
  'page_size': instance.pageSize,
  'total_pages': instance.totalPages,
};

_$ProductsItemsDTOImpl _$$ProductsItemsDTOImplFromJson(
  Map<String, dynamic> json,
) => _$ProductsItemsDTOImpl(
  id: (json['id'] as num).toInt(),
  name: json['name'] as String,
  sku: json['sku'] as String,
  typeId: json['type_id'] as String,
  upc: json['upc'] as String?,
  marca: (json['marca'] as num?)?.toInt(),
  informacionNutricional: json['informacion_nutricional'] as String?,
  ingredientes: json['ingredientes'] as String?,
  brandName: json['brand_name'] as String?,
  minSaleQty: (json['min_sale_qty'] as num).toDouble(),
  margin: (json['margin'] as num?)?.toDouble() ?? 0,
  uid: json['uid'] as String?,
  urlKey: json['url_key'] as String?,
  specialPrice: (json['special_price'] as num?)?.toDouble(),
  isCatalogExtended: (json['catalog_extended'] as num?)?.toInt() ?? 0,
  description:
      json['description'] == null
          ? null
          : ProductsDescriptionDTO.fromJson(
            json['description'] as Map<String, dynamic>,
          ),
  image: ProductsImageDTO.fromJson(json['image'] as Map<String, dynamic>),
  tags: json['tags'] as String?,
  mediaGallery:
      (json['media_gallery'] as List<dynamic>)
          .map(
            (e) => ProductsMediaGalleryDTO.fromJson(e as Map<String, dynamic>),
          )
          .toList(),
  variants:
      (json['variants'] as List<dynamic>?)
          ?.map((e) => ProductsVariantsDTO.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  smallImage:
      json['small_image'] == null
          ? null
          : ProductsImageDTO.fromJson(
            json['small_image'] as Map<String, dynamic>,
          ),
  ribbons:
      (json['ribbons'] as List<dynamic>?)
          ?.map((e) => RibbonsProductsDTO.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  ratingSummary: (json['rating_summary'] as num?)?.toInt(),
  reviewCount: (json['review_count'] as num?)?.toInt(),
  taxAmount:
      (json['tax_amount'] as List<dynamic>?)
          ?.map((e) => TaxAmountDTO.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  priceRange:
      json['price_range'] == null
          ? null
          : ProductsPriceRangeDTO.fromJson(
            json['price_range'] as Map<String, dynamic>,
          ),
  salesUnitOfMeasure: json['sales_unit_of_measure'] as String?,
  stockStatus: json['stock_status'] as String?,
  composicion: json['composicion'] as String?,
  relatedProducts:
      (json['related_products'] as List<dynamic>?)
          ?.map(
            (e) =>
                ProductsRelatedProductsDTO.fromJson(e as Map<String, dynamic>),
          )
          .toList() ??
      const [],
  upsellProducts:
      (json['upsell_products'] as List<dynamic>?)
          ?.map(
            (e) =>
                ProductsRelatedProductsDTO.fromJson(e as Map<String, dynamic>),
          )
          .toList() ??
      const [],
  crosssellProducts:
      (json['crosssell_products'] as List<dynamic>?)
          ?.map(
            (e) =>
                ProductsRelatedProductsDTO.fromJson(e as Map<String, dynamic>),
          )
          .toList() ??
      const [],
  shortDescription:
      json['short_description'] == null
          ? null
          : ProductsDescriptionDTO.fromJson(
            json['short_description'] as Map<String, dynamic>,
          ),
  associatedProducts:
      (json['associatedProducts'] as List<dynamic>?)
          ?.map((e) => ProductsItemsDTO.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  categories:
      (json['categories'] as List<dynamic>?)
          ?.map((e) => ProductsCategoryDTO.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
);

Map<String, dynamic> _$$ProductsItemsDTOImplToJson(
  _$ProductsItemsDTOImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'sku': instance.sku,
  'type_id': instance.typeId,
  'upc': instance.upc,
  'marca': instance.marca,
  'informacion_nutricional': instance.informacionNutricional,
  'ingredientes': instance.ingredientes,
  'brand_name': instance.brandName,
  'min_sale_qty': instance.minSaleQty,
  'margin': instance.margin,
  'uid': instance.uid,
  'url_key': instance.urlKey,
  'special_price': instance.specialPrice,
  'catalog_extended': instance.isCatalogExtended,
  'description': instance.description?.toJson(),
  'image': instance.image.toJson(),
  'tags': instance.tags,
  'media_gallery': instance.mediaGallery.map((e) => e.toJson()).toList(),
  'variants': instance.variants.map((e) => e.toJson()).toList(),
  'small_image': instance.smallImage?.toJson(),
  'ribbons': instance.ribbons.map((e) => e.toJson()).toList(),
  'rating_summary': instance.ratingSummary,
  'review_count': instance.reviewCount,
  'tax_amount': instance.taxAmount.map((e) => e.toJson()).toList(),
  'price_range': instance.priceRange?.toJson(),
  'sales_unit_of_measure': instance.salesUnitOfMeasure,
  'stock_status': instance.stockStatus,
  'composicion': instance.composicion,
  'related_products': instance.relatedProducts.map((e) => e.toJson()).toList(),
  'upsell_products': instance.upsellProducts.map((e) => e.toJson()).toList(),
  'crosssell_products':
      instance.crosssellProducts.map((e) => e.toJson()).toList(),
  'short_description': instance.shortDescription?.toJson(),
  'associatedProducts':
      instance.associatedProducts.map((e) => e.toJson()).toList(),
  'categories': instance.categories.map((e) => e.toJson()).toList(),
};

_$TaxAmountDTOImpl _$$TaxAmountDTOImplFromJson(Map<String, dynamic> json) =>
    _$TaxAmountDTOImpl(
      id: (json['id'] as num).toInt(),
      value: (json['value'] as num).toDouble(),
    );

Map<String, dynamic> _$$TaxAmountDTOImplToJson(_$TaxAmountDTOImpl instance) =>
    <String, dynamic>{'id': instance.id, 'value': instance.value};

_$RibbonsProductsDTOImpl _$$RibbonsProductsDTOImplFromJson(
  Map<String, dynamic> json,
) => _$RibbonsProductsDTOImpl(
  code: json['code'] as String,
  color: json['color'] as String,
  text: json['text'] as String,
);

Map<String, dynamic> _$$RibbonsProductsDTOImplToJson(
  _$RibbonsProductsDTOImpl instance,
) => <String, dynamic>{
  'code': instance.code,
  'color': instance.color,
  'text': instance.text,
};

_$ProductsRelatedProductsDTOImpl _$$ProductsRelatedProductsDTOImplFromJson(
  Map<String, dynamic> json,
) => _$ProductsRelatedProductsDTOImpl(
  name: json['name'] as String,
  uid: json['uid'] as String,
  sku: json['sku'] as String,
);

Map<String, dynamic> _$$ProductsRelatedProductsDTOImplToJson(
  _$ProductsRelatedProductsDTOImpl instance,
) => <String, dynamic>{
  'name': instance.name,
  'uid': instance.uid,
  'sku': instance.sku,
};

_$ProductsDescriptionDTOImpl _$$ProductsDescriptionDTOImplFromJson(
  Map<String, dynamic> json,
) => _$ProductsDescriptionDTOImpl(html: json['html'] as String);

Map<String, dynamic> _$$ProductsDescriptionDTOImplToJson(
  _$ProductsDescriptionDTOImpl instance,
) => <String, dynamic>{'html': instance.html};

_$ProductsImageDTOImpl _$$ProductsImageDTOImplFromJson(
  Map<String, dynamic> json,
) => _$ProductsImageDTOImpl(
  label: json['label'] as String,
  url: json['url'] as String?,
);

Map<String, dynamic> _$$ProductsImageDTOImplToJson(
  _$ProductsImageDTOImpl instance,
) => <String, dynamic>{'label': instance.label, 'url': instance.url};

_$ProductsMediaGalleryDTOImpl _$$ProductsMediaGalleryDTOImplFromJson(
  Map<String, dynamic> json,
) => _$ProductsMediaGalleryDTOImpl(
  url: json['url'] as String?,
  label: json['label'] as String?,
  position: (json['position'] as num).toInt(),
  disabled: json['disabled'] as bool,
);

Map<String, dynamic> _$$ProductsMediaGalleryDTOImplToJson(
  _$ProductsMediaGalleryDTOImpl instance,
) => <String, dynamic>{
  'url': instance.url,
  'label': instance.label,
  'position': instance.position,
  'disabled': instance.disabled,
};

_$ProductsPriceRangeDTOImpl _$$ProductsPriceRangeDTOImplFromJson(
  Map<String, dynamic> json,
) => _$ProductsPriceRangeDTOImpl(
  minimumPrice:
      json['minimum_price'] == null
          ? null
          : ProductsOptionPriceDTO.fromJson(
            json['minimum_price'] as Map<String, dynamic>,
          ),
  maximumPrice:
      json['maximum_price'] == null
          ? null
          : ProductsOptionPriceDTO.fromJson(
            json['maximum_price'] as Map<String, dynamic>,
          ),
);

Map<String, dynamic> _$$ProductsPriceRangeDTOImplToJson(
  _$ProductsPriceRangeDTOImpl instance,
) => <String, dynamic>{
  'minimum_price': instance.minimumPrice,
  'maximum_price': instance.maximumPrice,
};

_$ProductsOptionPriceDTOImpl _$$ProductsOptionPriceDTOImplFromJson(
  Map<String, dynamic> json,
) => _$ProductsOptionPriceDTOImpl(
  discount: ProductsDiscountDTO.fromJson(
    json['discount'] as Map<String, dynamic>,
  ),
  finalPrice: ProductsDetailPriceDTO.fromJson(
    json['final_price'] as Map<String, dynamic>,
  ),
  regularPrice: ProductsDetailPriceDTO.fromJson(
    json['regular_price'] as Map<String, dynamic>,
  ),
);

Map<String, dynamic> _$$ProductsOptionPriceDTOImplToJson(
  _$ProductsOptionPriceDTOImpl instance,
) => <String, dynamic>{
  'discount': instance.discount,
  'final_price': instance.finalPrice,
  'regular_price': instance.regularPrice,
};

_$ProductsDiscountDTOImpl _$$ProductsDiscountDTOImplFromJson(
  Map<String, dynamic> json,
) => _$ProductsDiscountDTOImpl(
  amount: (json['amount'] as num?)?.toDouble(),
  label: json['label'] as String?,
);

Map<String, dynamic> _$$ProductsDiscountDTOImplToJson(
  _$ProductsDiscountDTOImpl instance,
) => <String, dynamic>{'amount': instance.amount, 'label': instance.label};

_$ProductsDetailPriceDTOImpl _$$ProductsDetailPriceDTOImplFromJson(
  Map<String, dynamic> json,
) => _$ProductsDetailPriceDTOImpl(
  value: (json['value'] as num).toDouble(),
  currency: json['currency'] as String,
);

Map<String, dynamic> _$$ProductsDetailPriceDTOImplToJson(
  _$ProductsDetailPriceDTOImpl instance,
) => <String, dynamic>{'value': instance.value, 'currency': instance.currency};

_$ProductsAtributesDTOImpl _$$ProductsAtributesDTOImplFromJson(
  Map<String, dynamic> json,
) => _$ProductsAtributesDTOImpl(
  uid: json['uid'] as String,
  label: json['label'] as String,
  code: json['code'] as String,
);

Map<String, dynamic> _$$ProductsAtributesDTOImplToJson(
  _$ProductsAtributesDTOImpl instance,
) => <String, dynamic>{
  'uid': instance.uid,
  'label': instance.label,
  'code': instance.code,
};

_$ProductsVariantsDTOImpl _$$ProductsVariantsDTOImplFromJson(
  Map<String, dynamic> json,
) => _$ProductsVariantsDTOImpl(
  attributes:
      (json['attributes'] as List<dynamic>?)
          ?.map((e) => ProductsAtributesDTO.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
);

Map<String, dynamic> _$$ProductsVariantsDTOImplToJson(
  _$ProductsVariantsDTOImpl instance,
) => <String, dynamic>{'attributes': instance.attributes};

_$ProductsAggregationsDTOImpl _$$ProductsAggregationsDTOImplFromJson(
  Map<String, dynamic> json,
) => _$ProductsAggregationsDTOImpl(
  label: json['label'] as String,
  attributeCode: json['attribute_code'] as String,
  options:
      (json['options'] as List<dynamic>?)
          ?.map((e) => ProductsOptionsDTO.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
);

Map<String, dynamic> _$$ProductsAggregationsDTOImplToJson(
  _$ProductsAggregationsDTOImpl instance,
) => <String, dynamic>{
  'label': instance.label,
  'attribute_code': instance.attributeCode,
  'options': instance.options,
};

_$ProductsOptionsDTOImpl _$$ProductsOptionsDTOImplFromJson(
  Map<String, dynamic> json,
) => _$ProductsOptionsDTOImpl(
  label: json['label'] as String,
  value: json['value'] as String,
  count: (json['count'] as num).toInt(),
);

Map<String, dynamic> _$$ProductsOptionsDTOImplToJson(
  _$ProductsOptionsDTOImpl instance,
) => <String, dynamic>{
  'label': instance.label,
  'value': instance.value,
  'count': instance.count,
};

_$ProductsCategoryDTOImpl _$$ProductsCategoryDTOImplFromJson(
  Map<String, dynamic> json,
) => _$ProductsCategoryDTOImpl(
  uid: json['uid'] as String,
  name: json['name'] as String,
  level: (json['level'] as num).toInt(),
  includeInMenu: (json['include_in_menu'] as num).toInt(),
);

Map<String, dynamic> _$$ProductsCategoryDTOImplToJson(
  _$ProductsCategoryDTOImpl instance,
) => <String, dynamic>{
  'uid': instance.uid,
  'name': instance.name,
  'level': instance.level,
  'include_in_menu': instance.includeInMenu,
};
