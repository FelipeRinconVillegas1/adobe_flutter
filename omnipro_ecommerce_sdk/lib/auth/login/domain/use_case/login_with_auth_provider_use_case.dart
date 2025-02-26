import 'package:core/domain/entity/provider_auth.dart';
import 'package:core/domain/entity/customer.fr.dart';
import 'package:core/domain/entity/session_data.dart';
import 'package:core/domain/use_case/customer/get_customer_use_case.dart';
import 'package:core/utils/error_handler/error_code.dart';
import 'package:core/utils/error_handler/error_handler.dart';
import 'package:dartz/dartz.dart';
import '../../data/repository/auth_repository.dart';

/// Create a new session for the customer,saving the token in the secure storage.
@Deprecated('Use LOGIN NORMAL instead')
class LoginWithAuthProviderUseCase {
  final AuthRepository _loginRepository;
  final GetCustomerUseCase _getCustomer;

  LoginWithAuthProviderUseCase(this._loginRepository, this._getCustomer);

  /// Authenticate the user with the given credentials.
  /// providerAuthentication is optional, if it is null, the login will be done with email and password.
  /// If providerAuthentication is not null, the login will be done with the social media.
  Future<Either<ErrorHandler, Customer>> call({required ProviderAuthentication providerAuthentication}) async {
    try {
      final resultLoginWithProvider = await _loginRepository.loginWithProviderAuthentication(providerAuthentication);

      return resultLoginWithProvider.fold((l) => left(l), (loginAuthResponse) async {
        await _loginRepository.saveSession(SessionData(
            token: loginAuthResponse.tokenAdobe,
            email: loginAuthResponse.userCredentialResponse.email,
            userCredentialResponseDTO: loginAuthResponse.userCredentialResponse));
        final resultGetCustomer = await _getCustomer(mode: GetCustomerMode.remote);
        return resultGetCustomer.fold((l) => left(l), (customer) async {
          return right(customer);
        });
      });
    } on Exception catch (e) {
      return left(
          ErrorHandlerExternal(errorMessage: e.toString(), errorCode: ErrorCode.errorLoginWithCredential, error: e));
    }
  }
}
