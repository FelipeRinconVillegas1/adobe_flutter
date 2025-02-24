import 'package:core/data/repository/launcher/launcher_repository.dart';
import 'package:core/domain/use_case/launcher/launch_url_use_case.dart';
import 'package:core/utils/error_handler/error_handler.dart';
import 'package:core/utils/loggers/app_logger.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockLauncherRepository extends Mock implements LauncherRepository {}

void main() {
  late MockLauncherRepository mockLauncherRepository;
  late LaunchUrlUseCase luanchUrlUseCase;

  setUp(() async {
    await LoggerApp().init(isDebug: false, isTest: true);
    mockLauncherRepository = MockLauncherRepository();
    luanchUrlUseCase = LaunchUrlUseCase(mockLauncherRepository);
  });

  test('succesfull call', () async {
    //arrange
    final url = 'test';
    when(() => mockLauncherRepository.omniLaunch(url: url)).thenAnswer((invocation) async => None());

    //act
    final result = await luanchUrlUseCase.call(url: url);

    //assert
    expect(result, None());
    verify(() => mockLauncherRepository.omniLaunch(url: url)).called(1);
    verifyNoMoreInteractions(mockLauncherRepository);
  });

  test('failed call', () async {
    //arrange
    final url = 'test';
    final errorResult = ErrorHandlerInternal(errorMessage: 'test');
    when(() => mockLauncherRepository.omniLaunch(url: url)).thenAnswer((invocation) async => Some(errorResult));

    //act
    final result = await luanchUrlUseCase.call(url: url);

    //assert
    expect(result, Some(errorResult));
    verify(() => mockLauncherRepository.omniLaunch(url: url)).called(1);
    verifyNoMoreInteractions(mockLauncherRepository);
  });
}
