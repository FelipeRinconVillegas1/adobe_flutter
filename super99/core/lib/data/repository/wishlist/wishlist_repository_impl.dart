import 'package:core/data/mapper.dart';
import 'package:core/domain/entity/wishlist.fr.dart';
import 'package:core/utils/error_handler/error_handler.dart';
import 'package:dartz/dartz.dart';

import '../../../domain/entity/wishlist/wishlist_product_entity.dart';
import '../../datasource/wishlist/wishlist_data_source.dart';
import 'wishlist_repository.dart';

class WishListRepositoryImpl implements WishListRepository {
  WishListRepositoryImpl(this._wishlistDataSource);

  final WishListDataSource _wishlistDataSource;

  @override
  Future<Either<ErrorHandler, WishList>> addProductWishList({
    required List<WishListProductAddInfo> wishlistProducts,
    required int wishlistId,
  }) async {
    final response =
        await _wishlistDataSource.addProductWishList(wishlistProducts: wishlistProducts, wishlistId: wishlistId);
    return response.fold((l) => left(l), (r) => right(r.toDomain()));
  }

  @override
  Future<Either<ErrorHandler, WishList>> addProductsToCartFromWishList(
      {required int wishlistId, required List<int> wishlistItemIds}) async {
    final response = await _wishlistDataSource.addProductsToCartFromWishList(
        wishlistId: wishlistId, wishlistItemIds: wishlistItemIds);
    return response.fold((l) => left(l), (r) => right(r.toDomain()));
  }

  @override
  Future<Either<ErrorHandler, WishList>> createWishList({required String name}) async {
    final response = await _wishlistDataSource.createWishList(name: name);
    return response.fold((l) => left(l), (r) => right(r.toDomain()));
  }

  @override
  Future<Either<ErrorHandler, WishListDeleteEntity>> deleteWishList({required String wishlistIds}) async {
    final response = await _wishlistDataSource.deleteWishList(wishlistIds: wishlistIds);
    return response.fold((l) => left(l), (r) => right(r.toDomain()));
  }

  @override
  Future<Either<ErrorHandler, WishList>> removeProductFromWishList({
    required int wishlistId,
    required List<int> ids,
  }) async {
    final response = await _wishlistDataSource.removeProductFromWishList(wishlistId: wishlistId, ids: ids);
    return response.fold((l) => left(l), (r) => right(r.toDomain()));
  }

  @override
  Future<Option<ErrorHandler>> updateWishlist({required int wishlistId, required String name}) {
    return _wishlistDataSource.updateWishlist(wishlistId: wishlistId, name: name);
  }

  @override
  Future<Either<ErrorHandler, WishList>> updateProductsInWishList(
      {required List<WishListProductUpdateInfo> wishlistProducts, required int wishlistId}) async {
    final response =
        await _wishlistDataSource.updateProductsInWishlist(wishlistProducts: wishlistProducts, wishlistId: wishlistId);
    return response.fold((l) => left(l), (r) => right(r.toDomain()));
  }
}
