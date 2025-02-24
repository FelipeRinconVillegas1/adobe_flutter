import 'package:flutter_test/flutter_test.dart';
import 'package:map/data/repository/locator_repository.dart';
import 'package:map/domain/entity/location_permission_entity.dart';
import 'package:map/domain/use_case/check_permission_use_case.dart';
import 'package:mocktail/mocktail.dart';

class MockLocatorRepository extends Mock implements LocatorRepository {}

void main() {
  late LocatorRepository locatorRepository;
  late CheckPermissionUseCase checkPermissionUseCase;

  setUp(() {
    locatorRepository = MockLocatorRepository();
    checkPermissionUseCase = CheckPermissionUseCase(locatorRepository);
  });

  group('checkPermission', () {
    test('returns LocationPermissionEntity when permission is whileInUse', () async {
      //arrange
      const expected = LocationPermissionEntity.whileInUse;
      when(() => locatorRepository.checkPermission()).thenAnswer((_) async => expected);
      //act
      final result = await checkPermissionUseCase();
      //assert
      verify(() => locatorRepository.checkPermission()).called(1);
      expect(result, expected);
    });

    test('returns LocationPermissionEntity when permission is denied', () async {
      //arrange
      const expected = LocationPermissionEntity.denied;
      when(() => locatorRepository.checkPermission()).thenAnswer((_) async => expected);
      //act
      final result = await checkPermissionUseCase();
      //assert
      verify(() => locatorRepository.checkPermission()).called(1);
      expect(result, expected);
    });

    test('returns LocationPermissionEntity when permission is always', () async {
      //arrange
      const expected = LocationPermissionEntity.always;
      when(() => locatorRepository.checkPermission()).thenAnswer((_) async => expected);
      //act
      final result = await checkPermissionUseCase();
      //assert
      verify(() => locatorRepository.checkPermission()).called(1);
      expect(result, expected);
    });

    test('returns LocationPermissionEntity when permission is deniedForever', () async {
      //arrange
      const expected = LocationPermissionEntity.deniedForever;
      when(() => locatorRepository.checkPermission()).thenAnswer((_) async => expected);
      //act
      final result = await checkPermissionUseCase();
      //assert
      verify(() => locatorRepository.checkPermission()).called(1);
      expect(result, expected);
    });

    test('returns LocationPermissionEntity when permission is unknown', () async {
      //arrange
      const expected = LocationPermissionEntity.unknown;
      when(() => locatorRepository.checkPermission()).thenAnswer((_) async => expected);
      //act
      final result = await checkPermissionUseCase();
      //assert
      verify(() => locatorRepository.checkPermission()).called(1);
      expect(result, expected);
    });
  });
}
