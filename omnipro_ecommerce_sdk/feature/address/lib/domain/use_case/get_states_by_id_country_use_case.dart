import 'package:address/data/repository/address_repository.dart';
import 'package:core/domain/entity/states_country.dart';
import 'package:core/utils/error_handler/error_code.dart';
import 'package:core/utils/error_handler/error_handler.dart';
import 'package:dartz/dartz.dart';

class GetStatesByIdCountryUseCase {
  final AddressRepository _repository;

  GetStatesByIdCountryUseCase(this._repository);

  Future<Either<ErrorHandler, StatesCountry>> call(String idCountry) async {
    try {
      return await _repository.getStatesByIdCountry(idCountry);
    } catch (e) {
      return left(ErrorHandlerExternal(errorCode: ErrorCode.errorGetStatesCountry, errorMessage: e.toString()));
    }
  }
}
