import '../../data/repository/address_repository.dart';
import '../entity/user_who_pickup_in_store_entity.fr.dart';

class SaveLocalUserWhoPickUpInStoreUseCase {
  SaveLocalUserWhoPickUpInStoreUseCase(this.addressRepository);

  final AddressRepository addressRepository;

  Future<void> call(UserWhoPickupInStoreEntity user) async {
    return await addressRepository.saveUserWhoPickUp(user);
  }
}
