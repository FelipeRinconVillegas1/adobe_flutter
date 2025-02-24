import 'package:dartz/dartz.dart';

import '../../../data/repository/wishlist/wishlist_repository.dart';
import '../../../utils/error_handler/error_handler.dart';
import '../../entity/wishlist.fr.dart';

class AddProductsToCartFromWishListUseCase {
  AddProductsToCartFromWishListUseCase(this._wishListRepository);

  final WishListRepository _wishListRepository;

  Future<Either<ErrorHandler, WishList>> call({
    required int wishlistId,
    required List<int> wishlistItemIds,
  }) async {
    return await _wishListRepository.addProductsToCartFromWishList(
        wishlistId: wishlistId, wishlistItemIds: wishlistItemIds);
  }
}
