import 'package:core/domain/entity/user_credential_response.dart';
import 'package:equatable/equatable.dart';

/// Session data entity for authentication in the application
class SessionData extends Equatable {
  /// Token for authentication
  final String token;

  final String? refreshToken;

  /// Password for authentication
  final String? password;

  /// Email for authentication
  final String? email;

  /// User credential response for authentication with provider (Google, Facebook, etc)
  final UserCredentialResponse? userCredentialResponseDTO;

  SessionData({
    required this.token,
    this.refreshToken,
    this.email,
    this.password,
    this.userCredentialResponseDTO,
  });

  @override
  List<Object?> get props => [email, password, token, refreshToken];
}
