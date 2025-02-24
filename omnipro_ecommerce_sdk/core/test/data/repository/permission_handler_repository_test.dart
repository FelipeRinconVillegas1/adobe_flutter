import 'package:core/data/datasource/permission_handler_datasource.dart';
import 'package:core/data/repository/permission_handler_repository.dart';
import 'package:core/data/repository/permission_handler_repository_impl.dart';
import 'package:core/domain/entity/permission_entities.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockPermissionHandlerDatasource extends Mock implements PermissionHandlerDatasource {}

void main() {
  late PermissionHandlerDatasource permissionHandlerDatasource;
  late PermissionHandlerRepository permissionHandlerRepository;

  setUp(() {
    permissionHandlerDatasource = MockPermissionHandlerDatasource();
    permissionHandlerRepository = PermissionHandlerRepositoryImpl(permissionHandlerDatasource);
  });

  group('checkPermission', () {
    test('check types', () async {
      //arrange
      const permissionType = PermissionTypesEntity.camera;
      const expected = PermissionStatusEntity.granted;
      when(() => permissionHandlerDatasource.checkPermission(permissionType)).thenAnswer((_) async => expected);
      //act
      final result = await permissionHandlerRepository.checkPermission(permissionType);
      //assert
      verify(() => permissionHandlerDatasource.checkPermission(permissionType)).called(1);
      expect(result, expected);
    });

    test('check no call if types not match', () async {
      //arrange
      const permissionType = PermissionTypesEntity.camera;
      const wrongPermissionType = PermissionTypesEntity.audio;
      const expected = PermissionStatusEntity.granted;
      when(() => permissionHandlerDatasource.checkPermission(permissionType)).thenAnswer((_) async => expected);
      //act
      await permissionHandlerRepository.checkPermission(permissionType);
      //assert
      verifyNever(() => permissionHandlerDatasource.checkPermission(wrongPermissionType));
    });
  });

  group('requestPermission', () {
    test('check types', () async {
      //arrange
      const permissionType = PermissionTypesEntity.camera;
      const expected = PermissionStatusEntity.granted;
      when(() => permissionHandlerDatasource.requestPermission(permissionType)).thenAnswer((_) async => expected);
      //act
      final result = await permissionHandlerRepository.requestPermission(permissionType);
      //assert
      verify(() => permissionHandlerDatasource.requestPermission(permissionType)).called(1);
      expect(result, expected);
    });

    test('check no call if types not match', () async {
      //arrange
      const permissionType = PermissionTypesEntity.camera;
      const wrongPermissionType = PermissionTypesEntity.audio;
      const expected = PermissionStatusEntity.granted;
      when(() => permissionHandlerDatasource.requestPermission(permissionType)).thenAnswer((_) async => expected);
      //act
      await permissionHandlerRepository.requestPermission(permissionType);
      //assert
      verifyNever(() => permissionHandlerDatasource.requestPermission(wrongPermissionType));
    });
  });

  group('oppenSettings', () {
    test('call opensettings', () async {
      //arrange
      when(() => permissionHandlerDatasource.openSettings()).thenAnswer((invocation) async => true);
      //act
      await permissionHandlerRepository.openSettings();
      //assert
      verify(() => permissionHandlerDatasource.openSettings()).called(1);
    });
  });
}
