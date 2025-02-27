import 'package:dartz/dartz.dart';
import '../error_handler/error_handler_core.dart';

abstract class ApiClient {
  Future<Either<ErrorHandlerCore, String>> get(String url, {Map<String, String>? headers});

  Future<Either<ErrorHandlerCore, String>> post(String url,
      {required Map<String, dynamic> body, Map<String, String>? headers});

  Future<Either<ErrorHandlerCore, String>> put(String url,
      {required Map<String, dynamic> body, Map<String, String>? headers});

  Future<Either<ErrorHandlerCore, String>> validationResult<T>(T response);
}
