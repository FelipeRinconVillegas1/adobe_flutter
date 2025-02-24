import 'package:core/data/repository/get_simple_flag_repository.dart';
import 'package:core/utils/loggers/app_logger.dart';
import 'package:test/test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:core/data/datasource/remote_config_datasource.dart';
import 'package:core/utils/error_handler/error_handler.dart';
import 'package:dartz/dartz.dart';

// Mock the RemoteConfigDataSource
class MockRemoteConfigDataSource extends Mock implements RemoteConfigDataSource {}

void main() {
  late GetSimpleFlagRepository repository;
  late RemoteConfigDataSource remoteConfigDataSource;

  setUp(() async {
    await LoggerApp().init(isDebug: false, isTest: true);
    remoteConfigDataSource = MockRemoteConfigDataSource();
    repository = GetSimpleFlagRepositoryImpl(remoteConfigDataSource);
  });

  group('GetSimpleFlagRepositoryImpl', () {
    const testKey = 'test_key';

    test('returns boolean value when T is bool', () async {
      when(() => remoteConfigDataSource.getBool(testKey)).thenReturn(true);

      final result = repository.getSimpleFlag<bool>(testKey);

      expect(result, isA<Right>());
      expect(result.getOrElse(() => false), true);
    });

    test('returns int value when T is int', () async {
      when(() => remoteConfigDataSource.getInt(testKey)).thenReturn(123);

      final result = repository.getSimpleFlag<int>(testKey);

      expect(result, isA<Right>());
      expect(result.getOrElse(() => 0), 123);
    });

    test('returns int value when T is double', () async {
      when(() => remoteConfigDataSource.getDouble(testKey)).thenReturn(123.0);

      final result = repository.getSimpleFlag<double>(testKey);

      expect(result, isA<Right>());
      expect(result.getOrElse(() => 0), 123);
    });

    test('returns String value when T is String', () async {
      when(() => remoteConfigDataSource.getString(testKey)).thenReturn('123');

      final result = repository.getSimpleFlag<String>(testKey);

      expect(result, isA<Right>());
      expect(result.getOrElse(() => ''), '123');
    });

    test('returns error when type is not supported', () async {
      final result = repository.getSimpleFlag<List>(testKey);

      expect(result, isA<Left>());
      expect(result.swap().getOrElse(() => ErrorHandlerExternal(errorCode: '', errorMessage: '')),
          isA<ErrorHandlerExternal>());
    });

    test('returns error on exception', () async {
      when(() => remoteConfigDataSource.getBool(testKey)).thenThrow(Exception('Some error'));

      final result = repository.getSimpleFlag<bool>(testKey);

      expect(result, isA<Left>());
      expect(result.swap().getOrElse(() => ErrorHandlerExternal(errorCode: '', errorMessage: '')),
          isA<ErrorHandlerExternal>());
    });
  });
}
