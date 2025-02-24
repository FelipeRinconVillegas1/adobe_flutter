import 'package:core/domain/use_case/get_simple_flag_use_case.dart';
import 'package:core/utils/loggers/app_logger.dart';
import 'package:test/test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:core/data/repository/get_simple_flag_repository.dart';
import 'package:core/utils/error_handler/error_handler.dart';
import 'package:dartz/dartz.dart';

class MockGetSimpleFlagRepository extends Mock implements GetSimpleFlagRepository {}

void main() {
  late GetSimpleFlagUseCase useCase;
  late MockGetSimpleFlagRepository repository;

  setUp(() async {
    await LoggerApp().init(isDebug: false, isTest: true);
    repository = MockGetSimpleFlagRepository();
    useCase = GetSimpleFlagUseCase(repository);
  });

  group('GetSimpleFlagUseCase', () {
    const testKey = 'test_key';

    test('fetches boolean flag successfully', () async {
      when(() => repository.getSimpleFlag<bool>(testKey)).thenAnswer((_) => right(true));

      final result = useCase.execute<bool>(testKey);

      expect(result, isA<Right>());
      expect(result.getOrElse(() => false), true);
    });

    test('returns an error', () async {
      final errorHandler = ErrorHandlerExternal(errorCode: 'ERROR', errorMessage: 'An error occurred');
      when(() => repository.getSimpleFlag<bool>(testKey)).thenAnswer((_) => left(errorHandler));

      final result = useCase.execute<bool>(testKey);

      expect(result, isA<Left>());
      expect(result.swap().getOrElse(() => ErrorHandlerExternal(errorCode: '', errorMessage: '')), errorHandler);
    });

    test('fetches int flag successfully', () async {
      when(() => repository.getSimpleFlag<int>(testKey)).thenAnswer((_) => right(123));

      final result = useCase.execute<int>(testKey);

      expect(result, isA<Right>());
      expect(result.getOrElse(() => 0), 123);
    });

    test('fetches double flag successfully', () async {
      when(() => repository.getSimpleFlag<double>(testKey)).thenAnswer((_) => right(123.456));

      final result = useCase.execute<double>(testKey);

      expect(result, isA<Right>());
      expect(result.getOrElse(() => 0.0), 123.456);
    });

    test('fetches String flag successfully', () async {
      when(() => repository.getSimpleFlag<String>(testKey)).thenAnswer((_) => right('test_value'));

      final result = useCase.execute<String>(testKey);

      expect(result, isA<Right>());
      expect(result.getOrElse(() => ''), 'test_value');
    });

    test('returns an error for unsupported type', () async {
      final errorHandler = ErrorHandlerExternal(errorCode: 'ERROR', errorMessage: 'Type not supported');
      when(() => repository.getSimpleFlag<List>(testKey)).thenAnswer((_) => left(errorHandler));

      final result = useCase.execute<List>(testKey);

      expect(result, isA<Left>());
      expect(result.swap().getOrElse(() => ErrorHandlerExternal(errorCode: '', errorMessage: '')), errorHandler);
    });
  });
}
