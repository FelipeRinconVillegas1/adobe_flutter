import 'package:core/utils/error_handler/error_handler.dart';
import 'package:core/domain/entity/categories.dart';
import 'package:dartz/dartz.dart';

abstract class CategoriesRepository {
  Future<Either<ErrorHandler, Categories>> getCategoriesByFilter(
      {required Map<String, dynamic> filter, int? pageSize, int? currentPage});
}
