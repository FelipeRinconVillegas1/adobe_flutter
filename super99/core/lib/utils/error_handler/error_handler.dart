import 'package:core/utils/loggers/app_logger.dart';
import 'package:equatable/equatable.dart';

import 'error_code.dart';

abstract class ErrorHandler extends Equatable {
  ErrorHandler(
      {required this.errorMessage, this.error, this.stackTrace, this.errorType = ErrorType.error, this.errorCode}) {
    LoggerApp().error(
      message: errorMessage,
      stack: stackTrace,
      error: error,
      errorType: errorType,
      errorCode: errorCode,
    );
  }

  final String errorMessage;
  final Object? error;
  final ErrorType errorType;
  final StackTrace? stackTrace;
  final dynamic errorCode;

  T whenError<T>(
      {required Function(ErrorHandlerInternal) internal, required T Function(ErrorHandlerExternal) external}) {
    if (this is ErrorHandlerInternal) {
      return internal(this as ErrorHandlerInternal);
    }

    return external(this as ErrorHandlerExternal);
  }

  void whenInternal({required Function(ErrorHandlerInternal) exec}) {
    if (this is ErrorHandlerInternal) {
      exec(this as ErrorHandlerInternal);
    }
  }

  T? whenExternal<T>({required T Function(ErrorHandlerExternal) exec}) {
    if (this is ErrorHandlerExternal) {
      return exec(this as ErrorHandlerExternal);
    }
    return null;
  }

  @override
  List<Object?> get props => [
        errorMessage,
        error,
        stackTrace,
      ];
}

class ExceptionRemoteConfig extends ErrorHandler implements Exception {
  ExceptionRemoteConfig({
    required String errorMessage,
    Object? error,
    StackTrace? stackTrace,
    dynamic errorCode,
    ErrorType errorType = ErrorType.error,
  }) : super(
          errorMessage: errorMessage,
          error: error,
          stackTrace: stackTrace,
          errorCode: errorCode,
          errorType: errorType,
        );
}

class ErrorHandlerInternal extends ErrorHandler {
  ///Errors to handle internally only
  ErrorHandlerInternal({
    required super.errorMessage,
    super.errorCode,
    super.error,
    super.stackTrace,
    super.errorType,
  });

  @override
  List<Object?> get props => [
        errorMessage,
        error,
        stackTrace,
        errorType,
        errorCode,
      ];
}

class ErrorHandlerExternal extends ErrorHandler {
  ///Errors to show to the user, the UI must react to them
  ErrorHandlerExternal({
    required super.errorCode,
    required super.errorMessage,
    super.error,
    this.errorQueryMessage,
    super.stackTrace,
    super.errorType,
  });

  final String? errorQueryMessage;

  @override
  List<Object?> get props => [
        errorCode,
        errorMessage,
        error,
        stackTrace,
        errorType,
        errorQueryMessage,
      ];
}
