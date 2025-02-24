import 'package:core/data/datasource/product/share_product_query.dart';

///░█▀▀█ ░█─░█ ░█▀▀▀ ░█▀▀█ ░█──░█
///░█─░█ ░█─░█ ░█▀▀▀ ░█▄▄▀ ░█▄▄▄█
///─▀▀█▄ ─▀▄▄▀ ░█▄▄▄ ░█─░█ ──░█──

getProductsByCategoryUidQuery(String uid) => '''
query getProducts{
  products(filter: {
  category_uid: {
    eq: "$uid" 
  }
}, pageSize: 10,) {
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

getProductsBySkuQuery(List<String> skus) => '''
query getProducts{
  products(filter: {
  sku: {
    in: ["${skus.join('","')}"] 
  }
}, pageSize: 20,) {
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
