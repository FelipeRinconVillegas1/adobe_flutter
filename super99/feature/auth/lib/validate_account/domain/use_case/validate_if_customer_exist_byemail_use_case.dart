import 'package:auth/login/data/repository/auth_repository.dart';
import 'package:core/utils/error_handler/error_handler.dart';
import 'package:dartz/dartz.dart';

class ValidateIfCustomerExistByEmailUseCase {
  final AuthRepository _authRepository;

  ValidateIfCustomerExistByEmailUseCase(this._authRepository);

  Future<Either<ErrorHandler, bool>> call(String email) async {
    return _authRepository.validateIfCustomerExistByEmail(email);
  }
}
