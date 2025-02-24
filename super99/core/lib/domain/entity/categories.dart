import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'categories.freezed.dart';

@freezed
class Categories with _$Categories {
  const factory Categories({
    required List<CategoriesItems> items,
    required CategoriesPageInfo pageInfo,
  }) = _Categories;
}

@freezed
class CategoriesItems with _$CategoriesItems {
  const factory CategoriesItems({
    required String uid,
    required int id,
    required int level,
    required String name,
    required int position,
    String? urlPath,
    required int childrenCount,
    int? appPosition,
    String? appMainImage,
    String? appBannerImage,
    int? includeInMenu,
    required List<CategoriesItems> children,
  }) = _CategoriesItems;
}

@freezed
class CategoriesPageInfo with _$CategoriesPageInfo {
  const factory CategoriesPageInfo({
    required int currentPage,
    required int pageSize,
    required int totalPages,
  }) = _CategoriesPageInfo;
}

@freezed
class CategoryDetailPageData with _$CategoryDetailPageData {
  const factory CategoryDetailPageData({
    required CategoriesItems category,
    required CategoriesItems parentCategory,
    VoidCallback? backButtonTap,
    VoidCallback? searchButtonTap,
    VoidCallback? cartButtonTap,
  }) = _CategoryDetailPageData;
}
