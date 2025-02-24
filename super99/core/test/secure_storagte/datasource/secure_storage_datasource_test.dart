import 'package:core/local/data/datasource/secure_storage_datasource.dart';
import 'package:core/local/data/datasource/secure_storage_datasource_impl.dart';
import 'package:core/local/key_secure_storage.dart';
import 'package:core/utils/loggers/app_logger.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:rxdart/rxdart.dart';

class MockFlutterSecureStorage extends Mock implements FlutterSecureStorage {}

class MockBehaviorSubject extends Mock implements BehaviorSubject<EventDataSecureStorage> {}

void main() {
  late SecureStorageDatasource secureStorageDatasource;
  late FlutterSecureStorage flutterSecureStorage;
  late BehaviorSubject<EventDataSecureStorage> subjectEvent;
  setUp(() async {
    await LoggerApp().init(isDebug: false, isTest: true);
    flutterSecureStorage = MockFlutterSecureStorage();
    subjectEvent = MockBehaviorSubject();
    secureStorageDatasource = SecureStorageDatasourceImpl(flutterSecureStorage, subjectEvent);
  });

  group('secure storage repository', () {
    final mockData = 'mockData';
    test('should get empty data', () async {
      // arrange
      when(() => flutterSecureStorage.read(key: KeySecureStorage.customer.name)).thenAnswer((_) async => '');
      // act
      final result = await secureStorageDatasource.getData(KeySecureStorage.customer);
      // assert
      expect(result, '');
      verify(() => subjectEvent.add(EventDataSecureStorage(KeySecureStorage.customer, SecureStorageTypeEvent.get)))
          .called(1);
    });
    test('should get any data', () async {
      // arrange
      when(() => flutterSecureStorage.read(key: KeySecureStorage.customer.name)).thenAnswer((_) async => mockData);
      // act
      final result = await secureStorageDatasource.getData(KeySecureStorage.customer);
      // assert
      expect(result, mockData);
      verify(() => subjectEvent.add(
          EventDataSecureStorage(KeySecureStorage.customer, SecureStorageTypeEvent.get, data: mockData))).called(1);
    });
  });
}
