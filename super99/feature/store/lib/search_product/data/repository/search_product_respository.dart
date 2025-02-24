import 'package:core/data/datasource/remote_config_datasource.dart';
import 'package:core/data/dto/products_mapper.dart';
import 'package:core/data/repository/remote_config_key.dart';
import 'package:core/domain/entity/products.dart';
import 'package:core/utils/error_handler/error_code.dart';
import 'package:core/utils/error_handler/error_handler.dart';
import 'package:dartz/dartz.dart';
import 'package:store/search_product/data/datasource/search_product_datasource.dart';
import 'package:store/search_product/data/dto/mapper.dart';
import 'package:store/search_product/domain/entity/item_popular.dart';
import 'package:store/search_product/domain/entity/item_recent.dart';
import 'package:core/domain/entity/products_search_entity.dart';

abstract class SearchProductRepository {
  Future<Either<ErrorHandler, ProductsSearch>> getProductsByName(String productName);
  Future<Either<ErrorHandler, List<ItemPopular>>> getPopularSearches({bool isGuestUser = false});
  Future<Either<ErrorHandler, List<ItemRecent>>> getRecentSearches({bool isGuestUser = false});

  Future<Either<ErrorHandler, int>> getWaitingTimeSearchProduct();
  Future<Either<ErrorHandler, Products>> getProductsByFilter(
    String productName,
    Map<String, dynamic> filters,
    Map<String, dynamic> orderProducts,
  );
  Future<Either<ErrorHandler, Products>> getProductsByFilterWithPagination({
    required String productName,
    required Map<String, dynamic> filters,
    required int pageSize,
    required int currentPage,
    required Map<String, dynamic> orderProducts,
  });
}

class SearchProductRepositoryImpl implements SearchProductRepository {
  final SearchProductDataSource _searchProductDataSource;
  final RemoteConfigDataSource _remoteConfigDataSource;

  SearchProductRepositoryImpl(this._searchProductDataSource, this._remoteConfigDataSource);

  @override
  Future<Either<ErrorHandler, ProductsSearch>> getProductsByName(String productName) async {
    try {
      final result = await _searchProductDataSource.getProductsByName(productName);
      return result.fold((l) => left(l), (r) => right(r.toDomain()));
    } catch (e) {
      return left(ErrorHandlerExternal(errorCode: ErrorCode.errorGetSearchProduct, errorMessage: e.toString()));
    }
  }

  @override
  Future<Either<ErrorHandler, int>> getWaitingTimeSearchProduct() async {
    try {
      final waitingTimeProductSearch = _remoteConfigDataSource.getInt(RemoteConfigKey.waitingTimeProductSearch);
      return Right(waitingTimeProductSearch);
    } catch (e) {
      return left(ErrorHandlerExternal(errorCode: ErrorCode.errorGetWaitingTimeSearch, errorMessage: e.toString()));
    }
  }

  @override
  Future<Either<ErrorHandler, Products>> getProductsByFilter(
    String productName,
    Map<String, dynamic> filters,
    Map<String, dynamic> orderProducts,
  ) async {
    try {
      final result = await _searchProductDataSource.getProductsByFilter(productName, filters, orderProducts);
      return result.fold((l) => left(l), (r) => right(r.toDomain()));
    } catch (e) {
      return left(ErrorHandlerExternal(errorCode: ErrorCode.errorGetSearchProduct, errorMessage: e.toString()));
    }
  }

  @override
  Future<Either<ErrorHandler, Products>> getProductsByFilterWithPagination({
    required String productName,
    required Map<String, dynamic> filters,
    required int pageSize,
    required int currentPage,
    required Map<String, dynamic> orderProducts,
  }) async {
    try {
      final result = await _searchProductDataSource.getProductsByFilterWithPagination(
          productName: productName,
          filters: filters,
          pageSize: pageSize,
          currentPage: currentPage,
          orderProducts: orderProducts);
      return result.fold((l) => left(l), (r) => right(r.toDomain()));
    } catch (e) {
      return left(ErrorHandlerExternal(errorCode: ErrorCode.errorGetAllProducts, errorMessage: e.toString()));
    }
  }

  @override
  Future<Either<ErrorHandler, List<ItemPopular>>> getPopularSearches({bool isGuestUser = false}) async {
    try {
      final result = await _searchProductDataSource.getPopularSearches(isGuestUser: isGuestUser);
      return result.fold((l) => left(l), (r) => right(r.items.map((e) => e.toDomain()).toList()));
    } catch (e) {
      return left(ErrorHandlerExternal(errorCode: ErrorCode.errorGetPopularSearch, errorMessage: e.toString()));
    }
  }

  @override
  Future<Either<ErrorHandler, List<ItemRecent>>> getRecentSearches({bool isGuestUser = false}) async {
    try {
      final result = await _searchProductDataSource.getRecentSearches(isGuestUser: isGuestUser);
      return result.fold((l) => left(l), (r) => right(r.items.map((e) => e.toDomain()).toList()));
    } catch (e) {
      return left(ErrorHandlerExternal(errorCode: ErrorCode.errorGetPopularSearch, errorMessage: e.toString()));
    }
  }
}
