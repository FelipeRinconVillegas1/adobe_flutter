import 'package:core/utils/error_handler/error_handler.dart';
import 'package:dartz/dartz.dart';

import '../../data/repository/address_repository.dart';
import '../entity/customer_address_entity.dart';

// SaveLocalAddressSelectedUseCase is a use case to save local address selected,
// happens when customer select an address in the list of addresses in the app.
class GetLocalAddressSelectedUseCase {
  final AddressRepository _addressRepository;

  GetLocalAddressSelectedUseCase(this._addressRepository);

  Future<Either<ErrorHandler, CustomerAddressEntity?>> call() async {
    return await _addressRepository.getLocalAddressSelected();
  }
}
