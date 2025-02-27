import 'package:flutter/widgets.dart';
import 'package:logger/logger.dart';

class LoggerOms {
  static final LoggerOms _singleton = LoggerOms._internal();
  late bool _isDebug;
  late Logger _logger;
  late bool _isTest;
  final String _tagTest = '[Unit Test]';

  factory LoggerOms() {
    return _singleton;
  }

  LoggerOms._internal();

  Future<void> init({bool isDebug = false, bool isTest = false, LogPrinter? printer}) async {
    _logger = Logger(
      printer: printer ?? PrettyPrinter(),
    );
    _isDebug = isDebug;
    _isTest = isTest;
  }

  void log({required String message}) {
    if (_isDebug) {
      if (_isTest) {
        _logger.i(_tagTest + message);
      } else {
        _logger.i(message);
      }
    }
  }

  void warning({required String message}) {
    if (_isDebug) {
      debugPrint(message);
      if (_isTest) {
        _logger.w(_tagTest + message);
      } else {
        _logger.w(message);
      }
    }
  }

  void error({
    required String message,
    Object? error,
    int? errorKey,
    StackTrace? stack,
  }) {
    if (_isDebug) {
      debugPrint(message);
      if (_isTest) {
        _logger.e(_tagTest + message, error, stack);
      } else {
        _logger.e(message, error, stack);
      }
      return;
    }
  }
}
