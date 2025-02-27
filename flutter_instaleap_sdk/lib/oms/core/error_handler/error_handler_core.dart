import 'package:equatable/equatable.dart';
import '../loggers/logger_oms.dart';

abstract class ErrorHandlerCore extends Equatable {
  ErrorHandlerCore({
    required this.errorMessage,
    this.error,
    this.stackTrace,
    this.logger,
  }) {
    logger != null
        ? logger!.error(message: errorMessage, stack: stackTrace, error: error)
        : LoggerOms().error(message: errorMessage, stack: stackTrace, error: error);
  }

  /// Message internal error to be logged
  final LoggerOms? logger;
  final String errorMessage;
  final Exception? error;
  final StackTrace? stackTrace;

  T whenError<T>(
      {required Function(ErrorHandlerInternalCore) internal, required T Function(ErrorHandlerExternalCore) external}) {
    if (this is ErrorHandlerInternalCore) {
      return internal(this as ErrorHandlerInternalCore);
    }

    return external(this as ErrorHandlerExternalCore);
  }

  void whenInternal({required Function(ErrorHandlerInternalCore) exec}) {
    if (this is ErrorHandlerInternalCore) {
      exec(this as ErrorHandlerInternalCore);
    }
  }

  T? whenExternal<T>({required T Function(ErrorHandlerExternalCore) exec}) {
    if (this is ErrorHandlerExternalCore) {
      return exec(this as ErrorHandlerExternalCore);
    }
    return null;
  }
}

class ErrorHandlerInternalCore extends ErrorHandlerCore {
  ///Errors to handle internally only
  ErrorHandlerInternalCore({
    required super.errorMessage,
    super.error,
    super.stackTrace,
    super.logger,
  });

  @override
  List<Object?> get props => [errorMessage, error, stackTrace, logger];

  String toJson() {
    return '{"errorMessage": "$errorMessage", "error": "$error", "stackTrace": "$stackTrace"}';
  }
}

class ErrorHandlerExternalCore extends ErrorHandlerCore {
  ///Errors to show to the user, the UI must react to them
  ErrorHandlerExternalCore({
    required this.errorCode,
    required super.errorMessage,
    super.error,
    super.stackTrace,
    super.logger,
  });

  final String errorCode;

  @override
  List<Object?> get props => [errorCode, errorMessage, error, stackTrace];

  String toJson() {
    return '{"errorCode": "$errorCode", "errorMessage": "$errorMessage", "error": "$error", "stackTrace": "$stackTrace"}';
  }
}

class ExceptionToken implements Exception {
  final String message;

  ExceptionToken({
    required this.message,
  });

  @override
  String toString() {
    return message;
  }
}
