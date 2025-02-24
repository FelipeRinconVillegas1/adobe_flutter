import 'package:dartz/dartz.dart';

import '../../utils/error_handler/error_handler.dart';

abstract class ApiClient {
  Future<Either<ErrorHandler, String>> get(String url, {Map<String, String>? headers});

  Future<Either<ErrorHandler, String>> post(String url,
      {required Map<String, dynamic> body, Map<String, String>? headers});

  Future<Either<ErrorHandler, String>> put(String url,
      {required Map<String, dynamic> body, Map<String, String>? headers});

  Future<Either<ErrorHandler, String>> validationResult<T>(T response);
}
