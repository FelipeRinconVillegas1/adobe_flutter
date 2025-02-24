import 'package:dartz/dartz.dart';

import '../../../utils/error_handler/error_handler.dart';
import '../../dto/config/store_config_dto.fr.dart';

abstract class StoreConfigDatasource {
  Future<Either<ErrorHandler, StoreConfigDTO>> getStoreConfig();
}