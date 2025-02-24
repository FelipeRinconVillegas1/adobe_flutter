import 'package:core/local/data/datasource/secure_storage_datasource.dart';
import 'package:core/local/data/repository/secure_storage_repository_impl.dart';
import 'package:core/local/data/repository/secure_storege_repository.dart';
import 'package:core/local/key_secure_storage.dart';
import 'package:core/utils/loggers/app_logger.dart';
import 'package:mocktail/mocktail.dart';
import 'package:flutter_test/flutter_test.dart';

class MockSecureStorageDataSource extends Mock implements SecureStorageDatasource {}

void main() {
  late SecureStorageRepository secureStorageRepository;
  late SecureStorageDatasource secureStorageDatasource;
  setUp(() async {
    await LoggerApp().init(isDebug: false, isTest: true);
    secureStorageDatasource = MockSecureStorageDataSource();
    secureStorageRepository = SecureStorageRepositoryImpl(secureStorageDatasource);
  });

  group('secure storage repository', () {
    test('should get empty data', () async {
      // arrange
      when(() => secureStorageDatasource.getData(KeySecureStorage.customer)).thenAnswer((_) async => '');
      // act
      final result = await secureStorageRepository.getData(KeySecureStorage.customer);
      // assert
      expect(result, '');
    });
    test('should get any data', () async {
      // arrange
      when(() => secureStorageDatasource.getData(KeySecureStorage.customer)).thenAnswer((_) async => 'test');
      // act
      final result = await secureStorageRepository.getData(KeySecureStorage.customer);
      // assert
      expect(result, 'test');
    });
  });
}
