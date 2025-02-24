import 'package:core/domain/entity/provider_auth.dart';
import 'package:equatable/equatable.dart';

class UserCredentialResponse extends Equatable {
  final String? firstName;
  final String? lastName;
  final String? email;

  ///Only for provider apple
  final String? nonce;
  final String? sub;
  final String? authCode;

  ///-----------------------
  final String token;
  final ProviderAuthentication provider;

  const UserCredentialResponse({
    this.firstName,
    this.lastName,
    this.email,
    this.nonce,
    this.sub,
    this.authCode,
    required this.token,
    required this.provider,
  });

  @override
  List<Object?> get props => [firstName, lastName, email, nonce, sub, token, provider];
}
