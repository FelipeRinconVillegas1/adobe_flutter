import 'package:core/data/datasource/internal_database/internal_database_datasource.dart';
import 'package:core/data/datasource/internal_database/internal_database_datasource_impl.dart';
import 'package:core/data/repository/internal_database/internal_database_repository.dart';
import 'package:core/data/repository/internal_database/internal_database_repository_impl.dart';
import 'package:core/domain/use_case/internal_database/delete_all_internal_database_usecase.dart';
import 'package:core/domain/use_case/internal_database/delete_value_internal_database_usecase.dart';
import 'package:core/domain/use_case/internal_database/get_value_internal_database_usecase.dart';
import 'package:core/domain/use_case/internal_database/init_internal_database_usecase.dart';
import 'package:core/domain/use_case/internal_database/set_value_internal_database_usecase.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'di_internal_database.fr.g.dart';

@Riverpod(keepAlive: true)
GetValueInternalDatabaseUseCase getValueInternalDatabaseUseCase(GetValueInternalDatabaseUseCaseRef ref) {
  return GetValueInternalDatabaseUseCase(internalDatabaseRepository: ref.watch(internalDatabaseRepositoryProvider));
}

@Riverpod(keepAlive: true)
DeleteAllInternalDatabaseUseCase deleteAllInternalDatabaseUseCase(DeleteAllInternalDatabaseUseCaseRef ref) {
  return DeleteAllInternalDatabaseUseCase(internalDatabaseRepository: ref.watch(internalDatabaseRepositoryProvider));
}

@Riverpod(keepAlive: true)
DeleteValueInternalDatabaseUseCase deleteValueInternalDatabaseUseCase(DeleteValueInternalDatabaseUseCaseRef ref) {
  return DeleteValueInternalDatabaseUseCase(internalDatabaseRepository: ref.watch(internalDatabaseRepositoryProvider));
}

@Riverpod(keepAlive: true)
InitInternalDatabaseUseCase initInternalDatabaseUseCase(InitInternalDatabaseUseCaseRef ref) {
  return InitInternalDatabaseUseCase(internalDatabaseRepository: ref.watch(internalDatabaseRepositoryProvider));
}

@Riverpod(keepAlive: true)
SetValueInternalDatabaseUseCase setValueInternalDatabaseUseCase(SetValueInternalDatabaseUseCaseRef ref) {
  return SetValueInternalDatabaseUseCase(internalDatabaseRepository: ref.watch(internalDatabaseRepositoryProvider));
}

@Riverpod(keepAlive: true)
InternalDatabaseRepository internalDatabaseRepository(InternalDatabaseRepositoryRef ref) {
  return InternalDatabaseRepositoryImpl(internalDatabaseDatasource: ref.watch(internalDatabaseDatasourceProvider));
}

@Riverpod(keepAlive: true)
InternalDatabaseDatasource internalDatabaseDatasource(InternalDatabaseDatasourceRef ref) {
  return InternalDatabaseDatasourceImpl(ref.watch(hiveDatasourceProvider));
}

@Riverpod(keepAlive: true)
HiveInterface hiveDatasource(HiveDatasourceRef ref) {
  return Hive;
}
