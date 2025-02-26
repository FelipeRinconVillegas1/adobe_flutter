import 'dart:async';
import 'package:core/domain/entity/customer.fr.dart';
import 'package:core/domain/entity/session_data.dart';
import 'package:core/domain/use_case/customer/get_customer_use_case.dart';
import 'package:core/domain/use_case/suggested_texts/save_suggested_email_use_case.dart';
import 'package:core/utils/error_handler/error_code.dart';
import 'package:core/utils/error_handler/error_handler.dart';
import 'package:dartz/dartz.dart';
import '../../data/repository/auth_repository.dart';
import '../entity/customer_tokens_entity.dart';

/// Create a new session for the customer,saving the token in the secure storage.
class LoginWithPasswordUseCase {
  LoginWithPasswordUseCase(this._loginRepository, this._getCustomer, this._saveSuggestedEmailUseCase);

  final AuthRepository _loginRepository;
  final GetCustomerUseCase _getCustomer;
  final SaveSuggestedEmailUseCase _saveSuggestedEmailUseCase;

  /// Authenticate the user with the given credentials.
  /// providerAuthentication is optional, if it is null, the login will be done with email and password.
  /// If providerAuthentication is not null, the login will be done with the social media.
  Future<Either<ErrorHandler, Customer>> call({required String email, required String password}) async {
    try {
      late Either<ErrorHandler, CustomerTokensEntity> resultToken;

      resultToken = await _loginRepository.login(email, password);

      return resultToken.fold((l) => left(l), (customerTokensEntity) async {
        unawaited(_saveSuggestedEmailUseCase.call(email));
        await _loginRepository.saveSession(SessionData(
            email: email,
            password: password,
            token: customerTokensEntity.token,
            refreshToken: customerTokensEntity.refreshToken));
        final resultGetCustomer = await _getCustomer(mode: GetCustomerMode.remote);

        return resultGetCustomer.fold((l) => left(l), (customer) => right(customer));
      });
    } on Exception catch (e) {
      return left(
          ErrorHandlerExternal(errorMessage: e.toString(), errorCode: ErrorCode.errorLoginWithCredential, error: e));
    }
  }
}
