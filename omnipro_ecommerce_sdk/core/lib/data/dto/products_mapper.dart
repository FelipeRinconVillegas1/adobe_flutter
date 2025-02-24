import 'package:core/data/dto/products_dto.fr.dart';
import 'package:core/domain/entity/money.fr.dart';
import 'package:core/domain/entity/products.dart';

extension ProductsMapper on Products {
  ProductsDTO toDTO() =>
      ProductsDTO(items: items.map((e) => e.toDTO()).toList(), pageInfo: pageInfo.toDTO(), totalCount: totalCount);
}

extension ProductsMapperDTO on ProductsDTO {
  Products toDomain() => Products(
        items: items.map((e) => e.toDomain()).toList(),
        pageInfo: pageInfo.toDomain(),
        totalCount: totalCount,
        aggregations: aggregations.map((e) => e.toDomain()).toList(),
      );
}

extension ProductsPageInfoMapper on ProductsPageInfo {
  ProductsPageInfoDTO toDTO() =>
      ProductsPageInfoDTO(currentPage: currentPage, pageSize: pageSize, totalPages: totalPages);
}

extension ProductsPageInfoMapperDTO on ProductsPageInfoDTO {
  ProductsPageInfo toDomain() => ProductsPageInfo(
        currentPage: currentPage,
        pageSize: pageSize,
        totalPages: totalPages,
      );
}

extension ProductsItemsMapper on ProductsItems {
  ProductsItemsDTO toDTO() => ProductsItemsDTO(
        id: id,
        name: name,
        sku: sku,
        margin: margin,
        urlKey: urlKey,
        typeId: typeId,
        marca: marca,
        associatedProducts: associatedProducts.map((e) => e.toDTO()).toList(),
        brandName: brandName,
        minSaleQty: minSaleQty,
        informacionNutricional: informacionNutricional,
        ingredientes: ingredientes,
        composicion: composicion,
        upc: upc,
        isCatalogExtended: isCatalogExtended,
        taxAmount: taxAmount.map((e) => e.toDTO()).toList(),
        description: description?.toDTO(),
        shortDescription: shortDescription?.toDTO(),
        image: image.toDTO(),
        mediaGallery: mediaGallery.map((e) => e.toDTO()).toList(),
        tags: tags.join(','),
        smallImage: smallImage?.toDTO(),
        ratingSummary: ratingSummary,
        reviewCount: reviewCount,
        priceRange: priceRange?.toDTO(),
        stockStatus: stockStatus,
        specialPrice: specialPrice,
        salesUnitOfMeasure: salesUnitOfMeasure,
        ribbons: ribbons.map((e) => e.toDTO()).toList(),
        uid: uid,
        categories: categories.map((e) => e.toDTO()).toList(),
      );
}

extension ProductsItemsMapperDTO on ProductsItemsDTO {
  ProductsItems toDomain() => ProductsItems(
        id: id,
        uid: uid,
        sku: sku,
        name: name,
        upc: upc,
        margin: margin,
        urlKey: urlKey,
        typeId: typeId,
        marca: marca,
        associatedProducts: associatedProducts.map((e) => e.toDomain()).toList(),
        brandName: brandName,
        composicion: composicion,
        taxAmount: taxAmount.map((e) => e.toDomain()).toList(),
        informacionNutricional: informacionNutricional,
        ingredientes: ingredientes,
        minSaleQty: minSaleQty,
        tags: tags == null ? [] : tags!.split(','),
        specialPrice: specialPrice,
        description: description?.toDomain(),
        shortDescription: shortDescription?.toDomain(),
        ribbons: ribbons.map((e) => e.toDomain()).toList(),
        image: image.toDomain(),
        smallImage: smallImage?.toDomain(),
        mediaGallery: mediaGallery.map((e) => e.toDomain()).toList(),
        ratingSummary: ratingSummary,
        reviewCount: reviewCount,
        salesUnitOfMeasure: salesUnitOfMeasure,
        stockStatus: stockStatus,
        priceRange: priceRange?.toDomain(),
        variants: variants.map((e) => e.toDomain()).toList(),
        categories: categories.map((e) => e.toDomain()).toList(),
        relatedProducts: relatedProducts.map((e) => e.toDomain()).toList(),
        upsellProducts: upsellProducts.map((e) => e.toDomain()).toList(),
        crosssellProducts: crosssellProducts.map((e) => e.toDomain()).toList(),
        isCatalogExtended: isCatalogExtended,
      );
}

extension TaxAmountMapper on TaxAmount {
  TaxAmountDTO toDTO() => TaxAmountDTO(id: id, value: value);
}

extension TaxAmountMapperDTO on TaxAmountDTO {
  TaxAmount toDomain() => TaxAmount(id: id, value: value);
}

extension RibbonsProductsMapper on Ribbons {
  RibbonsProductsDTO toDTO() => RibbonsProductsDTO(code: code, color: color, text: text);
}

extension RibbonsProductsMapperDTO on RibbonsProductsDTO {
  Ribbons toDomain() => Ribbons(code: code, color: color, text: text);
}

