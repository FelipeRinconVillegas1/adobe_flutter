import 'package:core/data/repository/permission_handler_repository.dart';
import 'package:core/domain/entity/permission_entities.dart';
import 'package:core/domain/use_case/permission_handler/check_permission_use_case.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockPermissionHandlerRepository extends Mock implements PermissionHandlerRepository {}

void main() {
  late PermissionHandlerRepository permissionHandlerRepository;
  late CheckPermissionUseCase checkPermissionUseCase;

  setUp(() {
    permissionHandlerRepository = MockPermissionHandlerRepository();
    checkPermissionUseCase = CheckPermissionUseCase(permissionHandlerRepository);
  });

  group('general', () {
    test('verify call and match', () async {
      //arrange
      const expected = PermissionStatusEntity.granted;
      const permissionEntity = PermissionTypesEntity.audio;
      when(() => permissionHandlerRepository.checkPermission(permissionEntity))
          .thenAnswer((invocation) async => expected);
      //act
      final result = await checkPermissionUseCase(permissionEntity);
      //assert
      verify(() => permissionHandlerRepository.checkPermission(permissionEntity)).called(1);
      expect(result, expected);
    });

    test('verify no call when types is not equal', () async {
      //arrange
      const expected = PermissionStatusEntity.granted;
      const permissionEntity = PermissionTypesEntity.audio;
      const wrongPermissionEntity = PermissionTypesEntity.camera;
      when(() => permissionHandlerRepository.checkPermission(permissionEntity))
          .thenAnswer((invocation) async => expected);
      //act
      await checkPermissionUseCase(permissionEntity);
      //assert
      verifyNever(() => permissionHandlerRepository.checkPermission(wrongPermissionEntity));
    });
  });
}
