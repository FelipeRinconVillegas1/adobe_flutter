import 'package:core/utils/error_handler/error_handler.dart';
import 'package:dartz/dartz.dart';
import '../../data/repository/auth_repository.dart';

class RequestPasswordResetUseCase {
  RequestPasswordResetUseCase(this._authRepository);

  final AuthRepository _authRepository;

  Future<Either<ErrorHandler, bool>> call(String email) async {
    return _authRepository.requestPasswordResetEmail(email);
  }
}
