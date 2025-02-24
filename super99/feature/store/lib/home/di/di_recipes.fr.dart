import 'package:core/di/data_provider.fr.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:store/home/data/datasource/recipes_datasource.dart';
import 'package:store/home/data/datasource/recipes_datasource_impl.dart';
import 'package:store/home/data/repository/recipes_repository.dart';
import 'package:store/home/data/repository/recipes_repository_impl.dart';
import 'package:store/home/domain/use_case/get_recipes_by_product_id_use_case.dart';

part 'di_recipes.fr.g.dart';

@riverpod
RecipesDatasource getRecipesDatasource(GetRecipesDatasourceRef ref) {
  return RecipesDatasourceImpl(ref.watch(graphQLServiceSourceNoAuthenticatedProvider.call(useGet: false)));
}

@riverpod
RecipesRepository getRecipesRepository(GetRecipesRepositoryRef ref) {
  return RecipesRepositoryImpl(ref.watch(getRecipesDatasourceProvider));
}

@riverpod
GetRecipesByProductIdUseCase getGetRecipesByProductIdUseCase(GetGetRecipesByProductIdUseCaseRef ref) {
  return GetRecipesByProductIdUseCase(ref.watch(getRecipesRepositoryProvider));
}
