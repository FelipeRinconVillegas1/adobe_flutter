import 'package:core/network/graphql/graphql_token_service.dart';
import 'package:core/utils/error_handler/error_code.dart';
import 'package:core/utils/error_handler/error_handler.dart';

/// Manager of the REST authentication token.
/// Re use the GraphQLTokenService class because the logic is the same to refresh the token.
class HttpServiceToken extends GraphQLServiceToken {
  HttpServiceToken(super.client, super.secureStorageDatasource, super.lock);

  @override
  bool isErrorByToken<int>(int error) {
    final result = error == 401;
    if (result) {
      ErrorHandlerInternal(errorMessage: 'Customer session expired 401', errorType: ErrorType.warning,errorCode: ErrorCode.sessionExpired);
    }
    return result;
  }
}
