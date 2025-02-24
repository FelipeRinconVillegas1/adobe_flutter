import 'package:flutter_test/flutter_test.dart';
import 'package:map/data/repository/locator_repository.dart';
import 'package:map/domain/use_case/location_enable_use_case.dart';
import 'package:mocktail/mocktail.dart';

class MockLocatorRepository extends Mock implements LocatorRepository {}

void main() {
  late LocatorRepository locatorRepository;
  late LocationEnableUseCase locationEnableUseCase;

  setUp(() {
    locatorRepository = MockLocatorRepository();
    locationEnableUseCase = LocationEnableUseCase(locatorRepository);
  });

  group('currentPosition', () {
    test('returns Location enable value', () async {
      //arrange
      const expected = true;
      when(() => locatorRepository.isLocationServiceEnabled()).thenAnswer((_) async => expected);
      //act
      final result = await locationEnableUseCase();
      //assert
      verify(() => locatorRepository.isLocationServiceEnabled()).called(1);
      expect(result, expected);
    });
  });
}
