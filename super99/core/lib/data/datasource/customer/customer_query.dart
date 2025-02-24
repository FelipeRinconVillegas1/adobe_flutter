import 'package:address/data/datasource/address_query.dart';

import '../product/share_product_query.dart';

///░█▀▀█ ░█─░█ ░█▀▀▀ ░█▀▀█ ░█──░█
///░█─░█ ░█─░█ ░█▀▀▀ ░█▄▄▀ ░█▄▄▄█
///─▀▀█▄ ─▀▄▄▀ ░█▄▄▄ ░█─░█ ──░█──

String getCustomerQuery() {
  return '''
    {
      ${customerQuery()}
    }
  ''';
}

String customerBaseQuery() {
  return '''
    firstname
    lastname
    email,
    dob,
    gender
    id
      ''';
}

String customerQuery({bool needReturnWishList = true}) {
  return '''
    customer {
        ${customerBaseQuery.call()}
        ${customAttributesQuery.call()}
        ${needReturnWishList ? wishlistsQuery.call() : ''}
        addresses {
         ${dataQueryCustomerAddress()}
        }
    }
  ''';
}

String customerContentQuery() {
  return '''
    ${customerBaseQuery.call()}
    ${customAttributesQuery.call()}
    addresses {
      ${dataQueryCustomerAddress()}
        }
  ''';
}

String wishlistQuery() {
  return '''
      wishlist{
      id
      name
      visibility
      items_count
      items_v2{
        items{
          id
          quantity
          product{
            ${queryItemProduct(includeNestedAssociatedProducts: false)}
          }
        }
      }
    }
''';
}

String wishlistsQuery() {
  return '''
      wishlists{
      id
      name
      visibility
      items_count
      items_v2{
        items{
          id
          quantity
          product{
            ${queryItemProduct(includeNestedAssociatedProducts: false)}
          }
        }
      }
    }
''';
}

String customAttributesQuery() {
  return '''
      custom_attributes {
          code
        ... on AttributeValue {
          value
        }
        ... on AttributeSelectedOptions{
            selected_options {
                label
                value
            }
        }
      }
  ''';
}
