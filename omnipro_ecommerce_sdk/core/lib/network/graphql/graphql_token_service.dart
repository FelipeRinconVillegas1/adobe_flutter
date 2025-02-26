import 'dart:convert';
import 'package:core/data/dto/session_data_dto.fr.dart';
import 'package:core/local/data/datasource/secure_storage_datasource.dart';
import 'package:core/local/key_secure_storage.dart';
import 'package:core/network/graphql/token_mutation.dart';
import 'package:core/network/token_service.dart';
import 'package:core/utils/error_handler/error_code.dart';
import 'package:core/utils/error_handler/error_handler.dart';
import 'package:core/utils/loggers/app_logger.dart';
import 'package:graphql/client.dart';
import 'package:synchronized/synchronized.dart';

import 'graphql_service.dart';

const String errorByTokenMessage = 'The current customer isn\'t authorized';

/// Manager of the GraphQL authentication token.
class GraphQLServiceToken implements TokenService {
  GraphQLServiceToken(this._graphQLService, this._secureStorageDatasource, this.lock);

  final GraphQLService _graphQLService;
  final SecureStorageDatasource _secureStorageDatasource;
  final Lock lock;

  @override
  bool isErrorByToken<T>(T error) {
    bool isByAuthorization = false;
    final responseWithError = error as Response;

    responseWithError.errors?.forEach((element) {
      List<dynamic> extensionMessage = element.extensions?.values.toList() ?? [];
      if (element.message.contains(errorByTokenMessage) ||
          extensionMessage.contains('graphql-authorization')) {
        isByAuthorization = true;
      }
    });

    if (isByAuthorization) {
      LoggerApp().info(message: 'Customer session expired : method isErrorByToken');
    }
    return isByAuthorization;
  }

  @override
  Future<String> refreshToken() async {
    try {
      return await lock.synchronized(() async {
        String data = await _secureStorageDatasource.getData(KeySecureStorage.sessionData);
        SessionDataDTO sessionDataDTO = SessionDataDTO.fromJson(jsonDecode(data));

        /// If the user is logged in with social media, the user and password will be null.
        if (sessionDataDTO.refreshToken != null && sessionDataDTO.refreshToken!.isNotEmpty) {
          final resultMutation = await _graphQLService
              .mutation(refreshTokenCustomer(sessionDataDTO.refreshToken!))
              .timeout(const Duration(seconds: 20));
          return resultMutation.fold((l) {
            ErrorHandlerInternal(
                errorMessage: '${l.errorMessage}, refreshtoken: ${sessionDataDTO.refreshToken}',
                errorCode: ErrorCode.errorRefreshToken,
                errorType: ErrorType.warning,
                error: l.error,
                stackTrace: l.stackTrace);
            throw Exception(l.error);
          }, (result) async {
            String newToken = result.data?['generateCustomerRefreshToken']['token'] as String;
            String refreshToken = result.data?['generateCustomerRefreshToken']['refresh_token'] as String;

            sessionDataDTO = sessionDataDTO.copyWith(token: newToken, refreshToken: refreshToken);

            await _secureStorageDatasource.saveData(
              KeySecureStorage.sessionData,
              jsonEncode(sessionDataDTO.toJson()),
            );

            LoggerApp().info(message: 'A new token was generated using refreshToken method');
            return newToken;
          });
        }

        /// The token is not refreshed because the user is logged in with social media.
        else if (sessionDataDTO.userCredentialResponseDTO != null) {
          return '';
        } else {
          throw Exception('No credentials found');
        }
      });
    } catch (e, s) {
      ErrorHandlerInternal(
          errorMessage: 'Error refreshing token',
          errorCode: ErrorCode.errorRefreshToken,
          error: Exception('Error refreshing token ${e.toString()}'),
          stackTrace: s);
      throw Exception('Error refreshing token $s');
    }
  }

  @override
  Future<String> getCurrentToken() async {
    String data = await _secureStorageDatasource.getData(KeySecureStorage.sessionData);

    if (data.isEmpty) {
      return '';
    }

    SessionDataDTO sessionDataDTO = SessionDataDTO.fromJson(jsonDecode(data));

    return sessionDataDTO.token;
  }
}
