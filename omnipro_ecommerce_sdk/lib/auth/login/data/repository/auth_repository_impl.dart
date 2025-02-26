import 'package:core/domain/entity/provider_auth.dart';
import 'package:core/data/mapper.dart';
import 'package:core/domain/entity/session_data.dart';
import 'package:core/utils/error_handler/error_handler.dart';
import 'package:core/utils/extension.dart';
import 'package:dartz/dartz.dart';
import 'package:omnipro_ecommerce_sdk/auth/login/data/mapper_login.dart';
import '../../domain/entity/customer_tokens_entity.dart';
import '../../domain/entity/login_with_auth_provider.dart';
import '../../domain/entity/validate_customer_otp_entity.dart';
import '../datasource/login_datasource.dart';
import '../dto/login_auth_provider_dto.dart';
import 'auth_repository.dart';

class AuthRepositoryImpl extends AuthRepository {
  AuthRepositoryImpl(
    this._loginDatasource,
  );

  final LoginDatasource _loginDatasource;

  @override
  Future<Either<ErrorHandler, CustomerTokensEntity>> login(String email, String password) async {
    final resultTokensCustomer = await _loginDatasource.login(email, password);
    return resultTokensCustomer.fold(
      (error) => left(error),
      (tokensCustomerDto) => right(tokensCustomerDto.toDomain()),
    );
  }

  @override
  Future<void> saveSession(SessionData sessionData) async {
    return _loginDatasource.saveSession(sessionData.toDTO());
  }

  @override
  Future<Either<ErrorHandler, LoginAuthProviderResponse>> loginWithProviderAuthentication(
      ProviderAuthentication provider) async {
    final resultCredential = await _loginDatasource.getUserCredentialByProviderAuthentication(provider);

    if (resultCredential.isLeft()) {
      return left(resultCredential.getLeft()!);
    }
    final credential = resultCredential.getRight()!;

    final resultToken = await _loginDatasource.getTokenByUserCredential(credential);
    return resultToken.fold((l) => left(l), (token) async {
      final LoginAuthProviderResponseDTO sessionData = LoginAuthProviderResponseDTO(
        userCredentialResponseDTO: credential,
        tokenAdobe: token,
      );
      return right(sessionData.toDomain());
    });
  }

  @override
  Future<Either<ErrorHandler, bool>> requestPasswordResetEmail(String email) {
    return _loginDatasource.requestPasswordResetEmail(email);
  }

  @override
  Future<Either<ErrorHandler, bool>> validateIfCustomerExistByEmail(String email) async {
    final resp = await _loginDatasource.validateIfCustomerExistByEmail(email);
    return resp.fold(
      (error) {
        if (error.errorMessage.contains('message: Email is invalid')) {
          return left(ErrorHandlerExternal(
            errorMessage: error.errorMessage,
            stackTrace: error.stackTrace,
            errorCode: 'INVALID_EMAIL',
            error: error.error,
          ));
        }
        return left(error);
      },
      (value) => right(value),
    );
  }

  @override
  Future<Either<ErrorHandler, bool>> validateIfCustomerExistByPhone(String phone, String countryCode) async {
    return await _loginDatasource.validateIfCustomerExistByPhone(phone, countryCode);
  }

  @override
  Future<Either<ErrorHandler, bool>> sendCode(
    String phoneNumber,
    String countryCode,
    String hashSignature,
    String email,
  ) async {
    final response = await _loginDatasource.sendCode(
      phoneNumber,
      countryCode,
      hashSignature,
      email,
    );
    return response.fold((l) => left(l), (r) => right(r.status));
  }

  @override
  Future<Either<ErrorHandler, ValidateCustomerOtpEntity>> validateCode(
    String phoneNumber,
    String countryCode,
    String otpCode,
    String email,
  ) async {
    final response = await _loginDatasource.validateCode(
      phoneNumber,
      countryCode,
      otpCode,
      email,
    );
    return response.fold((l) => left(l), (r) => right(r.toDomain()));
  }
}
