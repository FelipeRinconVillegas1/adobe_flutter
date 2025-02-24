import 'package:core/domain/entity/stores/last_store_in_compute_entity.fr.dart';
import 'package:core/utils/error_handler/error_handler.dart';
import 'package:dartz/dartz.dart';
import '../../../data/repository/stores/stores_repository.dart';

class GetLastStoreInComputeUseCase {
  GetLastStoreInComputeUseCase(this._repository);
  final StoresRepository _repository;

  Future<Either<ErrorHandler, LastStoreInComputeEntity?>> call() async {
    return await _repository.getLastStoreInCompute();
  }
}
