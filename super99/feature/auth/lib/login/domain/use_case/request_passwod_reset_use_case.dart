import 'package:auth/login/data/repository/auth_repository.dart';
import 'package:core/utils/error_handler/error_handler.dart';
import 'package:dartz/dartz.dart';

class RequestPasswordResetUseCase {
  final AuthRepository _authRepository;

  RequestPasswordResetUseCase(this._authRepository);

  Future<Either<ErrorHandler, bool>> call(String email) async {
    return _authRepository.requestPasswordResetEmail(email);
  }
}
