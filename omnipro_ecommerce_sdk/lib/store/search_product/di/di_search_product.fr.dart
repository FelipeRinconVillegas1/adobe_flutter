import 'package:core/di/data_provider.fr.dart';
import 'package:core/di/use_cases_provider.fr.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../data/datasource/search_product_datasource.dart';
import '../data/repository/search_product_respository.dart';
import '../domain/use_case/get_all_products_by_filter_with_pagination_use_case.dart';
import '../domain/use_case/get_popular_searches_use_case.dart';
import '../domain/use_case/get_products_by_filter_use_case.dart';
import '../domain/use_case/get_products_by_name_use_case.dart';
import '../domain/use_case/get_recent_searches_use_case.dart';
import '../domain/use_case/get_waiting_time_serach_product.dart';

part 'di_search_product.fr.g.dart';

@riverpod
GetProductsByNameUseCase getProductsByNameUseCase(GetProductsByNameUseCaseRef ref) {
  return GetProductsByNameUseCase(ref.watch(searchProductRepositoryProvider));
}

@riverpod
GetProductsByFilterUseCase getProductsByFilterUseCase(GetProductsByFilterUseCaseRef ref) {
  return GetProductsByFilterUseCase(ref.watch(searchProductRepositoryProvider));
}

@riverpod
GetPopularSearchesUseCase getPopularSearchesUseCase(GetPopularSearchesUseCaseRef ref) {
  return GetPopularSearchesUseCase(
      ref.watch(searchProductRepositoryProvider), ref.watch(isCustomerLoggedInSourceProvider));
}

@riverpod
GetRecentSearchesUseCase getRecentSearchesUseCase(GetRecentSearchesUseCaseRef ref) {
  return GetRecentSearchesUseCase(
      ref.watch(searchProductRepositoryProvider), ref.watch(isCustomerLoggedInSourceProvider));
}

@riverpod
GetWaitingTimeSearchProductsUseCase getWaitingTimeSearchProductsUseCase(GetWaitingTimeSearchProductsUseCaseRef ref) {
  return GetWaitingTimeSearchProductsUseCase(ref.watch(searchProductRepositoryProvider));
}

@riverpod
SearchProductRepository searchProductRepository(SearchProductRepositoryRef ref) {
  return SearchProductRepositoryImpl(
      ref.watch(searchProductDataSourceProvider), ref.watch(remoteConfigDataSourceProvider));
}

@riverpod
SearchProductDataSource searchProductDataSource(SearchProductDataSourceRef ref) {
  return SearchProductDataSourceImpl(ref.watch(graphQLServiceSourceUsePOSTProvider),
      ref.watch(graphQLServiceSourceNoAuthenticatedProvider.call(useGet: false)));
}

@riverpod
GetAllProductsByFilterWithPaginationUseCase getAllProductsByFilterWithPaginationUseCase(
    GetAllProductsByFilterWithPaginationUseCaseRef ref) {
  return GetAllProductsByFilterWithPaginationUseCase(ref.watch(searchProductRepositoryProvider));
}