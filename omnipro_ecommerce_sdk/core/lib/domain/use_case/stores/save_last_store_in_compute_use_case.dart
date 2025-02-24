import 'package:core/domain/entity/stores/last_store_in_compute_entity.fr.dart';
import '../../../data/repository/stores/stores_repository.dart';

class SaveLastStoreInComputeUseCase {
  SaveLastStoreInComputeUseCase(this._repository);
  final StoresRepository _repository;

  Future<void> call({
    required LastStoreInComputeEntity lastStoreInComputeEntity,
  }) async {
    return await _repository.saveLastStoreInCompute(lastStoreInComputeEntity);
  }
}
