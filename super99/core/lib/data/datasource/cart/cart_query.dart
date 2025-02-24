import 'package:core/data/datasource/product/share_product_query.dart';
import 'package:core/utils/extension.dart';

/// Get cart info params.
/// Example use:
///
///   query {
///   cart(cart_id: "$cartId"){
///     ${queryGetCartInfo()}
///   }
///  }
String queryGetCartInfo() => '''
      id
      email
      items {
          uid
          quantity
          product {
            ${queryItemProduct(includeNestedAssociatedProducts: false)}
          }
          prices {
            price {
              value
              currency
            }
            applied_taxes {
            label
            amount {
               value
               currency
              }
            }
          }
      }
      prices {
      subtotal_excluding_tax {
        value
        currency
      }
      discounts {
        amount {
          value
          currency
        }
        label
      }
      applied_taxes {
        label
        amount {
           value
           currency
        }
      }
      grand_total {
        value
        currency
      }
      catalog_discount_amount {
        value
      }
      refundable_fee {
        value
      }
    }
     available_payment_methods {
      code
      title
    }
    selected_payment_method {
        code
      }
    shipping_addresses {
        available_shipping_methods {
            amount {
                currency
                value
            }
            available
            carrier_code
            carrier_title
            method_code
            method_title
            price_excl_tax {
                value
                currency
            }
            price_incl_tax {
                value
                currency
            }
        }
        selected_shipping_method {
          carrier_code
          method_code
          carrier_title
          method_title
          amount {
            currency
            value
          }
        }
        firstname
        lastname
        company
        street
        city
        postcode
        telephone
        city_custom
        state_custom
        zone_custom
        country {
          code
          label
        }
      }
     billing_address {     
        firstname
        lastname
        company
        street
        city
        postcode
        telephone
        country {
          code
          label
        }
      }
     applied_coupons {
        code,
      }
''';

String getCartInfoQuery(String cartId) => '''
query {
  cart(cart_id: "$cartId"){
    ${queryGetCartInfo()}
  }
}
''';

String getCrossSellingProductsQuery(List<String> skus) => '''
{
  products(filter: { sku: { in: ${skus.formatForQuery()} } }) {
    items {
     crosssell_products {
      name
      sku
      url_key
        ... on ConfigurableProduct {
        variants {
          attributes {
            uid
            label
            code
          }
        }
      }
      description{
        html
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
     }
    }
  }
}
''';

String getEnabledShippingMethodQuery() => '''
query {
    getEnabledShippingMethods {
        method_code,
        method_label,
        schedule_information {
          format,
          full,
          timestamp,
          schedule {
            range,
            start_label,
            start_minutes,
            end_label,
            end_minutes
          }
        }
    }
}
''';