import 'package:core/data/dto/products_search_dto.fr.dart';
import 'package:core/domain/entity/money.fr.dart';
import 'package:core/domain/entity/products_search_entity.dart';
import 'package:omnipro_ecommerce_sdk/store/search_product/data/dto/popular_search.fr.dart';
import 'package:omnipro_ecommerce_sdk/store/search_product/data/dto/recent_search.fr.dart';
import '../../domain/entity/item_popular.dart';
import '../../domain/entity/item_recent.dart';

extension ItemPopularMapperDTO on ItemPopularSearchDTO {
  ItemPopular toDomain() => ItemPopular(
        numResults: numResults,
        name: name,
        url: url,
      );
}

extension ItemRecentMapperDTO on ItemRecentSearchDTO {
  ItemRecent toDomain() => ItemRecent(
        numResults: numResults,
        name: name,
        url: url,
      );
}

extension ProductsSearchMapperDTO on ProductsSearchDTO {
  ProductsSearch toDomain() => ProductsSearch(
        totalCount: totalCount,
        items: items.map((e) => e.toDomain()).toList(),
      );
}

extension ProductsSearchItemsMapperDTO on ProductsItemsSearchDTO {
  ProductsSearchItems toDomain() => ProductsSearchItems(
        name: name,
        sku: sku,
        id: id,
        urlKey: urlKey,
        specialPrice: specialPrice,
        image: image.toDomain(),
        smallImage: smallImage?.toDomain(),
        ratingSummary: ratingSummary,
        reviewsCount: reviewsCount,
        isSalable: isSalable,
        priceRange: priceRange?.toDomain(),
      );
}

extension ProductsSearchPriceRangeMapperDTO on ProductsSearchPriceRangeDTO {
  ProductsSearchPriceRange toDomain() => ProductsSearchPriceRange(
        minimumPrice: minimumPrice?.toDomain(),
        maximumPrice: maximumPrice?.toDomain(),
      );
}

extension ProductsSearchOptionPriceMapperDTO on ProductsSearchOptionPriceDTO {
  ProductsSearchOptionPrice toDomain() => ProductsSearchOptionPrice(
        finalPrice: finalPrice.toDomain(),
        regularPrice: regularPrice.toDomain(),
      );
}

extension ProductsSearchDetailPriceMapperDTO on ProductsSearchDetailPriceDTO {
  Money toDomain() => Money(
        currency: currency,
        value: value,
      );
}

extension ProductsSearchImageMapperDTO on ProductsImageSearchDTO {
  ProductsSearchImage toDomain() => ProductsSearchImage(
        label: label,
        url: url,
      );
}
