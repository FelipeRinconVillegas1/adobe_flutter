import 'package:auth/login/domain/entity/customer_tokens_entity.dart';
import 'package:auth/login/domain/entity/login_with_auth_provider.dart';
import 'package:auth/login/domain/entity/validate_customer_otp_entity.dart';
import 'package:core/domain/entity/provider_auth.dart';
import 'package:core/domain/entity/session_data.dart';
import 'package:core/utils/error_handler/error_handler.dart';
import 'package:dartz/dartz.dart';

abstract class AuthRepository {
  /// Authenticate the user with the given credentials.
  Future<Either<ErrorHandler, CustomerTokensEntity>> login(String email, String password);

  Future<Either<ErrorHandler, LoginAuthProviderResponse>> loginWithProviderAuthentication(
      ProviderAuthentication provider);

  Future<void> saveSession(SessionData sessionData);

  Future<Either<ErrorHandler, bool>> requestPasswordResetEmail(String email);

  Future<Either<ErrorHandler, bool>> validateIfCustomerExistByEmail(String email);

  Future<Either<ErrorHandler, bool>> validateIfCustomerExistByPhone(String phone, String countryCode);

  Future<Either<ErrorHandler, bool>> sendCode(
    String phoneNumber,
    String countryCode,
    String hashSignature,
    String email,
  );

  Future<Either<ErrorHandler, ValidateCustomerOtpEntity>> validateCode(
    String phoneNumber,
    String countryCode,
    String otpCode,
    String email,
  );
}
