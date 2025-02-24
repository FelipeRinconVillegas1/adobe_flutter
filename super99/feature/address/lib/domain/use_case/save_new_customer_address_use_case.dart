import 'package:core/utils/error_handler/error_code.dart';
import 'package:core/utils/error_handler/error_handler.dart';
import 'package:dartz/dartz.dart';
import '../../data/repository/address_repository.dart';
import '../entity/customer_address_entity.dart';

// SaveNewCustomerAddressUseCase is a use case to save new customer address to the server
class SaveNewCustomerAddressUseCase {
  SaveNewCustomerAddressUseCase(
    this._addressRepository,
  );

  final AddressRepository _addressRepository;

  Future<Either<ErrorHandler, CustomerAddressEntity>> call(CustomerAddressEntity customerAddress) async {
    try {
      return (await _addressRepository.saveNewAddress(customerAddress)).fold((l) => left(l), (newAddress) async {
        return right(newAddress);
      });
    } catch (e, s) {
      return left(ErrorHandlerInternal(
        errorMessage: e.toString(),
        stackTrace: s,
        error: e,
        errorCode: ErrorCode.errorSavingNewAddress,
      ));
    }
  }
}
