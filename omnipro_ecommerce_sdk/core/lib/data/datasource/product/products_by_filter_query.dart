import 'package:core/data/datasource/product/share_product_query.dart';

///░█▀▀█ ░█─░█ ░█▀▀▀ ░█▀▀█ ░█──░█
///░█─░█ ░█─░█ ░█▀▀▀ ░█▄▄▀ ░█▄▄▄█
///─▀▀█▄ ─▀▄▄▀ ░█▄▄▄ ░█─░█ ──░█──

String getProductsByCategoryUidByFilterQuery() => '''
query getProducts(\$filter: ProductAttributeFilterInput, \$pageSize: Int
  \$currentPage: Int, \$sort: ProductAttributeSortInput){
  products(pageSize: \$pageSize, currentPage: \$currentPage, filter:\$filter, sort: \$sort) {
    total_count
      aggregations (filter: {category: {includeDirectChildrenOnly: true}}) {
      attribute_code
      count
      label
      options {
        label
        value
        count
      }
    }
    items {
      ${queryItemProduct()}
    }
    page_info {
      page_size
      current_page
      total_pages
    }
  }
}
''';
