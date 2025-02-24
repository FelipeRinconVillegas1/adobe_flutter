import 'package:address/domain/entity/user_who_pickup_in_store_entity.fr.dart';

import '../../data/repository/address_repository.dart';

class SaveLocalUserWhoPickUpInStoreUseCase {
  SaveLocalUserWhoPickUpInStoreUseCase(this.addressRepository);

  final AddressRepository addressRepository;

  Future<void> call(UserWhoPickupInStoreEntity user) async {
    return await addressRepository.saveUserWhoPickUp(user);
  }
}
