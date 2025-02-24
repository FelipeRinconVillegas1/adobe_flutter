import 'package:core/data/datasource/launcher/launcher_datasource.dart';
import 'package:core/data/repository/launcher/launcher_repository.dart';
import 'package:core/data/repository/launcher/launcher_repository_impl.dart';
import 'package:core/utils/error_handler/error_handler.dart';
import 'package:core/utils/loggers/app_logger.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockLauncherDatasource extends Mock implements LauncherDatasource {}

void main() {
  late MockLauncherDatasource mockLauncherDatasource;
  late LauncherRepository launcherRepository;

  setUp(() async {
    await LoggerApp().init(isDebug: false, isTest: true);
    mockLauncherDatasource = MockLauncherDatasource();
    launcherRepository = LauncherRepositoryImpl(mockLauncherDatasource);
  });

  test('succesfull call', () async {
    //arrange
    final url = 'test';
    when(() => mockLauncherDatasource.omniLaunch(url: url)).thenAnswer((invocation) async => None());

    //act
    final result = await launcherRepository.omniLaunch(url: url);

    //assert
    expect(result, None());
    verify(() => mockLauncherDatasource.omniLaunch(url: url)).called(1);
    verifyNoMoreInteractions(mockLauncherDatasource);
  });

  test('failed call', () async {
    //arrange
    final url = 'test';
    final errorResult = ErrorHandlerInternal(errorMessage: 'test');
    when(() => mockLauncherDatasource.omniLaunch(url: url)).thenAnswer((invocation) async => Some(errorResult));

    //act
    final result = await launcherRepository.omniLaunch(url: url);

    //assert
    expect(result, Some(errorResult));
    verify(() => mockLauncherDatasource.omniLaunch(url: url)).called(1);
    verifyNoMoreInteractions(mockLauncherDatasource);
  });
}
