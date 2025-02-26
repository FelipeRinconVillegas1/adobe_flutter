import 'package:core/data/dto/user_credential_response_dto.fr.dart';
import 'package:core/domain/entity/provider_auth.dart';
import 'package:core/data/dto/session_data_dto.fr.dart';
import 'package:core/utils/error_handler/error_handler.dart';
import 'package:dartz/dartz.dart';
import '../dto/customer_otp_status_dto.fr.dart';
import '../dto/customer_tokens_dto.fr.dart';
import '../dto/validate_customer_otp_dto.fr.dart';

abstract class LoginDatasource {
  Future<Either<ErrorHandler, CustomerTokensDTO>> login(String email, String password);

  Future<Either<ErrorHandler, UserCredentialResponseDTO>> getUserCredentialByProviderAuthentication(
      ProviderAuthentication providerAuthentication);

  Future<Either<ErrorHandler, String>> getTokenByUserCredential(UserCredentialResponseDTO userCredential);

  Future<Either<ErrorHandler, bool>> requestPasswordResetEmail(String email);

  Future<void> saveSession(SessionDataDTO sessionData);

  Future<Either<ErrorHandler, bool>> validateIfCustomerExistByEmail(String email);

  Future<Either<ErrorHandler, bool>> validateIfCustomerExistByPhone(String phone, String countryCode);

  Future<Either<ErrorHandler, CustomerOtpStatusDTO>> sendCode(
    String phoneNumber,
    String countryCode,
    String hashSignature,
    String email,
  );

  Future<Either<ErrorHandler, ValidateCustomerOtpDTO>> validateCode(
    String phoneNumber,
    String countryCode,
    String otpCode,
    String email,
  );
}
