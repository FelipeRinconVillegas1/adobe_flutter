import 'dart:ui';
import 'package:core/domain/entity/categories.dart';

class CategoryDetailPageParams {
  CategoryDetailPageParams({required this.categorySelected, required this.colorCategoryBackgroundDefault});
  final CategoriesItems categorySelected;
  final Color colorCategoryBackgroundDefault;
}

///If categorySelected is null, it will be taken from the categoryUid
///If categorySelected is not null, it will be taken from the categorySelected
class ProductsListPageParams {
  ProductsListPageParams(
      {this.categorySelected, required this.colorCategoryBackgroundDefault, required this.categoryUid});
  final CategoriesItems? categorySelected;
  final String categoryUid;
  final Color colorCategoryBackgroundDefault;
}
