import 'package:core/data/datasource/config/store_config_datasource.dart';
import 'package:core/data/repository/config/store_config_repository.fr.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../data/datasource/config/store_config_datasource_impl.dart';
import '../../data/repository/config/store_config_repository_impl.fr.dart';
import '../../domain/use_case/config/get_store_config_use_case.dart';
import '../data_provider.fr.dart';

part 'di_config.fr.g.dart';

@Riverpod(keepAlive: true)
StoreConfigDatasource storeConfigDatasource(StoreConfigDatasourceRef ref) {
  return StoreConfigDatasourceImpl(ref.watch(graphQLServiceSourceProvider));
}

@Riverpod(keepAlive: true)
StoreConfigRepository storeConfigRepositoryUseCase(StoreConfigRepositoryUseCaseRef ref) {
  return StoreConfigRepositoryImpl(ref.watch(storeConfigDatasourceProvider));
}

@Riverpod(keepAlive: true)
GetConfigStoreCase getConfigStoreCase(GetConfigStoreCaseRef ref) {
  return GetConfigStoreCase(ref.watch(storeConfigRepositoryUseCaseProvider));
}