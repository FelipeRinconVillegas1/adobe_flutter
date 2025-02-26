import 'package:dartz/dartz.dart';
import 'package:core/utils/error_handler/error_handler.dart';
import 'package:core/domain/entity/categories.dart';
import 'package:omnipro_ecommerce_sdk/store/home/data/mapper/categories_mapper.dart';
import '../datasource/categories_data_source.dart';
import 'categories_repository.dart';

class CategoriesRepositoryImpl implements CategoriesRepository {
  CategoriesRepositoryImpl(this._categoriesDataSource);

  final CategoriesDataSource _categoriesDataSource;

  @override
  Future<Either<ErrorHandler, Categories>> getCategoriesByFilter(
      {required Map<String, dynamic> filter, int? pageSize, int? currentPage}) {
    final result =
        _categoriesDataSource.getCategoriesByFilter(filter: filter, pageSize: pageSize, currentPage: currentPage);
    return result.then((value) => value.fold((l) => left(l), (r) => right(r.toDomain())));
  }
}
