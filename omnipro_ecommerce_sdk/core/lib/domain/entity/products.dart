import 'package:collection/collection.dart';
import 'package:core/domain/entity/money.fr.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'products.freezed.dart';
part 'products.g.dart';

@Freezed(makeCollectionsUnmodifiable: false)
@freezed
class Products with _$Products {
  const factory Products(
      {@Default([]) List<ProductsItems> items,
      required ProductsPageInfo pageInfo,
      required int totalCount,
      @Default([]) List<ProductsAggregations> aggregations}) = _Products;

  factory Products.fromJson(Map<String, Object?> json) => _$ProductsFromJson(json);
}

@freezed
class ProductsPageInfo with _$ProductsPageInfo {
  const factory ProductsPageInfo({
    required int currentPage,
    required int pageSize,
    required int totalPages,
  }) = _ProductsPageInfo;
  factory ProductsPageInfo.fromJson(Map<String, Object?> json) => _$ProductsPageInfoFromJson(json);
}

///This was called unfreezed with concern of the code generation
///that make innmutable object for this class
@unfreezed
class ProductsItems with _$ProductsItems {
  @JsonSerializable(explicitToJson: true)
  factory ProductsItems(
      {required int id,
      required double minSaleQty,
      required double margin,
      required String typeId,
      int? marca,
      List<String>? labels,
      String? type,
      String? measureUnit,
      String? brandName,
      String? upc,
      required String name,
      required String sku,
      required List<String> tags,
      String? uid,
      String? urlKey,
      double? specialPrice,
      @Default([]) List<ProductsVariants> variants,
      ProductsDescription? description,
      required ProductsImage image,
      ProductsImage? smallImage,
      @Default([]) List<ProductsMediaGallery> mediaGallery,
      int? ratingSummary,
      int? reviewCount,
      ProductsPriceRange? priceRange,
      String? salesUnitOfMeasure,
      String? stockStatus,
      ProductsDescription? shortDescription,
      @Default([]) List<TaxAmount> taxAmount,
      @Default([]) List<Ribbons> ribbons,
      @Default([]) List<ProductsCategory> categories,
      @Default([]) List<ProductsRelatedProducts> relatedProducts,
      @Default([]) List<ProductsRelatedProducts> upsellProducts,
      @Default([]) List<ProductsRelatedProducts> crosssellProducts,
      @Default([]) List<ProductsItems> associatedProducts,
      @Default(0) int isCatalogExtended,
      @Default(0) double quantity}) = _ProductsItems;
  factory ProductsItems.fromJson(Map<String, Object?> json) => _$ProductsItemsFromJson(json);
}

extension ProductsItemsTax on ProductsItems {
  double taxAmountValue() {
    TaxAmount? taxAmount = this.taxAmount.firstWhereOrNull((element) => element.id == id);
    if (taxAmount != null) {
      return taxAmount.value;
    }
    return 0;
  }
}

@freezed
class TaxAmount with _$TaxAmount {
  const factory TaxAmount({
    required int id,
    required double value,
  }) = _TaxAmount;

  factory TaxAmount.fromJson(Map<String, dynamic> json) => _$TaxAmountFromJson(json);
}

@freezed
class Ribbons with _$Ribbons {
  const factory Ribbons({
    required String code,
    required String color,
    required String text,
  }) = _Ribbons;
  factory Ribbons.fromJson(Map<String, Object?> json) => _$RibbonsFromJson(json);
}

@freezed
class ProductsRelatedProducts with _$ProductsRelatedProducts {
  const factory ProductsRelatedProducts({
    required String name,
    required String uid,
    required String sku,
  }) = _ProductsRelatedProducts;
  factory ProductsRelatedProducts.fromJson(Map<String, Object?> json) => _$ProductsRelatedProductsFromJson(json);
}

@freezed
class ProductsDescription with _$ProductsDescription {
  const factory ProductsDescription({
    required String html,
  }) = _ProductsDescription;
  factory ProductsDescription.fromJson(Map<String, Object?> json) => _$ProductsDescriptionFromJson(json);
}

@freezed
class ProductsImage with _$ProductsImage {
  const factory ProductsImage({
    required String label,
    String? url,
  }) = _ProductsImage;
  factory ProductsImage.fromJson(Map<String, Object?> json) => _$ProductsImageFromJson(json);
}

@freezed
class ProductsMediaGallery with _$ProductsMediaGallery {
  const factory ProductsMediaGallery({
    String? label,
    String? url,
    required int position,
    required bool disabled,
  }) = _ProductsMediaGallery;
  factory ProductsMediaGallery.fromJson(Map<String, Object?> json) => _$ProductsMediaGalleryFromJson(json);
}

@freezed
class ProductsPriceRange with _$ProductsPriceRange {
  const factory ProductsPriceRange({
    ProductsOptionPrice? minimumPrice,
    ProductsOptionPrice? maximumPrice,
  }) = _ProductsPriceRange;
  factory ProductsPriceRange.fromJson(Map<String, Object?> json) => _$ProductsPriceRangeFromJson(json);
}

@freezed
class ProductsOptionPrice with _$ProductsOptionPrice {
  const factory ProductsOptionPrice({
    required Money discount,
    required Money finalPrice,
    required Money regularPrice,
  }) = _ProductsOptionPrice;
  factory ProductsOptionPrice.fromJson(Map<String, Object?> json) => _$ProductsOptionPriceFromJson(json);
}

@freezed
class ProductsAtributes with _$ProductsAtributes {
  const factory ProductsAtributes({
    required String uid,
    required String label,
    required String code,
  }) = _ProductsAtributes;
  factory ProductsAtributes.fromJson(Map<String, Object?> json) => _$ProductsAtributesFromJson(json);
}

@freezed
class ProductsVariants with _$ProductsVariants {
  const factory ProductsVariants({
    @Default([]) List<ProductsAtributes> attributes,
  }) = _ProductsVariants;
  factory ProductsVariants.fromJson(Map<String, Object?> json) => _$ProductsVariantsFromJson(json);
}

@freezed
class ProductsAggregations with _$ProductsAggregations {
  factory ProductsAggregations(
      {required String label,
      required String attributeCode,
      @Default([]) List<ProductsOptions> options}) = _ProductsAggregations;
  factory ProductsAggregations.fromJson(Map<String, Object?> json) => _$ProductsAggregationsFromJson(json);
}

@freezed
class ProductsOptions with _$ProductsOptions {
  factory ProductsOptions({required String label, required String value, required int count}) = _ProductsOptions;
  factory ProductsOptions.fromJson(Map<String, Object?> json) => _$ProductsOptionsFromJson(json);
}

@freezed
class ProductsCategory with _$ProductsCategory {
  factory ProductsCategory(
      {required String uid, required String name, required int level, required int includeInMenu}) = _ProductsCategory;
  factory ProductsCategory.fromJson(Map<String, Object?> json) => _$ProductsCategoryFromJson(json);
}
