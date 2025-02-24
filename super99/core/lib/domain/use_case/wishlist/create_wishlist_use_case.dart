import 'package:core/domain/entity/wishlist.fr.dart';
import 'package:core/utils/error_handler/error_handler.dart';
import 'package:dartz/dartz.dart';

import '../../../data/repository/wishlist/wishlist_repository.dart';

class CreateWishListUseCase {
  CreateWishListUseCase(this._wishListRepository);

  final WishListRepository _wishListRepository;

  Future<Either<ErrorHandler, WishList>> call(String name) async {
    return await _wishListRepository.createWishList(name: name);
  }
}
