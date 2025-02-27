import 'dart:async';
import 'package:async/async.dart';
import 'package:http/http.dart';
import '../../../singleton_setup_configuration.dart';

/// An HTTP client wrapper that automatically retries failing requests by unauthorized token.
///
/// NOTE: [InterceptorClientHTTP] makes a copy of the request data in order to support
/// resending it. This can cause a lot of memory usage when sending a large
/// [StreamedRequest].
class InterceptorClientHTTP extends BaseClient {
  InterceptorClientHTTP(this._client, {this.retries = 1});

  /// The wrapped client.
  final Client _client;
  final int retries;

  /// Sends an HTTP request and asynchronously returns the response.
  /// Update the token if the response is unauthorized.
  /// Retry the request if the response is unauthorized.
  @override
  Future<StreamedResponse> send(BaseRequest request) async {
    final splitter = StreamSplitter(request.finalize());

    request.headers.addAll({
      'x-api-key': SingletonSetupConfiguration().getOmsConfiguration().apiCredential.xApiKey,
      'Content-Type': 'application/json; charset=UTF-8',
      'Accept': 'application/json',
    });

    var i = 0;
    for (;;) {
      StreamedResponse? response;
      try {
        request.headers['x-api-key'] = SingletonSetupConfiguration().getOmsConfiguration().apiCredential.xApiKey;
        response = await _client.send(_copyRequest(request, splitter.split()));
      } catch (error, _) {
        rethrow;
      }

      if (i == retries) {
        return response;
      }

      // Make sure the response stream is listened to so that we don't leave
      // dangling connections.
      unawaited(response.stream.listen((_) {}).cancel().catchError((_) {}));

      i++;
    }
  }

  /// Returns a copy of [original] with the given [body].
  StreamedRequest _copyRequest(BaseRequest original, Stream<List<int>> body) {
    final request =
        StreamedRequest(original.method, original.url)
          ..contentLength = original.contentLength
          ..followRedirects = original.followRedirects
          ..headers.addAll(original.headers)
          ..maxRedirects = original.maxRedirects
          ..persistentConnection = original.persistentConnection;

    body.listen(request.sink.add, onError: request.sink.addError, onDone: request.sink.close, cancelOnError: true);

    return request;
  }

  @override
  void close() => _client.close();
}
