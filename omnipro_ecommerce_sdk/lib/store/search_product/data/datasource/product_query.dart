import 'package:core/data/datasource/product/share_product_query.dart';

///░█▀▀█ ░█─░█ ░█▀▀▀ ░█▀▀█ ░█──░█
///░█─░█ ░█─░█ ░█▀▀▀ ░█▄▄▀ ░█▄▄▄█
///─▀▀█▄ ─▀▄▄▀ ░█▄▄▄ ░█─░█ ──░█──

String getProductsByNameXSearchQuery(String productName) => '''
query {
    xsearchProducts(search: "$productName") {
        code
        total_count
        items {
            id
            name
            sku
            image {
                label
                url
            }
            small_image {
                label
                url
            }
            thumbnail {
                label
                url
            }
        }
    }
}
''';

String getProductsBySearchTerm(String productName) => '''
query getProductsquery(\$filter: ProductAttributeFilterInput, \$pageSize: Int
  \$currentPage: Int, \$sort: ProductAttributeSortInput){
  products(search: "$productName",pageSize: \$pageSize, currentPage: \$currentPage, filter:\$filter, sort: \$sort) {
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


String getProductsByNamePriceQuery(String productName) => '''
query getProductsquery(\$filter: ProductAttributeFilterInput, \$pageSize: Int
  \$currentPage: Int, \$sort: ProductAttributeSortInput){
  products(search: "$productName", pageSize: \$pageSize, currentPage: \$currentPage, filter:\$filter, sort: \$sort) {
    total_count
      aggregations (filter: {category: {includeDirectChildrenOnly: true}}) {
      label
      attribute_code
      options {
        label
        value
        count
      }
    }
  
    items {
      name
      sku
      url_key
      description{
        html
      }
    related_products {
        uid
        name
        sku
      }

      upsell_products {
        uid
        name
        sku
      }

      crosssell_products {
        uid
        name
        sku
      }
      image{
        label
        url
      }
      small_image{
        label
        url
      }
      media_gallery {
       url
        label
        position
        disabled
      }
      rating_summary
      review_count
      price_range {
        minimum_price {
          discount{
            amount_off
            percent_off
          }
          final_price{
            value
            currency
          }
          regular_price {
            value
            currency
          }
        }
        maximum_price {
          final_price {
            currency
            value
          }
          regular_price {
            currency
            value
          }
          discount {
            amount_off
            percent_off
          }
        }
      }
        categories {
          uid
          name
          url_key
          url_path
          canonical_url
          include_in_menu
        }
    }
    page_info {
      page_size
      current_page
      total_pages
    }
  }
}
''';



String getPopularSearch() => '''
query {
    xsearchPopularSearches (search:"") {
          code 
          items {
              name 
              num_results 
              url
          }
          total_count 
    }
}
''';


String getRecentSearch() => '''
query { 
    xsearchRecentSearches { 
       code 
       items { 
              name 
              num_results 
              url 
       }
       total_count 
    }
}
''';