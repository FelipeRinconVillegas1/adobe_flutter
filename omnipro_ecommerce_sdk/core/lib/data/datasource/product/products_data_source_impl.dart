import 'package:core/data/datasource/product/products_by_filter_query.dart';
import 'package:core/data/datasource/product/products_query.dart';
import 'package:core/data/datasource/secure_call_datasource.dart';
import 'package:core/data/dto/products_dto.fr.dart';
import 'package:core/utils/error_handler/error_handler.dart';
import 'package:core/data/datasource/product/producst_data_source.dart';
import 'package:core/network/graphql/graphql_service.dart';
import 'package:dartz/dartz.dart';

class ProductsDataSourceImpl implements ProductsDataSource {
  ProductsDataSourceImpl(this._graphQLService);

  final GraphQLService _graphQLService;

  @override
  Future<Either<ErrorHandler, ProductsDTO>> getProductsByCategoryUid(String uid) {
    return secureServerCall(
      () async {
        final response = await _graphQLService.query(getProductsByCategoryUidQuery(uid));

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
  Future<Either<ErrorHandler, ProductsDTO>> getProductsBySku(List<String> skus) {
    return secureServerCall(
      () async {
        final response = await _graphQLService.query(getProductsBySkuQuery(skus));

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
  Future<Either<ErrorHandler, ProductsDTO>> getProductsByCategoryUidByFilter(
      {required Map<String, dynamic> filters,
      required int pageSize,
      required int currentPage,
      required Map<String, dynamic> orderProducts}) async {
    return secureServerCall(
      () async {
        final String query = getProductsByCategoryUidByFilterQuery();
        final response = await _graphQLService.query(query,
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
}
