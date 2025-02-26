import 'dart:async';
import 'package:async/async.dart';
import 'package:http/http.dart';
import '../../init/setup_omnipro_sdk.dart';
import '../token_service.dart';

/// An HTTP client wrapper that automatically retries failing requests by unauthorized token.
///
/// NOTE: [RefreshTokenClientHTTP] makes a copy of the request data in order to support
/// resending it. This can cause a lot of memory usage when sending a large
/// [StreamedRequest].
class RefreshTokenClientHTTP extends BaseClient {
  /// The wrapped client.
  final Client _inner;
  String? _bearerToken;
  final TokenService _httpServiceToken;
  final int retries;

  RefreshTokenClientHTTP(
    this._inner,
    this._httpServiceToken, {
    this.retries = 1,
  });

  Future<void> updateToken() async {
    _bearerToken = await _httpServiceToken.refreshToken();
  }

  /// Sends an HTTP request and asynchronously returns the response.
  /// Update the token if the response is unauthorized.
  /// Retry the request if the response is unauthorized.
  @override
  Future<StreamedResponse> send(BaseRequest request) async {
    final splitter = StreamSplitter(request.finalize());

    _bearerToken ??= await _httpServiceToken.getCurrentToken();

    request.headers.addAll({
      'Authorization': 'Bearer $_bearerToken',
      'Content-Type': 'application/json; charset=UTF-8',
      'Accept': 'application/json',
    });

    /// Add custom headers
    request.headers.addAll(
        SetupOnmiproSdk().getConfig().headersMagentoGraphQL ?? <String, String>{}
    );

    var i = 0;
    for (;;) {
      StreamedResponse? response;
      try {
        request.headers['Authorization'] = 'Bearer $_bearerToken';
        response = await _inner.send(_copyRequest(request, splitter.split()));
      } catch (error, _) {
        rethrow;
      }

      if (i == retries || !_httpServiceToken.isErrorByToken<int>(response.statusCode)) {
        return response;
      }

      // Make sure the response stream is listened to so that we don't leave
      // dangling connections.
      unawaited(response.stream.listen((_) {}).cancel().catchError((_) {}));

      if (_httpServiceToken.isErrorByToken<int>(response.statusCode)) {
        await updateToken();
      }

      i++;
    }
  }

  /// Returns a copy of [original] with the given [body].
  StreamedRequest _copyRequest(BaseRequest original, Stream<List<int>> body) {
    final request = StreamedRequest(original.method, original.url)
      ..contentLength = original.contentLength
      ..followRedirects = original.followRedirects
      ..headers.addAll(original.headers)
      ..maxRedirects = original.maxRedirects
      ..persistentConnection = original.persistentConnection;

    body.listen(request.sink.add, onError: request.sink.addError, onDone: request.sink.close, cancelOnError: true);

    return request;
  }

  @override
  void close() => _inner.close();
}
