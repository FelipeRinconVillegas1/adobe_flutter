import 'package:core/data/datasource/secure_call_datasource.dart';
import 'package:core/data/dto/wishlist_dto.fr.dart';
import 'package:core/network/graphql/graphql_service.dart';
import 'package:core/utils/error_handler/error_handler.dart';
import 'package:dartz/dartz.dart';

import '../../../domain/entity/wishlist/wishlist_product_entity.dart';
import 'wishlist_data_source.dart';
import 'wishlist_query.dart';

class WishListDataSourceImpl implements WishListDataSource {
  WishListDataSourceImpl(this._graphQLService);

  final GraphQLService _graphQLService;

  @override
  Future<Either<ErrorHandler, WishListDTO>> addProductWishList({
    required List<WishListProductAddInfo> wishlistProducts,
    required int wishlistId,
  }) {
    return secureServerCall(() async {
      final response = await _graphQLService.mutation(addProductWishListMutation(
        wishlistId: wishlistId,
        wishlistProducts: wishlistProducts,
      ));
      return response.fold(
          (l) => left(l), (r) => right(WishListDTO.fromJson(r.data!["addProductsToWishlist"]["wishlist"])));
    });
  }

  @override
  Future<Either<ErrorHandler, WishListDTO>> addProductsToCartFromWishList(
      {required int wishlistId, required List<int> wishlistItemIds}) async {
    return secureServerCall(() async {
      final response = await _graphQLService
          .mutation(addProductsToCartFromWishListMutation(wishlistId: wishlistId, wishlistItemIds: wishlistItemIds));
      return response.fold(
          (l) => left(l), (r) => right(WishListDTO.fromJson(r.data!["addWishlistItemsToCart"]["wishlist"])));
    });
  }

  @override
  Future<Either<ErrorHandler, WishListDTO>> createWishList({required String name}) {
    return secureServerCall(() async {
      final response = await _graphQLService.mutation(createWishListMutation(name: name));
      return response.fold((l) => left(l), (r) => right(WishListDTO.fromJson(r.data!["createWishlist"]["wishlist"])));
    });
  }

  @override
  Future<Either<ErrorHandler, WishListDeleteDTO>> deleteWishList({required String wishlistIds}) {
    return secureServerCall(() async {
      final response = await _graphQLService.mutation(deleteWishlistMutation('\"$wishlistIds\"'));

      return response.fold((l) => left(l), (r) {
        return right(WishListDeleteDTO.fromJson(r.data!["deleteWishlist"]));
      });
    });
  }

  @override
  Future<Either<ErrorHandler, WishListDTO>> removeProductFromWishList({
    required int wishlistId,
    required List<int> ids,
  }) {
    return secureServerCall(() async {
      final response = await _graphQLService
          .mutation(removeProductFromWishListMutation(wishlistId: wishlistId, wishlistItemsIds: ids));

      return response.fold(
          (l) => left(l), (r) => right(WishListDTO.fromJson(r.data!["removeProductsFromWishlist"]["wishlist"])));
    });
  }

  @override
  Future<Option<ErrorHandler>> updateWishlist({required int wishlistId, required String name}) {
    return secureServerCallOption(() async {
      final response = await _graphQLService.mutation(updateWishlistMutation(wishlistId: wishlistId, name: name));
      return response.fold((l) => Some(l), (r) => const None());
    });
  }

  @override
  Future<Either<ErrorHandler, WishListDTO>> updateProductsInWishlist(
      {required List<WishListProductUpdateInfo> wishlistProducts, required int wishlistId}) {
    return secureServerCall(() async {
      final response = await _graphQLService
          .mutation(updateProductsInWishListMutation(wishlistId: wishlistId, wishlistProducts: wishlistProducts));
      return response.fold(
          (l) => left(l), (r) => right(WishListDTO.fromJson(r.data!["updateProductsInWishlist"]["wishlist"])));
    });
  }
}
