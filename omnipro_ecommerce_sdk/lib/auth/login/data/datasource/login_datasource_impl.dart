import 'dart:convert';
import 'package:core/data/dto/user_credential_response_dto.fr.dart';
import 'package:core/domain/entity/provider_auth.dart';
import 'package:core/data/dto/session_data_dto.fr.dart';
import 'package:core/data/datasource/secure_call_datasource.dart';
import 'package:core/local/data/datasource/secure_storage_datasource.dart';
import 'package:core/local/key_secure_storage.dart';
import 'package:core/network/graphql/graphql_service.dart';
import 'package:core/utils/error_handler/error_handler.dart';
import 'package:core/network/graphql/token_mutation.dart';
import 'package:dartz/dartz.dart';
import '../../../shared/data/identify_with_social_media.dart';
import '../dto/customer_tokens_dto.fr.dart';
import 'login_datasource.dart';
import 'login_mutation.dart';

class LoginDatasourceImpl extends LoginDatasource {
  LoginDatasourceImpl(this._client, this._secureStorageDatasource, this._identifyWithSocialMedia);

  final GraphQLService _client;
  final SecureStorageDatasource _secureStorageDatasource;
  final IdentifyWithSocialMedia _identifyWithSocialMedia;

  @override
  Future<Either<ErrorHandler, CustomerTokensDTO>> login(String email, String password) async {
    return secureServerCall(() async {
      String query = generateTokenCustomer(email, password);
      final result = await _client.mutation(
        query,
      );

      return result.fold(
          (l) => left(l), (json) => right(CustomerTokensDTO.fromJson(json.data?['generateCustomerToken'])));
    });
  }

  @override
  Future<void> saveSession(SessionDataDTO sessionData) async {
    await _secureStorageDatasource.saveData(
      KeySecureStorage.sessionData,
      jsonEncode(sessionData.toJson()),
    );
  }

  @override
  Future<Either<ErrorHandler, UserCredentialResponseDTO>> getUserCredentialByProviderAuthentication(
      ProviderAuthentication providerAuthentication) async {
    return _identifyWithSocialMedia(providerAuthentication);
  }

  @override
  Future<Either<ErrorHandler, String>> getTokenByUserCredential(UserCredentialResponseDTO userCredential) async {
    switch (userCredential.provider) {
      case ProviderAuthentication.facebook:
      case ProviderAuthentication.google:
        return secureServerCall(() async {
          String query = generateSocialCustomerTokenMutation(
              socialToken: userCredential.token, type: userCredential.provider.value);
          final result = await _client.mutation(
            query,
          );

          return result.fold(
              (l) => left(l), (json) => right(json.data?['generateSocialCustomerToken']['token'] as String));
        });
      case ProviderAuthentication.apple:
        return secureServerCall(() async {
          String query = generateAppleCustomerTokenMutation(
              appleToken: userCredential.token,
              firstName: userCredential.firstName ?? '',
              lastName: userCredential.lastName ?? '');
          final result = await _client.mutation(
            query,
          );

          return result.fold(
              (l) => left(l), (json) => right(json.data?['generateAppleCustomerToken']['token'] as String));
        });
    }
  }

  @override
  Future<Either<ErrorHandler, bool>> requestPasswordResetEmail(String email) {
    return secureServerCall(() async {
      String query = requestPasswordResetEmailMutation(email);
      final result = await _client.mutation(
        query,
      );

      return result.fold((l) => left(l), (json) => right(json.data?['requestPasswordResetEmail'] as bool));
    });
  }
}
