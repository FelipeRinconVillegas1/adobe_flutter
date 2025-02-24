import 'package:core/data/repository/products/products_repository_impl.dart';
import 'package:core/di/data_provider.fr.dart';
import 'package:core/domain/use_case/products/get_products_by_category_uid_filter_use_case.dart';
import 'package:core/domain/use_case/products/get_products_by_category_uid_use_case.dart';
import 'package:core/domain/use_case/products/get_products_by_sku_use_case.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:core/data/datasource/product/producst_data_source.dart';
import 'package:core/data/datasource/product/products_data_source_impl.dart';
import 'package:core/data/repository/products/products_repository.dart';

part 'di_products.fr.g.dart';

@riverpod
GetProductsByCategoryUidUseCase getProductsByCategoryUidUseCase(GetProductsByCategoryUidUseCaseRef ref) {
  return GetProductsByCategoryUidUseCase(ref.watch(productsRepositoryProvider));
}

@riverpod
GetProductsByCategoryUidFilterUseCase getProductsByCategoryUidFilterUseCase(
    GetProductsByCategoryUidFilterUseCaseRef ref) {
  return GetProductsByCategoryUidFilterUseCase(ref.watch(productsRepositoryProvider));
}

@riverpod
GetProductsBySkuUseCase getProductsBySkuUseCase(GetProductsBySkuUseCaseRef ref) {
  return GetProductsBySkuUseCase(ref.watch(productsRepositoryProvider));
}

@riverpod
ProductsRepository productsRepository(ProductsRepositoryRef ref) {
  return ProductsRepositoryImpl(ref.watch(productsDataSourceProvider));
}

@riverpod
ProductsDataSource productsDataSource(ProductsDataSourceRef ref) {
  return ProductsDataSourceImpl(ref.watch(graphQLServiceSourceNoAuthenticatedProvider.call(useGet: true)));
  /// diego, lo cambie de ref.watch(graphQLServiceSourceProvider) a ref.watch(graphQLServiceSourceUseGetNoAuthenticatedProvider)
}

@Riverpod(keepAlive: true)
ProductsRepository productsRepositoryWithKeepAlive(ProductsRepositoryWithKeepAliveRef ref) {
  return ProductsRepositoryImpl(ref.watch(productsDataSourceWithKeepAliveProvider));
}

@Riverpod(keepAlive: true)
ProductsDataSource productsDataSourceWithKeepAlive(ProductsDataSourceWithKeepAliveRef ref) {
  return ProductsDataSourceImpl(ref.watch(graphQLServiceSourceNoAuthenticatedProvider.call(useGet: true)));
  /// diego, lo cambie de ref.watch(graphQLServiceSourceProvider) a ref.watch(graphQLServiceSourceUseGetNoAuthenticatedProvider)
}

