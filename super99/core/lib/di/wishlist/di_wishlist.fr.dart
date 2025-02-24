import 'package:core/di/data_provider.fr.dart';
import 'package:core/domain/use_case/wishlist/update_products_in_wishlist_use_case.dart';
import 'package:core/domain/use_case/wishlist/update_wishlist_use_case.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../data/datasource/wishlist/wishlist_data_source.dart';
import '../../data/datasource/wishlist/wishlist_data_source_impl.dart';
import '../../data/repository/wishlist/wishlist_repository.dart';
import '../../data/repository/wishlist/wishlist_repository_impl.dart';
import '../../domain/use_case/wishlist/add_products_to_cart_wishlist_use_case.dart';
import '../../domain/use_case/wishlist/add_products_wishlist_use_case.dart';
import '../../domain/use_case/wishlist/create_wishlist_use_case.dart';
import '../../domain/use_case/wishlist/delete_wishlist_use_case.dart';
import '../../domain/use_case/wishlist/remove_product_wishlist_use_case.dart';

part 'di_wishlist.fr.g.dart';

@Riverpod(keepAlive: true)
DeleteWishlistUseCase deleteWishlistUseCase(DeleteWishlistUseCaseRef ref) {
  return DeleteWishlistUseCase(ref.watch(wishListRepositoryProvider));
}

@Riverpod(keepAlive: true)
RemoveProductWishlistUseCase removeProductWishlistUseCase(RemoveProductWishlistUseCaseRef ref) {
  return RemoveProductWishlistUseCase(ref.watch(wishListRepositoryProvider));
}

@Riverpod(keepAlive: true)
AddProductsToCartFromWishListUseCase addProductsToCartFromWishList(AddProductsToCartFromWishListRef ref) {
  return AddProductsToCartFromWishListUseCase(ref.watch(wishListRepositoryProvider));
}

@Riverpod(keepAlive: true)
UpdateWishlistUseCase updateWishlistUseCase(UpdateWishlistUseCaseRef ref) {
  return UpdateWishlistUseCase(ref.watch(wishListRepositoryProvider));
}

@Riverpod(keepAlive: true)
AddProductsWishlistUseCase addProductsWishlistUseCase(AddProductsWishlistUseCaseRef ref) {
  return AddProductsWishlistUseCase(ref.watch(wishListRepositoryProvider));
}

@Riverpod(keepAlive: true)
UpdateProductsInWishlistsUseCase updateProductsInWishlistsUseCase(UpdateProductsInWishlistsUseCaseRef ref) {
  return UpdateProductsInWishlistsUseCase(ref.watch(wishListRepositoryProvider));
}

@Riverpod(keepAlive: true)
CreateWishListUseCase createWishListUseCase(CreateWishListUseCaseRef ref) {
  return CreateWishListUseCase(ref.watch(wishListRepositoryProvider));
}

@Riverpod(keepAlive: true)
WishListRepository wishListRepository(WishListRepositoryRef ref) {
  return WishListRepositoryImpl(ref.watch(wishListDataSourceProvider));
}

@Riverpod(keepAlive: true)
WishListDataSource wishListDataSource(WishListDataSourceRef ref) {
  return WishListDataSourceImpl(ref.watch(graphQLServiceSourceProvider));
}
