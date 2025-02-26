import 'package:dartz/dartz.dart';
import 'package:core/utils/error_handler/error_handler.dart';
import 'package:core/data/datasource/secure_call_datasource.dart';
import 'package:core/network/graphql/graphql_service.dart';
import '../dto/response/categories_dto.fr.dart';
import 'categories_data_source.dart';
import 'categories_query.dart';

class CategoriesDataSourceImpl implements CategoriesDataSource {
  CategoriesDataSourceImpl(this._graphQLService);

  final GraphQLService _graphQLService;

  @override
  Future<Either<ErrorHandler, CategoriesDTO>> getCategoriesByFilter({
    required Map<String, dynamic> filter,
    int? pageSize,
    int? currentPage,
  }) {
    return secureServerCall(() async {
      final response = await _graphQLService.query(
        getCategoriesQuery(),
        variables: {"pageSize": pageSize ?? 100, "currentPage": currentPage ?? 1, "filter": filter, 'customSorting': 1},
      );

      return response.fold(
        (l) => left(l),
        (categoriesData) => right(CategoriesDTO.fromJson(categoriesData.data!['categories'])),
      );
    });
  }
}
