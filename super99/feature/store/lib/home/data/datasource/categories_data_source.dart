import 'package:core/utils/error_handler/error_handler.dart';
import 'package:dartz/dartz.dart';
import 'package:store/home/data/dto/response/categories_dto.fr.dart';

abstract class CategoriesDataSource {
  Future<Either<ErrorHandler, CategoriesDTO>> getCategoriesByFilter(
      {required Map<String, dynamic> filter, int? pageSize, int? currentPage});
}
