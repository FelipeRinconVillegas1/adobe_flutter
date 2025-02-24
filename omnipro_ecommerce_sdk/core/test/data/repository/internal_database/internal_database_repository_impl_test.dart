import 'package:core/data/datasource/internal_database/internal_database_datasource.dart';
import 'package:core/data/repository/internal_database/internal_database_repository.dart';
import 'package:core/data/repository/internal_database/internal_database_repository_impl.dart';
import 'package:core/utils/loggers/app_logger.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockInternalDatabaseDatasource extends Mock implements InternalDatabaseDatasource {}

void main() {
  late MockInternalDatabaseDatasource mockInternalDatabaseDatasource;
  late InternalDatabaseRepository internalDatabaseRepository;

  setUp(() async {
    await LoggerApp().init(isDebug: false, isTest: true);
    mockInternalDatabaseDatasource = MockInternalDatabaseDatasource();
    internalDatabaseRepository =
        InternalDatabaseRepositoryImpl(internalDatabaseDatasource: mockInternalDatabaseDatasource);
  });

  group('operation', () {
    test('delete value', () async {
      //arrange
      when(() => mockInternalDatabaseDatasource.deleteValue(tableName: 'name', key: '1'))
          .thenAnswer((invocation) async => true);

      //act
      final result = await internalDatabaseRepository.deleteValue(tableName: 'name', key: '1');

      //assert
      verify(() => mockInternalDatabaseDatasource.deleteValue(tableName: 'name', key: '1')).called(1);
      expect(result, true);
      verifyNoMoreInteractions(mockInternalDatabaseDatasource);
    });

    test('get value', () async {
      //arrange
      final resultExpect = 'value';
      when(() => mockInternalDatabaseDatasource.getValue<String>(tableName: 'name', key: '1'))
          .thenAnswer((invocation) async => resultExpect);

      //act
      final result = await internalDatabaseRepository.getValue<String>(tableName: 'name', key: '1');

      //assert
      verify(() => mockInternalDatabaseDatasource.getValue<String>(tableName: 'name', key: '1')).called(1);
      expect(result, resultExpect);
      verifyNoMoreInteractions(mockInternalDatabaseDatasource);
    });

    test('set value', () async {
      //arrange
      when(() => mockInternalDatabaseDatasource.setValue(tableName: 'name', key: '1', value: 'value'))
          .thenAnswer((invocation) async => true);

      //act
      final result = await internalDatabaseRepository.setValue(tableName: 'name', key: '1', value: 'value');

      //assert
      verify(() => mockInternalDatabaseDatasource.setValue(tableName: 'name', key: '1', value: 'value')).called(1);
      expect(result, true);
      verifyNoMoreInteractions(mockInternalDatabaseDatasource);
    });

    test('delete all', () async {
      //arrange
      when(() => mockInternalDatabaseDatasource.deleteAll(tableName: 'name', keys: ['1']))
          .thenAnswer((invocation) async => true);

      //act
      final result = await internalDatabaseRepository.deleteAll(tableName: 'name', keys: ['1']);

      //assert
      verify(() => mockInternalDatabaseDatasource.deleteAll(tableName: 'name', keys: ['1'])).called(1);
      expect(result, true);
      verifyNoMoreInteractions(mockInternalDatabaseDatasource);
    });
  });
}
