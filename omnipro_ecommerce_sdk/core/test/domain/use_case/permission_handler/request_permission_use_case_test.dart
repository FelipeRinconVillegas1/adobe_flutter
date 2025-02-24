import 'package:core/data/repository/permission_handler_repository.dart';
import 'package:core/domain/entity/permission_entities.dart';
import 'package:core/domain/use_case/permission_handler/request_permission_use_case.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockPermissionHandlerRepository extends Mock implements PermissionHandlerRepository {}

void main() {
  late PermissionHandlerRepository permissionHandlerRepository;
  late RequestPermissionUseCase requestPermissionUseCase;

  setUp(() {
    permissionHandlerRepository = MockPermissionHandlerRepository();
    requestPermissionUseCase = RequestPermissionUseCase(permissionHandlerRepository);
  });

  group('general', () {
    test('verify call and match', () async {
      //arrange
      const expected = PermissionStatusEntity.granted;
      const permissionEntity = PermissionTypesEntity.audio;
      when(() => permissionHandlerRepository.requestPermission(permissionEntity))
          .thenAnswer((invocation) async => expected);
      //act
      final result = await requestPermissionUseCase(permissionEntity);
      //assert
      verify(() => permissionHandlerRepository.requestPermission(permissionEntity)).called(1);
      expect(result, expected);
    });

    test('verify no call when types is not equal', () async {
      //arrange
      const expected = PermissionStatusEntity.granted;
      const permissionEntity = PermissionTypesEntity.audio;
      const wrongPermissionEntity = PermissionTypesEntity.camera;
      when(() => permissionHandlerRepository.requestPermission(permissionEntity))
          .thenAnswer((invocation) async => expected);
      //act
      await requestPermissionUseCase(permissionEntity);
      //assert
      verifyNever(() => permissionHandlerRepository.requestPermission(wrongPermissionEntity));
    });
  });
}
