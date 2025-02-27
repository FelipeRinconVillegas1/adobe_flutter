import 'package:freezed_annotation/freezed_annotation.dart';

part 'products_dto.fr.freezed.dart';

part 'products_dto.fr.g.dart';

@freezed
class ProductsDTO with _$ProductsDTO {
  const factory ProductsDTO({
    required List<ProductsItemsDTO> items,
    @JsonKey(name: 'page_info') required ProductsPageInfoDTO pageInfo,
    @JsonKey(name: 'total_count') required int totalCount,
    @Default([]) List<ProductsAggregationsDTO> aggregations,
  }) = _ProductsDTO;

  factory ProductsDTO.fromJson(Map<String, dynamic> json) => _$ProductsDTOFromJson(json);
}

@freezed
class ProductsPageInfoDTO with _$ProductsPageInfoDTO {
  const factory ProductsPageInfoDTO({
    @JsonKey(name: 'current_page') required int currentPage,
    @JsonKey(name: 'page_size') required int pageSize,
    @JsonKey(name: 'total_pages') required int totalPages,
  }) = _ProductsPageInfoDTO;

  factory ProductsPageInfoDTO.fromJson(Map<String, dynamic> json) => _$ProductsPageInfoDTOFromJson(json);
}

@freezed
class ProductsItemsDTO with _$ProductsItemsDTO {
  @JsonSerializable(explicitToJson: true)
  const factory ProductsItemsDTO(
      {required int id,
      required String name,
      required String sku,
      @JsonKey(name: 'type_id') required String typeId,
      String? upc,
      int? marca,
      @JsonKey(name: 'brand_name') String? brandName,
      @JsonKey(name: 'min_sale_qty') required double minSaleQty,
      @Default(0) double margin,
      String? uid,
      @JsonKey(name: 'url_key') String? urlKey,
      @JsonKey(name: 'special_price') double? specialPrice,
      @Default(0) @JsonKey(name: 'catalog_extended') int isCatalogExtended,
      ProductsDescriptionDTO? description,
      required ProductsImageDTO image,
      String? tags,
      @JsonKey(name: 'media_gallery') required List<ProductsMediaGalleryDTO> mediaGallery,
      @Default([]) List<ProductsVariantsDTO> variants,
      @JsonKey(name: 'small_image') ProductsImageDTO? smallImage,
      @Default([]) List<RibbonsProductsDTO> ribbons,
      @JsonKey(name: 'rating_summary') int? ratingSummary,
      @JsonKey(name: 'review_count') int? reviewCount,
      @JsonKey(name: 'tax_amount') @Default([]) List<TaxAmountDTO> taxAmount,
      @JsonKey(name: 'price_range') ProductsPriceRangeDTO? priceRange,
      @JsonKey(name: 'sales_unit_of_measure') String? salesUnitOfMeasure,
      @JsonKey(name: 'stock_status') String? stockStatus,
      @JsonKey(name: 'related_products') @Default([]) List<ProductsRelatedProductsDTO> relatedProducts,
      @JsonKey(name: 'upsell_products') @Default([]) List<ProductsRelatedProductsDTO> upsellProducts,
      @JsonKey(name: 'crosssell_products') @Default([]) List<ProductsRelatedProductsDTO> crosssellProducts,
      @JsonKey(name: 'short_description') ProductsDescriptionDTO? shortDescription,
      @Default([]) List<ProductsItemsDTO> associatedProducts,
      @Default([]) List<ProductsCategoryDTO> categories}) = _ProductsItemsDTO;

  factory ProductsItemsDTO.fromJson(Map<String, dynamic> json) => _$ProductsItemsDTOFromJson(json);
}

@freezed
class TaxAmountDTO with _$TaxAmountDTO {
  const factory TaxAmountDTO({
    required int id,
    required double value,
  }) = _TaxAmountDTO;

  factory TaxAmountDTO.fromJson(Map<String, dynamic> json) => _$TaxAmountDTOFromJson(json);
}

@freezed
class RibbonsProductsDTO with _$RibbonsProductsDTO {
  const factory RibbonsProductsDTO({
    required String code,
    required String color,
    required String text,
  }) = _RibbonsProductsDTO;

  factory RibbonsProductsDTO.fromJson(Map<String, dynamic> json) => _$RibbonsProductsDTOFromJson(json);
}

@freezed
class ProductsRelatedProductsDTO with _$ProductsRelatedProductsDTO {
  const factory ProductsRelatedProductsDTO({
    required String name,
    required String uid,
    required String sku,
  }) = _ProductsRelatedProductsDTO;

  factory ProductsRelatedProductsDTO.fromJson(Map<String, dynamic> json) => _$ProductsRelatedProductsDTOFromJson(json);
}

