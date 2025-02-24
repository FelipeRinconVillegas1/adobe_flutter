import 'package:core/domain/entity/wishlist.fr.dart';
import 'package:core/utils/error_handler/error_handler.dart';
import 'package:dartz/dartz.dart';

import '../../../data/repository/wishlist/wishlist_repository.dart';
import '../../entity/wishlist/wishlist_product_entity.dart';

class UpdateProductsInWishlistsUseCase {
  UpdateProductsInWishlistsUseCase(this._wishListRepository);
  final WishListRepository _wishListRepository;

  Future<Either<ErrorHandler, WishList>> call({
    required List<WishListProductUpdateInfo> wishlistProducts,
    required int wishlistId,
  }) async {
    return await _wishListRepository.updateProductsInWishList(
      wishlistProducts: wishlistProducts,
      wishlistId: wishlistId,
    );
  }
}
