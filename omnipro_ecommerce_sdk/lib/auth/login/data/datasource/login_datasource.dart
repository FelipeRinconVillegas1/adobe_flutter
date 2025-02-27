import 'package:core/data/dto/user_credential_response_dto.fr.dart';
import 'package:core/domain/entity/provider_auth.dart';
import 'package:core/data/dto/session_data_dto.fr.dart';
import 'package:core/utils/error_handler/error_handler.dart';
import 'package:dartz/dartz.dart';
import '../dto/customer_tokens_dto.fr.dart';

abstract class LoginDatasource {
  Future<Either<ErrorHandler, CustomerTokensDTO>> login(String email, String password);

  Future<Either<ErrorHandler, UserCredentialResponseDTO>> getUserCredentialByProviderAuthentication(
      ProviderAuthentication providerAuthentication);

  Future<Either<ErrorHandler, String>> getTokenByUserCredential(UserCredentialResponseDTO userCredential);

  Future<Either<ErrorHandler, bool>> requestPasswordResetEmail(String email);

  Future<void> saveSession(SessionDataDTO sessionData);
}