@freezed
class ProductsDescriptionDTO with _$ProductsDescriptionDTO {
  const factory ProductsDescriptionDTO({
    required String html,
  }) = _ProductsDescriptionDTO;

  factory ProductsDescriptionDTO.fromJson(Map<String, dynamic> json) => _$ProductsDescriptionDTOFromJson(json);
}

@freezed
class ProductsImageDTO with _$ProductsImageDTO {
  const factory ProductsImageDTO({
    required String label,
    String? url,
  }) = _ProductsImageDTO;

  factory ProductsImageDTO.fromJson(Map<String, dynamic> json) => _$ProductsImageDTOFromJson(json);
}

@freezed
class ProductsMediaGalleryDTO with _$ProductsMediaGalleryDTO {
  const factory ProductsMediaGalleryDTO({
    String? url,
    String? label,
    required int position,
    required bool disabled,
  }) = _ProductsMediaGalleryDTO;

  factory ProductsMediaGalleryDTO.fromJson(Map<String, dynamic> json) => _$ProductsMediaGalleryDTOFromJson(json);
}

@freezed
class ProductsPriceRangeDTO with _$ProductsPriceRangeDTO {
  const factory ProductsPriceRangeDTO({
    @JsonKey(name: 'minimum_price') ProductsOptionPriceDTO? minimumPrice,
    @JsonKey(name: 'maximum_price') ProductsOptionPriceDTO? maximumPrice,
  }) = _ProductsPriceRangeDTO;

  factory ProductsPriceRangeDTO.fromJson(Map<String, dynamic> json) => _$ProductsPriceRangeDTOFromJson(json);
}

@freezed
class ProductsOptionPriceDTO with _$ProductsOptionPriceDTO {
  const factory ProductsOptionPriceDTO({
    required ProductsDiscountDTO discount,
    @JsonKey(name: 'final_price') required ProductsDetailPriceDTO finalPrice,
    @JsonKey(name: 'regular_price') required ProductsDetailPriceDTO regularPrice,
  }) = _ProductsOptionPriceDTO;

  factory ProductsOptionPriceDTO.fromJson(Map<String, dynamic> json) => _$ProductsOptionPriceDTOFromJson(json);
}

@freezed
class ProductsDiscountDTO with _$ProductsDiscountDTO {
  const factory ProductsDiscountDTO({
    double? amount,
    String? label,
  }) = _ProductsDiscountDTO;

  factory ProductsDiscountDTO.fromJson(Map<String, dynamic> json) => _$ProductsDiscountDTOFromJson(json);
}

@freezed
class ProductsDetailPriceDTO with _$ProductsDetailPriceDTO {
  const factory ProductsDetailPriceDTO({
    required double value,
    required String currency,
  }) = _ProductsDetailPriceDTO;

  factory ProductsDetailPriceDTO.fromJson(Map<String, dynamic> json) => _$ProductsDetailPriceDTOFromJson(json);
}

@freezed
class ProductsAtributesDTO with _$ProductsAtributesDTO {
  const factory ProductsAtributesDTO({
    required String uid,
    required String label,
    required String code,
  }) = _ProductsAtributesDTO;

  factory ProductsAtributesDTO.fromJson(Map<String, dynamic> json) => _$ProductsAtributesDTOFromJson(json);
}

@freezed
class ProductsVariantsDTO with _$ProductsVariantsDTO {
  const factory ProductsVariantsDTO({
    @Default([]) List<ProductsAtributesDTO> attributes,
  }) = _ProductsVariantsDTO;

  factory ProductsVariantsDTO.fromJson(Map<String, dynamic> json) => _$ProductsVariantsDTOFromJson(json);
}

@freezed
class ProductsAggregationsDTO with _$ProductsAggregationsDTO {
  factory ProductsAggregationsDTO(
      {required String label,
      @JsonKey(name: 'attribute_code') required String attributeCode,
      @Default([]) List<ProductsOptionsDTO> options}) = _ProductsAggregationsDTO;
  factory ProductsAggregationsDTO.fromJson(Map<String, dynamic> json) => _$ProductsAggregationsDTOFromJson(json);
}

@freezed
class ProductsOptionsDTO with _$ProductsOptionsDTO {
  factory ProductsOptionsDTO({required String label, required String value, required int count}) = _ProductsOptionsDTO;
  factory ProductsOptionsDTO.fromJson(Map<String, dynamic> json) => _$ProductsOptionsDTOFromJson(json);
}

@freezed
class ProductsCategoryDTO with _$ProductsCategoryDTO {
  factory ProductsCategoryDTO(
      {required String uid,
      required String name,
      required int level,
      @JsonKey(name: 'include_in_menu') required int includeInMenu}) = _ProductsCategoryDTO;
  factory ProductsCategoryDTO.fromJson(Map<String, dynamic> json) => _$ProductsCategoryDTOFromJson(json);
}
