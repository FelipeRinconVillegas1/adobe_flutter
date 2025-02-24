import 'package:core/domain/entity/stores/warehouse_address_entity.fr.dart';
import '../../../data/repository/stores/stores_repository.dart';

class SaveLocalStorePickUpUseCase {
  SaveLocalStorePickUpUseCase(this._repository);

  final StoresRepository _repository;

  Future<void> call(WareHouseAddressEntity storePickUp) async {
    return await _repository.saveWareHousePickUp(storePickUp);
  }
}
