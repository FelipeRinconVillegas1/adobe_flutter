import 'package:core/domain/entity/money.fr.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'products_search_entity.freezed.dart';
part 'products_search_entity.g.dart';

@Freezed(makeCollectionsUnmodifiable: false)
@freezed
class ProductsSearch with _$ProductsSearch {
  const factory ProductsSearch(
      {@Default([]) List<ProductsSearchItems> items,
        required int totalCount}) = _ProductsSearch;

  factory ProductsSearch.fromJson(Map<String, Object?> json) => _$ProductsSearchFromJson(json);
}

@freezed
class ProductsSearchItems with _$ProductsSearchItems {
  @JsonSerializable(explicitToJson: true)
  const factory ProductsSearchItems({
    required String name,
    required String sku,
    required int id,
    List<String>? labels,
    String? type,
    String? urlKey,
    double? specialPrice,
    required ProductsSearchImage image,
    ProductsSearchImage? smallImage,
    int? ratingSummary,
    int? reviewsCount,
    bool? isSalable,
    ProductsSearchPriceRange? priceRange,
  }) = _ProductsSearchItems;
  factory ProductsSearchItems.fromJson(Map<String, Object?> json) => _$ProductsSearchItemsFromJson(json);
}

@freezed
class ProductsSearchPriceRange with _$ProductsSearchPriceRange {
  const factory ProductsSearchPriceRange({
    ProductsSearchOptionPrice? minimumPrice,
    ProductsSearchOptionPrice? maximumPrice,
  }) = _ProductsSearchPriceRange;
  factory ProductsSearchPriceRange.fromJson(Map<String, Object?> json) => _$ProductsSearchPriceRangeFromJson(json);
}

@freezed
class ProductsSearchOptionPrice with _$ProductsSearchOptionPrice {
  const factory ProductsSearchOptionPrice({
    required Money finalPrice,
    required Money regularPrice,
  }) = _ProductsSearchOptionPrice;
  factory ProductsSearchOptionPrice.fromJson(Map<String, Object?> json) => _$ProductsSearchOptionPriceFromJson(json);
}

@freezed
class ProductsSearchImage with _$ProductsSearchImage {
  const factory ProductsSearchImage({
    required String label,
    String? url,
  }) = _ProductsSearchImage;
  factory ProductsSearchImage.fromJson(Map<String, Object?> json) => _$ProductsSearchImageFromJson(json);
}