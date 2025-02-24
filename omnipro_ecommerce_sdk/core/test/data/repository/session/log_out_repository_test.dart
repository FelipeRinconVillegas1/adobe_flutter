import 'package:core/data/datasource/session/log_out_data_source.dart';
import 'package:core/data/repository/session/log_out_repository.dart';
import 'package:core/utils/loggers/app_logger.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockLoginDatasource extends Mock implements LogOutDataSource {}

void main() {
  late LogOutRepository loginRepository;
  late LogOutDataSource mockLoginDatasource;

  setUp(() async {
    await LoggerApp().init(isDebug: false, isTest: true);
    mockLoginDatasource = MockLoginDatasource();
    loginRepository = LogOutRepositoryImpl(mockLoginDatasource);
  });

  test('When call logOut datasource logOut is executed', () async {
    // Mock the necessary dependencies
    when(() => mockLoginDatasource.logOut([])).thenAnswer((_) async => () {});

    // Perform the login operation
    await loginRepository.logOut([]);

    // Verify the result
    verify(() => mockLoginDatasource.logOut([])).called(1);
  });
}
