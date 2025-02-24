import 'package:core/domain/entity/config/store_config_entity.dart';
import 'package:core/utils/error_handler/error_handler.dart';
import 'package:dartz/dartz.dart';

import '../../../data/repository/config/store_config_repository.fr.dart';

class GetConfigStoreCase {
  GetConfigStoreCase(this._storeConfigRepository);

  final StoreConfigRepository _storeConfigRepository;

  /// Tracks a marketing event.
  Future<Either<ErrorHandler,StoreConfigEntity>> call() async {
    return await _storeConfigRepository.getStoreConfig();
  }
}