extension ProductsRelatedProductsMapper on ProductsRelatedProducts {
  ProductsRelatedProductsDTO toDTO() => ProductsRelatedProductsDTO(name: name, uid: uid, sku: sku);
}

extension ProductsRelatedProductsMapperDTO on ProductsRelatedProductsDTO {
  ProductsRelatedProducts toDomain() => ProductsRelatedProducts(
        name: name,
        uid: uid,
        sku: sku,
      );
}

extension ProductsDescriptionMapper on ProductsDescription {
  ProductsDescriptionDTO toDTO() => ProductsDescriptionDTO(html: html);
}

extension ProductsDescriptionMapperDTO on ProductsDescriptionDTO {
  ProductsDescription toDomain() => ProductsDescription(
        html: html,
      );
}

extension ProductsImageMapper on ProductsImage {
  ProductsImageDTO toDTO() => ProductsImageDTO(label: label, url: url);
}

extension ProductsImageMapperDTO on ProductsImageDTO {
  ProductsImage toDomain() => ProductsImage(
        url: url,
        label: label,
      );
}

extension ProductsMediaGalleryMapper on ProductsMediaGallery {
  ProductsMediaGalleryDTO toDTO() => ProductsMediaGalleryDTO(
        disabled: disabled,
        url: url,
        label: label,
        position: position,
      );
}

extension ProductsMediaGalleryMapperDTO on ProductsMediaGalleryDTO {
  ProductsMediaGallery toDomain() => ProductsMediaGallery(
        url: url,
        label: label,
        position: position,
        disabled: disabled,
      );
}

extension ProductsPriceRangeMapper on ProductsPriceRange {
  ProductsPriceRangeDTO toDTO() => ProductsPriceRangeDTO(
        maximumPrice: maximumPrice?.toDTO(),
        minimumPrice: minimumPrice?.toDTO(),
      );
}

extension ProductsPriceRangeMapperDTO on ProductsPriceRangeDTO {
  ProductsPriceRange toDomain() => ProductsPriceRange(
        minimumPrice: minimumPrice?.toDomain(),
        maximumPrice: maximumPrice?.toDomain(),
      );
}

extension ProductsOptionPriceMapper on ProductsOptionPrice {
  ProductsOptionPriceDTO toDTO() => ProductsOptionPriceDTO(
        discount: ProductsDiscountDTO(amount: discount.value, label: discount.currency),
        regularPrice: ProductsDetailPriceDTO(value: regularPrice.value, currency: regularPrice.currency),
        finalPrice: ProductsDetailPriceDTO(value: finalPrice.value, currency: finalPrice.currency),
      );
}

extension ProductsOptionPriceMapperDTO on ProductsOptionPriceDTO {
  ProductsOptionPrice toDomain() => ProductsOptionPrice(
        discount: Money(value: discount.amount ?? 0, currency: discount.label ?? ''),
        finalPrice: Money(value: finalPrice.value, currency: finalPrice.currency),
        regularPrice: Money(value: regularPrice.value, currency: regularPrice.currency),
      );
}

extension ProductsAtributesMapper on ProductsAtributes {
  ProductsAtributesDTO toDTO() => ProductsAtributesDTO(
        uid: uid,
        label: label,
        code: code,
      );
}

extension ProductsAtributesMapperDTO on ProductsAtributesDTO {
  ProductsAtributes toDomain() => ProductsAtributes(
        uid: uid,
        label: label,
        code: code,
      );
}

extension ProductsVariantsMapper on ProductsVariants {
  ProductsVariantsDTO toDTO() => ProductsVariantsDTO(attributes: attributes.map((e) => e.toDTO()).toList());
}

extension ProductsVariantsMapperDTO on ProductsVariantsDTO {
  ProductsVariants toDomain() => ProductsVariants(
        attributes: attributes.map((e) => e.toDomain()).toList(),
      );
}

extension ProductsAggregationsMapper on ProductsAggregations {
  ProductsAggregationsDTO toDTO() => ProductsAggregationsDTO(
        attributeCode: attributeCode,
        label: label,
        options: options.map((e) => e.toDTO()).toList(),
      );
}

extension ProductsAggregationsMapperDTO on ProductsAggregationsDTO {
  ProductsAggregations toDomain() => ProductsAggregations(
        label: label,
        attributeCode: attributeCode,
        options: options.map((e) => e.toDomain()).toList(),
      );
}

extension ProductsOptionsMapper on ProductsOptions {
  ProductsOptionsDTO toDTO() => ProductsOptionsDTO(count: count, value: value, label: label);
}

extension ProductsOptionsMapperDTO on ProductsOptionsDTO {
  ProductsOptions toDomain() => ProductsOptions(count: count, label: label, value: value);
}

extension ProductsCategoryMapper on ProductsCategory {
  ProductsCategoryDTO toDTO() => ProductsCategoryDTO(
        level: level,
        uid: uid,
        name: name ?? '',
        includeInMenu: includeInMenu,
      );
}

extension ProductsCategoryMapperDTO on ProductsCategoryDTO {
  ProductsCategory toDomain() => ProductsCategory(
        uid: uid,
        level: level,
        includeInMenu: includeInMenu,
        name: name,
      );
}
