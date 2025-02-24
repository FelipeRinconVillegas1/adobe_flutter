import 'package:core/data/repository/config/mapper_store_config.dart';
import 'package:core/data/repository/config/store_config_repository.fr.dart';
import 'package:core/utils/error_handler/error_handler.dart';
import 'package:dartz/dartz.dart';

import '../../../domain/entity/config/store_config_entity.dart';
import '../../datasource/config/store_config_datasource.dart';

class StoreConfigRepositoryImpl extends StoreConfigRepository {
  StoreConfigRepositoryImpl(this.storeConfigDataSource);

  final StoreConfigDatasource storeConfigDataSource;

  @override
  Future<Either<ErrorHandler, StoreConfigEntity>> getStoreConfig() async {
    final response = await storeConfigDataSource.getStoreConfig();
    return response.fold((l) => left(l), (r) => right(r.toDomain()));
  }
}
