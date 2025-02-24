import 'package:core/data/repository/internal_database/internal_database_repository.dart';
import 'package:core/domain/use_case/internal_database/set_value_internal_database_usecase.dart';
import 'package:core/utils/loggers/app_logger.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockInternalDatabaseRepository extends Mock implements InternalDatabaseRepository {}

void main() {
  late MockInternalDatabaseRepository mockInternalDatabaseRepository;
  late SetValueInternalDatabaseUseCase setValueInternalDatabaseUseCase;
  setUp(() async {
    await LoggerApp().init(isDebug: false, isTest: true);
    mockInternalDatabaseRepository = MockInternalDatabaseRepository();
    setValueInternalDatabaseUseCase =
        SetValueInternalDatabaseUseCase(internalDatabaseRepository: mockInternalDatabaseRepository);
  });

  test('check result', () async {
    //arrange
    when(() => mockInternalDatabaseRepository.setValue(tableName: 'name', key: '1', value: 'value'))
        .thenAnswer((invocation) async => true);

    //act
    final result = await setValueInternalDatabaseUseCase.call(tableName: 'name', key: '1', value: 'value');

    //assert
    verify(() => mockInternalDatabaseRepository.setValue(tableName: 'name', key: '1', value: 'value')).called(1);
    expect(result, true);
    verifyNoMoreInteractions(mockInternalDatabaseRepository);
  });
}
