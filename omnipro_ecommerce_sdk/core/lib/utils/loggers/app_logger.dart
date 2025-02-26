import 'dart:async';

import 'package:core/domain/entity/environment.dart';
import 'package:core/utils/error_handler/error_code.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logger/logger.dart';

typedef CallBackToLogCrashlytics = void Function(Object error, StackTrace stack);

class LoggerApp {
  LoggerApp._internal();

  factory LoggerApp() {
    return _singleton;
  }

  late bool _isDebug;
  late bool _isTest;
  late Logger _logger;
  late Environment _environment;
  late WidgetRef? ref;
  late CallBackToLogCrashlytics? _callBackToLogCrashlytics;
  static final LoggerApp _singleton = LoggerApp._internal();

  void setRef(WidgetRef provider) {
    ref = provider;
  }

  Future<void> init({
    bool isDebug = false,
    bool isTest = false,
    LogPrinter? printer,
    Environment? environment,
    CallBackToLogCrashlytics? callBackToLogCrashlytics,
  }) async {
    _callBackToLogCrashlytics = callBackToLogCrashlytics;

    _logger = Logger(
      printer: printer ?? PrettyPrinter(),
    );

    _environment = environment ?? Environment.dev;

    _isDebug = isDebug;
    _isTest = isTest;
  }

  void warning({required String message}) {
    if (_isDebug) {
      debugPrint(message);
      _logger.w(message);
    }
  }

  void info({required String message}) {
    if (_isDebug) {
      debugPrint(message);
      _logger.i(message);
    }
  }

  void error({
    required String message,
    String? errorQueryMessage,
    dynamic errorCode,
    Object? error,
    StackTrace? stack,
    ErrorType errorType = ErrorType.error,
  }) {
    try {
      if (error is Error) {
        stack ??= error.stackTrace;
      }
      error ??= Exception('Error-> message: $message');

      if (_callBackToLogCrashlytics != null) {
        _callBackToLogCrashlytics!(error, stack!);
      }

      if (_isDebug) {
        if (errorType == ErrorType.ui) {
          _logger.i(message);
        }
        if (errorType == ErrorType.error) {
          _logger.e("ERROR: $message, ERROR CODE: $errorCode, ErrorQueryMessage $errorQueryMessage", error, stack);
        } else {
          _logger.w(message, error, stack);
        }
        return;
      }
    } catch (_) {}
  }
}
