import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:omnipro_ecommerce_sdk/map/data/repository/locator_repository.dart';
import 'package:omnipro_ecommerce_sdk/map/domain/entity/position_entity.dart';
import 'package:omnipro_ecommerce_sdk/map/domain/use_case/current_position_use_case.dart';

class MockLocatorRepository extends Mock implements LocatorRepository {}

void main() {
  late LocatorRepository locatorRepository;
  late CurrentPositionUseCase currentPositionUseCase;

  setUp(() {
    locatorRepository = MockLocatorRepository();
    currentPositionUseCase = CurrentPositionUseCase(locatorRepository);
  });

  group('currentPosition', () {
    test('returns PositionEntity', () async {
      //arrange
      const expected = PositionEntity(latitude: 0, longitude: 0);
      when(() => locatorRepository.getCurrentPosition()).thenAnswer((_) async => expected);
      //act
      final result = await currentPositionUseCase();
      //assert
      verify(() => locatorRepository.getCurrentPosition()).called(1);
      expect(result, expected);
    });
  });
}
