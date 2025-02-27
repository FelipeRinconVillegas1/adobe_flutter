import 'package:omnipro_ecommerce_sdk/address/lib/data/datasource/address_query.dart';
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
            ${queryItemProduct()}
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
            ${queryItemProduct()}
          }
        }
      }
    }
''';
}
