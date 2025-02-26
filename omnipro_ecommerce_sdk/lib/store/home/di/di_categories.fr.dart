import 'package:core/di/data_provider.fr.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../data/datasource/categories_data_source.dart';
import '../data/datasource/categories_data_source_impl.dart';
import '../data/repository/categories_repository.dart';
import '../data/repository/categories_repository_impl.dart';
import '../domain/use_case/get_categoriesby_filter_use_case.dart';

part 'di_categories.fr.g.dart';

@riverpod
GetCategoriesByFilterUseCase getCategoriesByFilterUseCase(GetCategoriesByFilterUseCaseRef ref) {
  return GetCategoriesByFilterUseCase(ref.watch(categoriesRepositoryProvider));
}

@riverpod
CategoriesRepository categoriesRepository(CategoriesRepositoryRef ref) {
  return CategoriesRepositoryImpl(ref.watch(categoriesDataSourceProvider));
}

@riverpod
CategoriesDataSource categoriesDataSource(CategoriesDataSourceRef ref) {
  return CategoriesDataSourceImpl(ref.watch(graphQLServiceSourceNoAuthenticatedProvider.call(useGet: true)));
}
