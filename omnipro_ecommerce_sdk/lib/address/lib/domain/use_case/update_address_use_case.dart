import 'package:core/utils/error_handler/error_handler.dart';
import 'package:dartz/dartz.dart';

import '../../data/repository/address_repository.dart';
import '../entity/customer_address_entity.dart';

/// UpdateAddressUseCase is a use case to update customer address to the server
class UpdateAddressUseCase {
  UpdateAddressUseCase(this._addressRepository);

  final AddressRepository _addressRepository;

  Future<Either<ErrorHandler, bool>> call(CustomerAddressEntity address) async {
    return _addressRepository.updateAddress(address);
  }
}
