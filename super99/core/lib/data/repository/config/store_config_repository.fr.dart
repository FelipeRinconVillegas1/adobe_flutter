import 'package:dartz/dartz.dart';
import '../../../domain/entity/config/store_config_entity.dart';
import '../../../utils/error_handler/error_handler.dart';

abstract class StoreConfigRepository {
  Future<Either<ErrorHandler, StoreConfigEntity>> getStoreConfig();
}