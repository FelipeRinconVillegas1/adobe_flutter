import 'package:core/domain/entity/wishlist.fr.dart';
import 'package:core/utils/error_handler/error_handler.dart';
import 'package:dartz/dartz.dart';

import '../../../domain/entity/wishlist/wishlist_product_entity.dart';

abstract class WishListRepository {
  Future<Either<ErrorHandler, WishList>> createWishList({required String name});
  Future<Either<ErrorHandler, WishList>> addProductWishList({
    required List<WishListProductAddInfo> wishlistProducts,
    required int wishlistId,
  });
  Future<Either<ErrorHandler, WishList>> updateProductsInWishList({
    required List<WishListProductUpdateInfo> wishlistProducts,
    required int wishlistId,
  });
  Future<Either<ErrorHandler, WishListDeleteEntity>> deleteWishList({required String wishlistIds});
  Future<Either<ErrorHandler, WishList>> addProductsToCartFromWishList({
    required int wishlistId,
    required List<int> wishlistItemIds,
  });
  Future<Either<ErrorHandler, WishList>> removeProductFromWishList({
    required int wishlistId,
    required List<int> ids,
  });
  Future<Option<ErrorHandler>> updateWishlist({
    required int wishlistId,
    required String name,
  });
}
