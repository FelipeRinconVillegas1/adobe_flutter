import 'dart:async';
import 'package:core/network/graphql/graphql_client_config.dart';
import 'package:core/utils/error_handler/error_code.dart';
import 'package:core/utils/error_handler/error_handler.dart' as h;
import 'package:core/utils/error_handler/error_helper.dart';
import 'package:dartz/dartz.dart';
import 'package:graphql/client.dart';
import 'package:http/http.dart';
import '../conectivity_check.dart';
import 'refresh_token_link.dart';

/// This class represents a service for making GraphQL requests.
/// It is designed to handle both authenticated and unauthenticated requests.
/// The class has two factory methods, authenticated and unauthenticated,
/// for creating instances of the service with the appropriate authentication
/// configuration.
class GraphQLService {
  GraphQLService(this._client, this._connectivityCheck);

  /// Creates a GraphQL service configured to make requests with an authenticated user.
  ///
  /// [refreshTokenLink] is executed when a null or expired token is detected.
  ///
  /// [storeCache] is optional. If not specified, in-memory storage is used.
  factory GraphQLService.authenticated(
      GraphQLClientConfig clientConfig, RefreshTokenLink refreshTokenLink, ConnectivityCheck connectivityCheck,
      {HiveStore? storeCache}) {
    if (storeCache != null) {
      return GraphQLService(
          clientConfig.getClientWithCache(authLink: refreshTokenLink, store: storeCache), connectivityCheck);
    } else {
      return GraphQLService(clientConfig.getDefaultClient(authLink: refreshTokenLink), connectivityCheck);
    }
  }

  /// Creates a GraphQL service configured to make requests with an unauthenticated user.
  ///
  /// [storeCache] is optional. If not specified, in-memory storage is used.
  factory GraphQLService.unauthenticated(GraphQLClientConfig clientConfig, ConnectivityCheck connectivityCheck,
      {HiveStore? storeCache}) {
    if (storeCache != null) {
      return GraphQLService(clientConfig.getClientWithCache(store: storeCache), connectivityCheck);
    } else {
      return GraphQLService(clientConfig.getDefaultClient(), connectivityCheck);
    }
  }

  /// Creates a GraphQL service configured to make mock requests.
  factory GraphQLService.onlyTest(GraphQLClient client, ConnectivityCheck connectivityCheck) {
    return GraphQLService(client,connectivityCheck);
  }

  final GraphQLClient _client;
  final ConnectivityCheck _connectivityCheck;

  Future<Either<h.ErrorHandler, QueryResult>> query(String query, {Map<String, dynamic> variables = const {}}) async {
    return _execute(() =>
        _client.query(QueryOptions(document: gql(query), variables: variables, fetchPolicy: FetchPolicy.noCache)));
  }

  Future<Either<h.ErrorHandler, QueryResult>> mutation(String mutation,
      {Map<String, dynamic> variables = const {}}) async {
    return _execute(() => _client
        .mutate(MutationOptions(document: gql(mutation), variables: variables, fetchPolicy: FetchPolicy.noCache)));
  }

  /// Subscribes to a GraphQL subscription.
  ///
  /// Returns a `Stream` of `QueryResult` objects.
  Stream<QueryResult> subscription(String subscription, {Map<String, dynamic> variables = const {}}) {
    final options = SubscriptionOptions(document: gql(subscription), variables: variables);

    return _client.subscribe(options);
  }

  /// Method that handles common errors in requests with the graphql client
  Future<Either<h.ErrorHandler, QueryResult>> _execute(Future<QueryResult> Function() operation) async {
    final result = await operation();
    if (result.hasException) {
      final graphError = result.exception!.graphqlErrors.isNotEmpty ? result.exception!.graphqlErrors[0] : null;
      final graphPathError = graphError != null ? graphError.path : '';
      String graphErrorMessage = graphError != null ? graphError.message : '';
      String errorQueryMessage = "Error in query: $query \n GraphQLError: $graphErrorMessage \n Path: $graphPathError";

      final isConnected = await _connectivityCheck.isConnected();

      if (!isConnected) {
        return left(
          h.ErrorHandlerExternal(
            errorCode: ErrorCode.errorNoInternet,
            error: result.exception,
            errorMessage: graphErrorMessage,
            errorQueryMessage: errorQueryMessage,
          ),
        );
      }

      if (isTimeoutError(result.exception!)) {
        return left(
          h.ErrorHandlerExternal(
            errorCode:
                graphPathError == '' ? ErrorCode.errorTimeout : "${ErrorCode.errorTimeout.message}_$graphPathError",
            error: result.exception,
            errorMessage: graphErrorMessage,
            errorQueryMessage: errorQueryMessage,
          ),
        );
      }


      if(result.exception!.linkException is HttpLinkParserException){
        final HttpLinkParserException httpLinkParserException = result.exception!.linkException as HttpLinkParserException;
        errorQueryMessage += " | ${httpLinkParserException.response.body}";
        final int statusCodeResponse = httpLinkParserException.response.statusCode;
        if(httpLinkParserException.response.reasonPhrase != null && httpLinkParserException.response.reasonPhrase!.isNotEmpty){
          graphErrorMessage += " | ${httpLinkParserException.response.reasonPhrase!}";
        }
        return left(
          h.ErrorHandlerExternal(
            errorCode: ErrorCode.errorServiceTemporarilyUnavailable,
            error: result.exception,
            errorMessage: "status code response: $statusCodeResponse | reasonPhrase $graphErrorMessage",
            errorQueryMessage: errorQueryMessage,
          ),
        );
      }


      return left(
        h.ErrorHandlerExternal(
          errorCode: ErrorHelper().getErrorCodeByGraphQLError(graphError),
          error: result.exception,
          errorMessage: graphErrorMessage,
          errorQueryMessage: errorQueryMessage,
        ),
      );
    }
    return right(result);
  }

  bool isTimeoutError(OperationException exception) {
    return exception.linkException?.originalException is TimeoutException;
  }

  bool isLinkError(OperationException exception) {
    return exception.linkException?.originalException is FormatException;
  }
}
