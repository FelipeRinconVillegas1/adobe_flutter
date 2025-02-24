import '../../data/repository/address_repository.dart';
import '../entity/customer_address_entity.dart';

// SaveLocalAddressSelectedUseCase is a use case to save local address selected,
// happens when customer select an address in the list of addresses in the app.
class SaveLocalAddressSelectedUseCase {
  final AddressRepository addressRepository;

  SaveLocalAddressSelectedUseCase(this.addressRepository);

  Future<void> call(CustomerAddressEntity address) async {
    return await addressRepository.saveAddressInLocal(address);
  }
}
