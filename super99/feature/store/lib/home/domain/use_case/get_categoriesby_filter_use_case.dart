import 'package:core/domain/entity/categories.dart';
import 'package:core/utils/error_handler/error_handler.dart';
import 'package:dartz/dartz.dart';
import 'package:store/home/data/repository/categories_repository.dart';

class GetCategoriesByFilterUseCase {
  GetCategoriesByFilterUseCase(this._categoriesRepository);

  final CategoriesRepository _categoriesRepository;

  Future<Either<ErrorHandler, Categories>> call({
    required Map<String, dynamic> filter,
    int? pageSize,
    int? currentPage,
  }) {
    return _categoriesRepository.getCategoriesByFilter(filter: filter, pageSize: pageSize, currentPage: currentPage);
  }
}
