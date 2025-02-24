import 'package:core/utils/error_handler/error_handler.dart';
import 'package:dartz/dartz.dart';

import '../../../data/repository/wishlist/wishlist_repository.dart';

class UpdateWishlistUseCase {
  UpdateWishlistUseCase(this._wishListRepository);
  final WishListRepository _wishListRepository;

  Future<Option<ErrorHandler>> call({required int wishlistId, required String name}) {
    return _wishListRepository.updateWishlist(wishlistId: wishlistId, name: name);
  }
}
