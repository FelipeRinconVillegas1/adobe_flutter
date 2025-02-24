import 'package:core/data/repository/internal_database/internal_database_repository.dart';
import 'package:core/domain/use_case/internal_database/get_value_internal_database_usecase.dart';
import 'package:core/utils/loggers/app_logger.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockInternalDatabaseRepository extends Mock implements InternalDatabaseRepository {}

void main() {
  late MockInternalDatabaseRepository mockInternalDatabaseRepository;
  late GetValueInternalDatabaseUseCase deleteValueInternalDatabaseUseCase;
  setUp(() async {
    await LoggerApp().init(isDebug: false, isTest: true);
    mockInternalDatabaseRepository = MockInternalDatabaseRepository();
    deleteValueInternalDatabaseUseCase =
        GetValueInternalDatabaseUseCase(internalDatabaseRepository: mockInternalDatabaseRepository);
  });

  test('check result', () async {
    //arrange
    final resultExpect = 'value';
    when(() => mockInternalDatabaseRepository.getValue<String>(tableName: 'name', key: '1'))
        .thenAnswer((invocation) async => resultExpect);

    //act
    final result = await deleteValueInternalDatabaseUseCase.call<String>(tableName: 'name', key: '1');

    //assert
    verify(() => mockInternalDatabaseRepository.getValue<String>(tableName: 'name', key: '1')).called(1);
    expect(result, resultExpect);
    verifyNoMoreInteractions(mockInternalDatabaseRepository);
  });
}
