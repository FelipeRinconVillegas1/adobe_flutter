import 'package:core/data/datasource/stores/stores_datasource.dart';
import 'package:core/data/repository/stores/stores_repository.dart';
import 'package:core/domain/use_case/stores/get_favorite_store_use_case.dart';
import 'package:core/domain/use_case/stores/get_store_pickup_use_case.dart';
import 'package:core/domain/use_case/stores/get_stores_by_filter_use_case.dart';
import 'package:core/domain/use_case/stores/save_favorite_store_use_case.dart';
import 'package:core/domain/use_case/stores/save_store_pickup_use_case.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../data/datasource/stores/stores_datasource_impl.dart';
import '../../data/repository/stores/stores_repository_impl.dart';
import '../../local/di_secure_storage.fr.dart';
import '../data_provider.fr.dart';

part 'di_warhouses.fr.g.dart';

@Riverpod(keepAlive: true)
StoresDatasource storesDatasource(StoresDatasourceRef ref) {
  return StoresDatasourceImpl(ref.watch(graphQLServiceSourceNoAuthenticatedProvider.call(useGet: false)),
      ref.watch(secureStorageDatasourceSourceProvider), ref.watch(graphQLServiceSourceProvider));
}

@Riverpod(keepAlive: true)
StoresRepository storesRepository(StoresRepositoryRef ref) {
  return StoresRepositoryImpl(ref.watch(storesDatasourceProvider));
}

@Riverpod(keepAlive: true)
GetStoresByFilterUseCase getStoresByFilterUseCase(GetStoresByFilterUseCaseRef ref) {
  return GetStoresByFilterUseCase(ref.watch(storesRepositoryProvider));
}

@Riverpod(keepAlive: true)
GetLocalStorePickupSelectedUseCase getLocalStorePickupSelectedUseCase(GetLocalStorePickupSelectedUseCaseRef ref) {
  return GetLocalStorePickupSelectedUseCase(ref.watch(storesRepositoryProvider));
}

@Riverpod(keepAlive: true)
SaveLocalStorePickUpUseCase saveLocalStorePickUpUseCase(SaveLocalStorePickUpUseCaseRef ref) {
  return SaveLocalStorePickUpUseCase(ref.watch(storesRepositoryProvider));
}

@Riverpod(keepAlive: true)
GetFavoriteStoreUseCase getFavoriteStoreUseCase(GetFavoriteStoreUseCaseRef ref) {
  return GetFavoriteStoreUseCase(ref.watch(storesRepositoryProvider));
}

@Riverpod(keepAlive: true)
SaveFavoriteStoreUseCase saveFavoriteStoreUseCase(SaveFavoriteStoreUseCaseRef ref) {
  return SaveFavoriteStoreUseCase(ref.watch(storesRepositoryProvider));
}
