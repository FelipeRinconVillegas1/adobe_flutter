import 'package:core/data/datasource/remote_config_datasource.dart';
import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockFirebaseRemoteConfig extends Mock implements FirebaseRemoteConfig {}

void main() {
  late RemoteConfigDataSourceImp dataSource;
  late FirebaseRemoteConfig mockRemoteConfig;

  setUp(() {
    mockRemoteConfig = MockFirebaseRemoteConfig();
    dataSource = RemoteConfigDataSourceImp(mockRemoteConfig);
    registerFallbackValue(
        RemoteConfigSettings(fetchTimeout: Duration(seconds: 30), minimumFetchInterval: Duration(days: 1)));
  });

  group('RemoteConfigDataSourceImp', () {
    test('should initialize the remote config data source', () async {
      // arrange
      when(() => mockRemoteConfig.setConfigSettings(any())).thenAnswer((_) async => {});
      when(() => mockRemoteConfig.onConfigUpdated).thenAnswer((_) => Stream.empty());
      when(() => mockRemoteConfig.setDefaults(any())).thenAnswer((_) async => {});
      when(() => mockRemoteConfig.activate()).thenAnswer((_) async => true);
      when(() => mockRemoteConfig.fetch()).thenAnswer((_) async => true);

      // act
      await dataSource.init();

      // assert
      verify(() => mockRemoteConfig.setConfigSettings(any())).called(1);
      verify(() => mockRemoteConfig.setDefaults(any())).called(1);
      verify(() => mockRemoteConfig.activate()).called(1);
      verify(() => mockRemoteConfig.fetch()).called(1);
      verify(() => mockRemoteConfig.onConfigUpdated).called(1);
    });

    test('should get bool value from remote config', () {
      // arrange
      const key = 'test_bool_key';
      const expectedValue = true;
      when(() => mockRemoteConfig.getBool(key)).thenReturn(expectedValue);

      // act
      final result = dataSource.getBool(key);

      // assert
      expect(result, expectedValue);
    });

    test('should get int value from remote config', () {
      // arrange
      const key = 'test_int_key';
      const expectedValue = 123;
      when(() => mockRemoteConfig.getInt(key)).thenReturn(expectedValue);

      // act
      final result = dataSource.getInt(key);

      // assert
      expect(result, expectedValue);
    });

    test('should get double value from remote config', () {
      // arrange
      const key = 'test_double_key';
      const expectedValue = 1.23;
      when(() => mockRemoteConfig.getDouble(key)).thenReturn(expectedValue);

      // act
      final result = dataSource.getDouble(key);

      // assert
      expect(result, expectedValue);
    });

    test('should get string value from remote config', () {
      // arrange
      const key = 'test_string_key';
      const expectedValue = 'test_string_value';
      when(() => mockRemoteConfig.getString(key)).thenReturn(expectedValue);

      // act
      final result = dataSource.getString(key);

      // assert
      expect(result, expectedValue);
    });
  });
}
