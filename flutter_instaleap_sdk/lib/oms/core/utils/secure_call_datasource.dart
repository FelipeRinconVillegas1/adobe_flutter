import 'dart:convert';
import 'package:dartz/dartz.dart';
import 'package:flutter_instaleap_sdk/oms/core/error_handler/error_handler_core.dart';
import '../error_handler/error_helper_core.dart';
import '../error_handler/error_handler_core.dart' as eh;

Future<Either<eh.ErrorHandlerCore, T>> secureServerCallCore<T>(
    Future<Either<eh.ErrorHandlerCore, T>> Function() request,
    {String? errorMessage,
    required String serviceName}) async {
  try {
    return await request();
  } on TypeError catch (e, stackTrace) {
    return left(
      eh.ErrorHandlerInternalCore(
        errorMessage: errorMessage ?? 'Type Error',
        stackTrace: stackTrace,
      ),
    );
  } on ExceptionToken catch (e, stackTrace) {
    try {
      final jsonError = jsonDecode(e.message);
      final errorHandlerExternal = eh.ErrorHandlerExternalCore(
        errorMessage: errorMessage ?? jsonError['errorMessage'],
        stackTrace: StackTrace.fromString(jsonError['stackTrace'] ?? ""),
        errorCode: ErrorHelperCore.getErrorMessage(
          jsonError['errorCode'],
          "es",
          serviceName: serviceName,
        ),
        error: Exception(jsonError['error'] ?? ""),
      );
      return left(errorHandlerExternal);
    } catch (_) {}
    return left(eh.ErrorHandlerInternalCore(
      errorMessage: e.message,
      stackTrace: stackTrace,
    ));
  } catch (e, stackTrace) {
    return left(eh.ErrorHandlerInternalCore(
      errorMessage: e.toString(),
      stackTrace: stackTrace,
    ));
  }
}
