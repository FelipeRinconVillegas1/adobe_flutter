import 'package:core/data/repository/permission_handler_repository.dart';
import 'package:core/domain/use_case/permission_handler/opensettings_use_case.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockPermissionHandlerRepository extends Mock implements PermissionHandlerRepository {}

void main() {
  late PermissionHandlerRepository permissionHandlerRepository;
  late OpenSettingsUseCase openSettingsUseCase;

  setUp(() {
    permissionHandlerRepository = MockPermissionHandlerRepository();
    openSettingsUseCase = OpenSettingsUseCase(permissionHandlerRepository);
  });

  group('general', () {
    test('verify call and match', () async {
      //arrange
      when(() => permissionHandlerRepository.openSettings()).thenAnswer((invocation) async => true);
      //act
      final result = await openSettingsUseCase();
      //assert
      verify(() => permissionHandlerRepository.openSettings()).called(1);
      expect(result, true);
    });
  });
}
