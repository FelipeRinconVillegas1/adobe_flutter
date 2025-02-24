import 'package:core/utils/error_handler/error_code.dart';
import 'package:core/utils/error_handler/error_handler.dart';
import 'package:dartz/dartz.dart';

import '../../data/repository/address_repository.dart';
import '../entity/customer_addresses.dart';

/// GetCustomerAddressesUseCase is a use case to get customer addresses from the server
class GetCustomerAddressesUseCase {
  GetCustomerAddressesUseCase(this._repository);

  final AddressRepository _repository;

  Future<Either<ErrorHandler, CustomerAddresses>> call() async {
    try {
      return await _repository.getAddresses();
    } catch (e) {
      return left(ErrorHandlerExternal(errorCode: ErrorCode.errorGetCustomerAddresses, errorMessage: e.toString()));
    }
  }
}
