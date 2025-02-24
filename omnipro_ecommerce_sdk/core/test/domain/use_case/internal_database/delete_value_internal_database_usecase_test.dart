import 'package:core/data/repository/internal_database/internal_database_repository.dart';
import 'package:core/domain/use_case/internal_database/delete_value_internal_database_usecase.dart';
import 'package:core/utils/loggers/app_logger.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockInternalDatabaseRepository extends Mock implements InternalDatabaseRepository {}

void main() {
  late MockInternalDatabaseRepository mockInternalDatabaseRepository;
  late DeleteValueInternalDatabaseUseCase deleteValueInternalDatabaseUseCase;
  setUp(() async {
    await LoggerApp().init(isDebug: false, isTest: true);
    mockInternalDatabaseRepository = MockInternalDatabaseRepository();
    deleteValueInternalDatabaseUseCase =
        DeleteValueInternalDatabaseUseCase(internalDatabaseRepository: mockInternalDatabaseRepository);
  });

  test('check result', () async {
    //arrange
    when(() => mockInternalDatabaseRepository.deleteValue(tableName: 'name', key: '1'))
        .thenAnswer((invocation) async => true);

    //act
    final result = await deleteValueInternalDatabaseUseCase.call(tableName: 'name', key: '1');

    //assert
    verify(() => mockInternalDatabaseRepository.deleteValue(tableName: 'name', key: '1')).called(1);
    expect(result, true);
    verifyNoMoreInteractions(mockInternalDatabaseRepository);
  });
}
