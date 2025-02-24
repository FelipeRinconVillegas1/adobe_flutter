import 'package:freezed_annotation/freezed_annotation.dart';

part 'products_search_dto.fr.freezed.dart';

part 'products_search_dto.fr.g.dart';

@freezed
class ProductsSearchDTO with _$ProductsSearchDTO {
  const factory ProductsSearchDTO({
    required List<ProductsItemsSearchDTO> items,
    @JsonKey(name: 'total_count') required int totalCount,
  }) = _ProductsSearchDTO;

  factory ProductsSearchDTO.fromJson(Map<String, dynamic> json) => _$ProductsSearchDTOFromJson(json);
}

@freezed
class ProductsItemsSearchDTO with _$ProductsItemsSearchDTO {
  @JsonSerializable(explicitToJson: true)
  const factory ProductsItemsSearchDTO({
    required int id,
    required String name,
    required String sku,
    ProductsDescriptionSearchDTO? description,
    @JsonKey(name: 'short_description') ProductsDescriptionSearchDTO? shortDescription,
    required ProductsImageSearchDTO image,
    @JsonKey(name: 'small_image') ProductsImageSearchDTO? smallImage,
    @JsonKey(name: 'thumbnail') ProductsImageSearchDTO? thumbnail,
    @JsonKey(name: 'is_salable') bool? isSalable,
    @JsonKey(name: 'rating_summary') int? ratingSummary,
    @JsonKey(name: 'reviews_count') int? reviewsCount,
    @JsonKey(name: 'url_key') String? urlKey,
    @JsonKey(name: 'url_suffix') String? urlSuffix,
    @JsonKey(name: 'url_path') String? urlPath,
    @JsonKey(name: 'special_price') double? specialPrice,
    @JsonKey(name: 'special_from_date') String? specialFromDate,
    @JsonKey(name: 'special_to_date') String? specialToDate,
    @JsonKey(name: 'attribute_set_id') int? attributeSetId,
    @JsonKey(name: 'meta_title') String? metaTitle,
    @JsonKey(name: 'meta_keyword') String? metaKeyword,
    @JsonKey(name: 'meta_description') String? metaDescription,
    @JsonKey(name: 'new_from_date') String? newFromDate,
    @JsonKey(name: 'new_to_date') String? newToDate,
    @JsonKey(name: 'tier_price') double? tierPrice,
    @JsonKey(name: 'options_container') String? optionsContainer,
    @JsonKey(name: 'created_at') String? createdAt,
    @JsonKey(name: 'updated_at') String? updatedAt,
    @JsonKey(name: 'type_id') String? typeId,
    @JsonKey(name: 'price_range') ProductsSearchPriceRangeDTO? priceRange,
    @JsonKey(name: 'canonical_url') String? canonicalUrl,
  }) = _ProductsItemsSearchDTO;

  factory ProductsItemsSearchDTO.fromJson(Map<String, dynamic> json) => _$ProductsItemsSearchDTOFromJson(json);
}

@freezed
class ProductsSearchPriceRangeDTO with _$ProductsSearchPriceRangeDTO {
  const factory ProductsSearchPriceRangeDTO({
    @JsonKey(name: 'minimum_price') ProductsSearchOptionPriceDTO? minimumPrice,
    @JsonKey(name: 'maximum_price') ProductsSearchOptionPriceDTO? maximumPrice,
  }) = _ProductsSearchPriceRangeDTO;

  factory ProductsSearchPriceRangeDTO.fromJson(Map<String, dynamic> json) => _$ProductsSearchPriceRangeDTOFromJson(json);
}

@freezed
class ProductsSearchOptionPriceDTO with _$ProductsSearchOptionPriceDTO {
  const factory ProductsSearchOptionPriceDTO({
    @JsonKey(name: 'final_price') required ProductsSearchDetailPriceDTO finalPrice,
    @JsonKey(name: 'regular_price') required ProductsSearchDetailPriceDTO regularPrice,
  }) = _ProductsSearchOptionPriceDTO;

  factory ProductsSearchOptionPriceDTO.fromJson(Map<String, dynamic> json) => _$ProductsSearchOptionPriceDTOFromJson(json);
}

@freezed
class ProductsSearchDetailPriceDTO with _$ProductsSearchDetailPriceDTO {
  const factory ProductsSearchDetailPriceDTO({
    required double value,
    required String currency,
  }) = _ProductsSearchDetailPriceDTO;

  factory ProductsSearchDetailPriceDTO.fromJson(Map<String, dynamic> json) => _$ProductsSearchDetailPriceDTOFromJson(json);
}

@freezed
class ProductsImageSearchDTO with _$ProductsImageSearchDTO {
  const factory ProductsImageSearchDTO({
    required String label,
    String? url,
  }) = _ProductsImageSearchDTO;

  factory ProductsImageSearchDTO.fromJson(Map<String, dynamic> json) => _$ProductsImageSearchDTOFromJson(json);
}

@freezed
class ProductsDescriptionSearchDTO with _$ProductsDescriptionSearchDTO {
  const factory ProductsDescriptionSearchDTO({
    required String html,
  }) = _ProductsDescriptionSearchDTO;

  factory ProductsDescriptionSearchDTO.fromJson(Map<String, dynamic> json) => _$ProductsDescriptionSearchDTOFromJson(json);
}