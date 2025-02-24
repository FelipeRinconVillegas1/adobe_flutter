import 'package:core/data/datasource/session/log_out_data_source.dart';
import 'package:core/local/data/datasource/secure_storage_datasource.dart';
import 'package:core/utils/loggers/app_logger.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockSecureStorageDatasource extends Mock implements SecureStorageDatasource {}

void main() {
  late LogOutDataSource loginDatasource;
  late SecureStorageDatasource mockSecureStorageDatasource;

  setUp(() async {
    mockSecureStorageDatasource = MockSecureStorageDatasource();
    await LoggerApp().init(isDebug: false, isTest: true);
    loginDatasource = LogOutDataSourceImpl(mockSecureStorageDatasource);
  });

  test('logOut should call  secure storage delete customer and session', () async {
    // Mock the necessary dependencies
    when(() => mockSecureStorageDatasource.deleteAll()).thenAnswer((_) async => () {});

    await loginDatasource.logOut([]);

    // Verify the method call
    verify(() => mockSecureStorageDatasource.deleteAll()).called(1);
  });
}
