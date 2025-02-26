import 'dart:convert';

import 'package:core/utils/error_handler/error_handler.dart';
import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;
import 'api_client.dart';

class HttpApiClient implements ApiClient {
  HttpApiClient(this._client, {required this.baseUrl});

  final http.Client _client;
  final String baseUrl;

  Uri getUrl(String path) {
    return Uri.https(baseUrl, path);
  }

  @override
  Future<Either<ErrorHandler, String>> get(String url, {Map<String, String>? headers, List<int>? successCode}) async {
    final response = await _client.get(Uri.parse(baseUrl + url), headers: headers);

    return validationResult(response, successCode: successCode);
  }

  @override
  Future<Either<ErrorHandler, String>> post(String url,
      {required Map<String, dynamic> body, Map<String, String>? headers, List<int>? successCode}) async {
    final response = await _client.post(
      Uri.parse(baseUrl + url),
      body: jsonEncode(body),
      headers: headers,
    );

    return validationResult(response, successCode: successCode);
  }

  @override
  Future<Either<ErrorHandler, String>> put(String url,
      {required Map<String, dynamic> body, Map<String, String>? headers, List<int>? successCode}) async {
    final response = await _client.put(Uri.parse(baseUrl + url), body: jsonEncode(body), headers: headers);

    return validationResult(response, successCode: successCode);
  }

  @override
  Future<Either<ErrorHandler, String>> validationResult<Response>(Response responseResult,
      {List<int>? successCode}) async {
    final response = responseResult as http.Response;

    if (successCode != null && successCode.contains(response.statusCode)) {
      return Future.value(right(responseResult.body));
    }

    if (response.statusCode >= 400) {
      return Future.value(left(ErrorHandlerExternal(
        errorMessage: 'Error en el servidor, intente más tarde.',
        errorCode: response.statusCode.toString(),
      )));
    }

    return Future.value(right(responseResult.body));
  }
}
