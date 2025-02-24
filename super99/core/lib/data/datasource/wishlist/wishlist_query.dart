import 'package:core/data/datasource/customer/customer_query.dart';

import '../../../domain/entity/wishlist/wishlist_product_entity.dart';

String createWishListMutation({required String name}) => '''
mutation {
  createWishlist(input: {
    name: "$name"
    visibility: PUBLIC
    }
  ) {
    ${wishlistQuery.call()}
  }
}
''';

String updateProductsInWishListMutation({
  required List<WishListProductUpdateInfo> wishlistProducts,
  required int wishlistId,
}) {
  final wishlistItems = <String>[];
  for (var item in wishlistProducts) {
    wishlistItems.add('''
  {
    wishlist_item_id: "${item.wishListItemId}",
    quantity: ${item.quantity}
  }
''');
  }
  return '''
  mutation {
  updateProductsInWishlist(
    wishlistId: $wishlistId
    wishlistItems: $wishlistItems 
  ) {
    ${wishlistQuery.call()}
  }
}
''';
}

String addProductWishListMutation({
  required List<WishListProductAddInfo> wishlistProducts,
  required int wishlistId,
}) {
  final wishlistItems = <String>[];
  for (var item in wishlistProducts) {
    wishlistItems.add('''
  {
    sku: "${item.sku}",
    quantity: ${item.quantity}
  }
''');
  }
  return '''
  mutation {
  addProductsToWishlist(
    wishlistId: $wishlistId
    wishlistItems: $wishlistItems 
  ) {
    ${wishlistQuery.call()}
  }
}
''';
}

String updateWishlistMutation({
  required int wishlistId,
  required String name,
}) =>
    '''
  mutation {
  updateWishlist(
    wishlistId: $wishlistId
    name: "$name"
    visibility: PUBLIC
  ) {
    name
    uid
    visibility
  }
}
''';

String addProductsToCartFromWishListMutation({required int wishlistId, required List<int> wishlistItemIds}) => '''
  mutation {
  addWishlistItemsToCart(
    wishlistId: $wishlistId
    wishlistItemIds: $wishlistItemIds)
  {
    status
    add_wishlist_items_to_cart_user_errors {
      code
      message
    }
    ${wishlistQuery.call()}
  }
}
''';

String removeProductFromWishListMutation({
  required int wishlistId,
  required List<int> wishlistItemsIds,
}) =>
    '''
  mutation {
  removeProductsFromWishlist(
  wishlistId: $wishlistId
  wishlistItemsIds: $wishlistItemsIds
  ){
    ${wishlistQuery.call()}
    user_errors {
      code
      message
    }
  }
}
''';

deleteWishlistMutation(String wishlistId) => '''
mutation{
  deleteWishlist(wishlistId: $wishlistId){
    status
    deleted_wishlist_ids
    error_messages
    ${wishlistsQuery.call()}
  }
}
''';
