import 'package:core/data/dto/wishlist_dto.fr.dart';
import 'package:core/utils/error_handler/error_handler.dart';
import 'package:dartz/dartz.dart';

import '../../../domain/entity/wishlist/wishlist_product_entity.dart';

abstract class WishListDataSource {
  Future<Either<ErrorHandler, WishListDTO>> createWishList({required String name});
  Future<Either<ErrorHandler, WishListDTO>> addProductWishList({
    required List<WishListProductAddInfo> wishlistProducts,
    required int wishlistId,
  });
  Future<Either<ErrorHandler, WishListDeleteDTO>> deleteWishList({required String wishlistIds});
  Future<Either<ErrorHandler, WishListDTO>> addProductsToCartFromWishList({
    required int wishlistId,
    required List<int> wishlistItemIds,
  });
  Future<Either<ErrorHandler, WishListDTO>> removeProductFromWishList({
    required int wishlistId,
    required List<int> ids,
  });
  Future<Option<ErrorHandler>> updateWishlist({
    required int wishlistId,
    required String name,
  });
  Future<Either<ErrorHandler, WishListDTO>> updateProductsInWishlist({
    required List<WishListProductUpdateInfo> wishlistProducts,
    required int wishlistId,
  });
}
