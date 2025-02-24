import "dart:convert";
import "package:core/local/data/datasource/secure_storage_datasource.dart";
import "package:core/local/key_secure_storage.dart";
import "package:core/network/token_mediator.dart";
import "package:core/network/token_service.dart";
import "package:gql_transform_link/gql_transform_link.dart";
import 'package:graphql/client.dart';

/// A link for the GraphQL client that handles refreshing the access token
/// and adding the updated token to the authorization header of the request.
class RefreshTokenLink extends Link {
  /// Creates a new instance of `RefreshTokenLink` with the given `serviceToken`.
  RefreshTokenLink(this.serviceToken, this.secureStorageDatasource, this._tokenMediator) {
    _link = Link.concat(
      ErrorLink(onGraphQLError: handleError),
      TransformLink(requestTransformer: transformRequest),
    );
  }

  final TokenService serviceToken;
  final SecureStorageDatasource secureStorageDatasource;
  final TokenMediator _tokenMediator;
  String? _localToken;
  late Link _link;

  /// Updates the access token by calling `refreshToken` in the `serviceToken`.
  Future<void> updateToken() async {
    try{
      if(_localToken != null){
        _localToken = await serviceToken.refreshToken();
      }
    }catch(e){
      _localToken = "";
    }
  }

  Stream<Response> handleError(
    Request request,
    NextLink forward,
    Response response,
  ) async* {
    if (serviceToken.isErrorByToken<Response>(response)) {
      await updateToken();

      if ((_localToken ?? '').isNotEmpty) {
        /// If the token is not empty, it means that the user is logged in with email and password.
        /// In this case, the token is refreshed and the request is executed again.
        yield* forward(request);
        return;
      } else {
        /// If the token is empty or null, it means that the user is logged in with social media.
        /// In this case, the token is not refreshed. The user will be redirected to the login screen.
        _tokenMediator.notifyExpireToken();
        yield response;
      }
    } else {
      yield response;
    }
  }

  /// Adds the authorization header to the request with the updated token.
  Request transformRequest(Request request) => request.updateContextEntry<HttpLinkHeaders>(
        (headers) => HttpLinkHeaders(
          headers: <String, String>{
            ...headers?.headers ?? <String, String>{},
            "Authorization": 'Bearer $_localToken',
          },
        ),
      );

  /// Executes the request chain by adding the token to the authorization header
  /// and passing it to the `_link` base link
  @override
  Stream<Response> request(Request request, [forward]) async* {
    String session = await secureStorageDatasource.getData(KeySecureStorage.sessionData);
    if (session.isNotEmpty) {
      _localToken = jsonDecode(session)['token'];
      //await updateToken();//TODO ESTE ES PARA PRUEBAS
      if (_localToken == null) {
        await updateToken();
      }
    } else {
      _localToken = null;
    }

    yield* _link.request(request, forward);
  }
}
