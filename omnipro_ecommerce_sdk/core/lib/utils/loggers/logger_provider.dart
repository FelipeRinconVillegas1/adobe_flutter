import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logger/logger.dart';

class LoggerProvider extends ProviderObserver {
  LoggerProvider(this._logger);

  final Logger _logger;

  @override
  void didUpdateProvider(
    ProviderBase<Object?> provider,
    Object? previousValue,
    Object? newValue,
    ProviderContainer container,
  ) {
    _logger.i('''
    {
      "CHANGE PROVIDER": "${provider.name ?? provider.runtimeType}",
      "newValue": "$newValue"
    }''');
  }

  @override
  void didDisposeProvider(ProviderBase<Object?> provider, ProviderContainer container) {
    _logger.w('''
    {
      "DISPOSE PROVIDER": "${provider.name ?? provider.runtimeType}",
    }''');
    super.didDisposeProvider(provider, container);
  }
}
