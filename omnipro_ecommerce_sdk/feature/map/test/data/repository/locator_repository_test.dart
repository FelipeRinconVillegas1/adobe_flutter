import 'package:flutter_test/flutter_test.dart';
import 'package:map/data/repository/locator_repository_impl.dart';
import 'package:map/domain/entity/location_permission_entity.dart';
import 'package:map/domain/entity/position_entity.dart';
import 'package:mocktail/mocktail.dart';
import 'package:map/data/datasource/locator_datasource_impl.dart';

class MockLocatorDatasource extends Mock implements LocatorDatasourceImpl {}

void main() {
  late LocatorDatasourceImpl locatorDatasourceImpl;
  late LocatorRepositoryImpl locatorRepositoryImpl;

  setUp(() {
    locatorDatasourceImpl = MockLocatorDatasource();
    locatorRepositoryImpl = LocatorRepositoryImpl(datasource: locatorDatasourceImpl);
  });

  group('checkPermission', () {
    test('returns LocationPermissionEntity when permission is whileInUse', () async {
      //arrange
      const expected = LocationPermissionEntity.whileInUse;
      when(() => locatorDatasourceImpl.checkPermission()).thenAnswer((_) async => expected);
      //act
      final result = await locatorRepositoryImpl.checkPermission();
      //assert
      verify(() => locatorDatasourceImpl.checkPermission()).called(1);
      expect(result, expected);
    });

    test('returns LocationPermissionEntity when permission is denied', () async {
      //arrange
      const expected = LocationPermissionEntity.denied;
      when(() => locatorDatasourceImpl.checkPermission()).thenAnswer((_) async => expected);
      //act
      final result = await locatorRepositoryImpl.checkPermission();
      //assert
      verify(() => locatorDatasourceImpl.checkPermission()).called(1);
      expect(result, expected);
    });

    test('returns LocationPermissionEntity when permission is always', () async {
      //arrange
      const expected = LocationPermissionEntity.always;
      when(() => locatorDatasourceImpl.checkPermission()).thenAnswer((_) async => expected);
      //act
      final result = await locatorRepositoryImpl.checkPermission();
      //assert
      verify(() => locatorDatasourceImpl.checkPermission()).called(1);
      expect(result, expected);
    });

    test('returns LocationPermissionEntity when permission is deniedForever', () async {
      //arrange
      const expected = LocationPermissionEntity.deniedForever;
      when(() => locatorDatasourceImpl.checkPermission()).thenAnswer((_) async => expected);
      //act
      final result = await locatorRepositoryImpl.checkPermission();
      //assert
      verify(() => locatorDatasourceImpl.checkPermission()).called(1);
      expect(result, expected);
    });

    test('returns LocationPermissionEntity when permission is unknown', () async {
      //arrange
      const expected = LocationPermissionEntity.unknown;
      when(() => locatorDatasourceImpl.checkPermission()).thenAnswer((_) async => expected);
      //act
      final result = await locatorRepositoryImpl.checkPermission();
      //assert
      verify(() => locatorDatasourceImpl.checkPermission()).called(1);
      expect(result, expected);
    });
  });

  group('getCurrentPosition', () {
    test('returns PositionEntity when call currentPosition', () async {
      //arrange
      const expected = PositionEntity(latitude: 0, longitude: 0);
      when(() => locatorDatasourceImpl.getCurrentPosition()).thenAnswer((_) async => expected);
      //act
      final result = await locatorRepositoryImpl.getCurrentPosition();
      //assert
      verify(() => locatorDatasourceImpl.getCurrentPosition()).called(1);
      expect(result, expected);
    });
  });

  group('locationService', () {
    test('return location service enable value when isLocationServiceEnabled is call', () async {
      //arrange
      const expected = true;
      when(() => locatorDatasourceImpl.isLocationServiceEnabled()).thenAnswer((_) async => expected);
      //act
      final result = await locatorRepositoryImpl.isLocationServiceEnabled();
      //assert
      verify(() => locatorDatasourceImpl.isLocationServiceEnabled()).called(1);
      expect(result, expected);
    });
  });

  group('requestPermission', () {
    test('returns LocationPermissionEntity when permission is whileInUse', () async {
      //arrange
      const expected = LocationPermissionEntity.whileInUse;
      when(() => locatorDatasourceImpl.requestPermission()).thenAnswer((_) async => expected);
      //act
      final result = await locatorRepositoryImpl.requestPermission();
      //assert
      verify(() => locatorDatasourceImpl.requestPermission()).called(1);
      expect(result, expected);
    });

    test('returns LocationPermissionEntity when permission is denied', () async {
      //arrange
      const expected = LocationPermissionEntity.denied;
      when(() => locatorDatasourceImpl.requestPermission()).thenAnswer((_) async => expected);
      //act
      final result = await locatorRepositoryImpl.requestPermission();
      //assert
      verify(() => locatorDatasourceImpl.requestPermission()).called(1);
      expect(result, expected);
    });

    test('returns LocationPermissionEntity when permission is always', () async {
      //arrange
      const expected = LocationPermissionEntity.always;
      when(() => locatorDatasourceImpl.requestPermission()).thenAnswer((_) async => expected);
      //act
      final result = await locatorRepositoryImpl.requestPermission();
      //assert
      verify(() => locatorDatasourceImpl.requestPermission()).called(1);
      expect(result, expected);
    });

    test('returns LocationPermissionEntity when permission is deniedForever', () async {
      //arrange
      const expected = LocationPermissionEntity.deniedForever;
      when(() => locatorDatasourceImpl.requestPermission()).thenAnswer((_) async => expected);
      //act
      final result = await locatorRepositoryImpl.requestPermission();
      //assert
      verify(() => locatorDatasourceImpl.requestPermission()).called(1);
      expect(result, expected);
    });

    test('returns LocationPermissionEntity when permission is unknown', () async {
      //arrange
      const expected = LocationPermissionEntity.unknown;
      when(() => locatorDatasourceImpl.requestPermission()).thenAnswer((_) async => expected);
      //act
      final result = await locatorRepositoryImpl.requestPermission();
      //assert
      verify(() => locatorDatasourceImpl.requestPermission()).called(1);
      expect(result, expected);
    });
  });
}
