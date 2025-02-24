import 'package:core/data/repository/internal_database/internal_database_repository.dart';
import 'package:core/domain/use_case/internal_database/delete_all_internal_database_usecase.dart';
import 'package:core/utils/loggers/app_logger.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockInternalDatabaseRepository extends Mock implements InternalDatabaseRepository {}

void main() {
  late MockInternalDatabaseRepository mockInternalDatabaseRepository;
  late DeleteAllInternalDatabaseUseCase deleteAllInternalDatabaseUseCase;
  setUp(() async {
    await LoggerApp().init(isDebug: false, isTest: true);
    mockInternalDatabaseRepository = MockInternalDatabaseRepository();
    deleteAllInternalDatabaseUseCase =
        DeleteAllInternalDatabaseUseCase(internalDatabaseRepository: mockInternalDatabaseRepository);
  });

  test('check result', () async {
    //arrange
    when(() => mockInternalDatabaseRepository.deleteAll(tableName: 'name', keys: ['1']))
        .thenAnswer((invocation) async => true);

    //act
    final result = await deleteAllInternalDatabaseUseCase.call(tableName: 'name', keys: ['1']);

    //assert
    verify(() => mockInternalDatabaseRepository.deleteAll(tableName: 'name', keys: ['1'])).called(1);
    expect(result, true);
    verifyNoMoreInteractions(mockInternalDatabaseRepository);
  });
}
