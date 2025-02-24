/// An abstract class that defines methods for managing authentication tokens.
abstract class TokenService {
  /// Checks whether an error is related to an invalid or expired token.
  bool isErrorByToken<T>(T error);

  Future<String> getCurrentToken();

  /// Requests a new authentication token using a refresh token.
  Future<String> refreshToken();
}
