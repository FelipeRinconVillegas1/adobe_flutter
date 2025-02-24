import 'package:core/utils/error_handler/error_handler.dart';
import 'package:dartz/dartz.dart';

import '../dto/response/recipe_item_dto.fr.dart';

abstract class RecipesDatasource {
  Future<Either<ErrorHandler, List<RecipeItemDTO>>> getRecipes(
      {required int entityId, required int pageSize, required int currentPage});
}
