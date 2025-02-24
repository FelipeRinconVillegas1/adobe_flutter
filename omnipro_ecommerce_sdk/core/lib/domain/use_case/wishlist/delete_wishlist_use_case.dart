import 'package:core/data/repository/wishlist/wishlist_repository.dart';
import 'package:dartz/dartz.dart';

import '../../../utils/error_handler/error_handler.dart';
import '../../entity/wishlist.fr.dart';

class DeleteWishlistUseCase {
  DeleteWishlistUseCase(this._wishListRepository);

  final WishListRepository _wishListRepository;

  Future<Either<ErrorHandler, WishListDeleteEntity>> call(String wishlistIds) async {
    return _wishListRepository.deleteWishList(wishlistIds: wishlistIds);
  }
}
