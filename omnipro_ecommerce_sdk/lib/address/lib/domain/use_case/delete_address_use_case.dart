import 'package:core/utils/error_handler/error_code.dart';
import 'package:core/utils/error_handler/error_handler.dart';
import 'package:dartz/dartz.dart';

import '../../data/repository/address_repository.dart';
import '../entity/customer_address_entity.dart';

/// DeleteAddressUseCase is a use case to delete customer address from the server
class DeleteAddressUseCase {
  final AddressRepository _addressRepository;

  DeleteAddressUseCase(this._addressRepository);

  Future<Either<ErrorHandler, bool>> call(CustomerAddressEntity addressEntity) async {
    try {
      return _addressRepository.deleteAddress(addressEntity);
    } catch (e) {
      return left(ErrorHandlerExternal(errorCode: ErrorCode.errorDeleteAddress, errorMessage: e.toString()));
    }
  }
}
