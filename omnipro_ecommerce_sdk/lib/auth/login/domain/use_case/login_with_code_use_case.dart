import 'package:core/domain/entity/customer.fr.dart';
import 'package:core/domain/entity/session_data.dart';
import 'package:core/domain/use_case/customer/save_customer_in_local_use_case.dart';
import 'package:core/utils/error_handler/error_code.dart';
import 'package:core/utils/error_handler/error_handler.dart';
import 'package:dartz/dartz.dart';
import '../../data/repository/auth_repository.dart';

/// Create a new session for the customer,saving the token in the secure storage.
class LoginWithCodeUseCase {

  final AuthRepository _loginRepository;
  final SaveCustomerInLocalUseCase _saveCustomer;

  LoginWithCodeUseCase(this._loginRepository, this._saveCustomer);

  Future<Either<ErrorHandler, Customer>> call({
    required String phoneNumber,
    required String countryCode,
    required String otpCode,
    required String email,
  }) async {
    try {
      final resultToken = await _loginRepository.validateCode(
        phoneNumber,
        countryCode,
        otpCode,
        email,
      );
      return resultToken.fold((l) => left(l), (entity) async {
        if (entity.status) {
          /// De momento no entrara aqui por cambio de flujo,
          /// al validar con email en el primer paso
          /// no alcanza a entrar aca
          /// continuará con el flujo de formulario
          if (entity.token != null && entity.customer != null) {
            await _loginRepository.saveSession(SessionData(
                token: entity.token!, email: entity.customer!.email));
            await _saveCustomer(entity.customer!);
            return right(entity.customer!);
          } else {
            return left(
              ErrorHandlerExternal(
                errorType: ErrorType.warning,
                errorMessage: "Customer not found, but code is valid",
                errorCode: ErrorCode.errorNotFoundCustomer,
              ),
            );
          }
        } else {
          return left(
            ErrorHandlerExternal(
              errorMessage: "Code not valid",
              errorCode: ErrorCode.errorNotValidCode,
            ),
          );
        }
      });
    } on Exception catch (e) {
      return left(
        ErrorHandlerExternal(
          errorMessage: e.toString(),
          errorCode: ErrorCode.errorLoginWithCredential,
          error: e,
        ),
      );
    }
  }
}
