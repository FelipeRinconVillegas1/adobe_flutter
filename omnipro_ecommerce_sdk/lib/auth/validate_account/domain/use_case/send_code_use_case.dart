import 'package:core/utils/error_handler/error_handler.dart';
import 'package:dartz/dartz.dart';
import '../../../login/data/repository/auth_repository.dart';

class SendCodeUseCase {
  SendCodeUseCase(this._authRepository);

  final AuthRepository _authRepository;

  Future<Either<ErrorHandler, bool>> call(
    String phoneNumber,
    String codeCountry,
    String hashSignature,
    String email,
  ) async {
    return await _authRepository.sendCode(
      phoneNumber,
      codeCountry,
      hashSignature,
      email,
    );
  }
}
