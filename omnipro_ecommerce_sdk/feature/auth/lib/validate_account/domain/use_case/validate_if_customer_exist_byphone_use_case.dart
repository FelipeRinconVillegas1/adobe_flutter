import 'package:auth/login/data/repository/auth_repository.dart';
import 'package:core/utils/error_handler/error_handler.dart';
import 'package:dartz/dartz.dart';

class ValidateIfCustomerExistByPhoneUseCase {
  final AuthRepository _authRepository;

  ValidateIfCustomerExistByPhoneUseCase(this._authRepository);

  Future<Either<ErrorHandler, bool>> call(String phone,String countryCode) async {
    return _authRepository.validateIfCustomerExistByPhone(phone,countryCode);
  }
}
