import 'package:core/data/datasource/internal_database/internal_database_datasource.dart';
import 'package:core/data/datasource/internal_database/internal_database_datasource_impl.dart';
import 'package:core/utils/loggers/app_logger.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:mocktail/mocktail.dart';

class MockHiveInterface extends Mock implements HiveInterface {}

class MockBoxHive extends Mock implements Box {}

void main() {
  late InternalDatabaseDatasource internalDatabaseDatasource;
  late MockHiveInterface mockHiveInterface;
  late MockBoxHive mockBoxHive;

  setUp(() async {
    await LoggerApp().init(isDebug: false, isTest: true);
    mockHiveInterface = MockHiveInterface();
    mockBoxHive = MockBoxHive();
    internalDatabaseDatasource = InternalDatabaseDatasourceImpl(mockHiveInterface);
  });
  group('operations', () {
    test('delete value', () async {
      //arrange
      when(() => mockHiveInterface.openBox('test')).thenAnswer((invocation) async => mockBoxHive);

      //act
      await internalDatabaseDatasource.deleteValue(tableName: 'test', key: '1');

      //assert
      verify(() => mockBoxHive.delete('1')).called(1);
      verifyNoMoreInteractions(mockBoxHive);
    });

    test('get value', () async {
      //arrange
      when(() => mockHiveInterface.openBox('test')).thenAnswer((invocation) async => mockBoxHive);

      //act
      await internalDatabaseDatasource.getValue(tableName: 'test', key: '1');

      //assert
      verify(() => mockBoxHive.get('1')).called(1);
      verifyNoMoreInteractions(mockBoxHive);
    });

    test('set value', () async {
      //arrange
      when(() => mockHiveInterface.openBox('test')).thenAnswer((invocation) async => mockBoxHive);

      //act
      await internalDatabaseDatasource.setValue(tableName: 'test', key: '1', value: 'one');

      //assert
      verify(() => mockBoxHive.put('1', 'one')).called(1);
      verifyNoMoreInteractions(mockBoxHive);
    });

    test('delete all', () async {
      //arrange
      when(() => mockHiveInterface.openBox('test')).thenAnswer((invocation) async => mockBoxHive);

      //act
      await internalDatabaseDatasource.deleteAll(tableName: 'test', keys: ['one']);

      //assert
      verify(() => mockBoxHive.deleteAll(['one'])).called(1);
      verifyNoMoreInteractions(mockBoxHive);
    });
  });
}
