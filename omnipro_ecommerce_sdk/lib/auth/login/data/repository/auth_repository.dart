import 'package:core/domain/entity/provider_auth.dart';
import 'package:core/domain/entity/session_data.dart';
import 'package:core/utils/error_handler/error_handler.dart';
import 'package:dartz/dartz.dart';
import '../../domain/entity/customer_tokens_entity.dart';
import '../../domain/entity/login_with_auth_provider.dart';

abstract class AuthRepository {
  /// Authenticate the user with the given credentials.
  Future<Either<ErrorHandler, CustomerTokensEntity>> login(String email, String password);

  Future<Either<ErrorHandler, LoginAuthProviderResponse>> loginWithProviderAuthentication(
      ProviderAuthentication provider);

  Future<void> saveSession(SessionData sessionData);

  Future<Either<ErrorHandler, bool>> requestPasswordResetEmail(String email);
}
