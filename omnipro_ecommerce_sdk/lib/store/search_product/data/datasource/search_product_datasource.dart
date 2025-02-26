import 'package:core/data/datasource/secure_call_datasource.dart';
import 'package:core/data/dto/products_dto.fr.dart';
import 'package:core/data/dto/products_search_dto.fr.dart';
import 'package:core/network/graphql/graphql_service.dart';
import 'package:core/utils/error_handler/error_handler.dart';
import 'package:graphql/src/core/query_result.dart';
import 'package:dartz/dartz.dart';
import 'package:omnipro_ecommerce_sdk/store/search_product/data/datasource/product_query.dart';
import '../dto/popular_search.fr.dart';
import '../dto/recent_search.fr.dart';

abstract class SearchProductDataSource {
  Future<Either<ErrorHandler, ProductsSearchDTO>> getProductsByName(String productName);
  Future<Either<ErrorHandler, PopularSearchDTO>> getPopularSearches({bool isGuestUser = false});
  Future<Either<ErrorHandler, RecentSearchDTO>> getRecentSearches({bool isGuestUser = false});

  Future<Either<ErrorHandler, ProductsDTO>> getProductsByFilter(
    String productName,
    Map<String, dynamic> filters,
    Map<String, dynamic> orderProducts,
  );
  Future<Either<ErrorHandler, ProductsDTO>> getProductsByFilterWithPagination({
    required String productName,
    required Map<String, dynamic> filters,
    required int pageSize,
    required int currentPage,
    required Map<String, dynamic> orderProducts,
  });
}

class SearchProductDataSourceImpl implements SearchProductDataSource {
  SearchProductDataSourceImpl(this._graphQLService, this._graphQLServiceNoAuthenticated);

  final GraphQLService _graphQLService;
  final GraphQLService _graphQLServiceNoAuthenticated;

  @override
  Future<Either<ErrorHandler, ProductsSearchDTO>> getProductsByName(String productName) {
    return secureServerCall(
      () async {
        final response = await _graphQLService.query(getProductsByNameXSearchQuery(productName));
        return response.fold(
          (l) => left(l),
          (productsData) => right(
            ProductsSearchDTO.fromJson(productsData.data!['xsearchProducts']),
          ),
        );
      },
    );
  }

  @override
  Future<Either<ErrorHandler, ProductsDTO>> getProductsByFilter(
    String productName,
    Map<String, dynamic> filters,
    Map<String, dynamic> orderProducts,
  ) {
    return secureServerCall(
      () async {
        final response = await _graphQLService.query(getProductsByNamePriceQuery(productName),
            variables: {"pageSize": 30, "currentPage": 1, "filter": filters, 'sort': orderProducts});
        return response.fold(
          (l) => left(l),
          (productsData) => right(
            ProductsDTO.fromJson(productsData.data!['products']),
          ),
        );
      },
    );
  }

  @override
  Future<Either<ErrorHandler, ProductsDTO>> getProductsByFilterWithPagination({
    required String productName,
    required Map<String, dynamic> filters,
    required int pageSize,
    required int currentPage,
    required Map<String, dynamic> orderProducts,
  }) {
    return secureServerCall(
      () async {
        final response = await _graphQLService.query(getProductsBySearchTerm(productName),
            variables: {"pageSize": pageSize, "currentPage": currentPage, "filter": filters, 'sort': orderProducts});
        return response.fold(
          (l) => left(l),
          (productsData) => right(
            ProductsDTO.fromJson(productsData.data!['products']),
          ),
        );
      },
    );
  }

  @override
  Future<Either<ErrorHandler, PopularSearchDTO>> getPopularSearches({bool isGuestUser = false}) async {
    return secureServerCall(
      () async {
        final String query = getPopularSearch();
        late Either<ErrorHandler, QueryResult<Object?>> response;
        if (isGuestUser) {
          response = await _graphQLServiceNoAuthenticated.query(
            query,
          );
        } else {
          response = await _graphQLService.query(
            query,
          );
        }
        return response.fold(
          (l) => left(l),
          (popularSearch) => right(
            PopularSearchDTO.fromJson(popularSearch.data!['xsearchPopularSearches']),
          ),
        );
      },
    );
  }

  @override
  Future<Either<ErrorHandler, RecentSearchDTO>> getRecentSearches({bool isGuestUser = false}) {
    return secureServerCall(
      () async {
        final String query = getRecentSearch();
        late Either<ErrorHandler, QueryResult<Object?>> response;
        if (isGuestUser) {
          response = await _graphQLServiceNoAuthenticated.query(
            query,
          );
        } else {
          response = await _graphQLService.query(
            query,
          );
        }
        return response.fold(
          (l) => left(l),
          (recentSearch) => right(
            RecentSearchDTO.fromJson(recentSearch.data!['xsearchRecentSearches']),
          ),
        );
      },
    );
  }
}
