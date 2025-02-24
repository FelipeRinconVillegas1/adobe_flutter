import 'package:map/data/repository/locator_repository.dart';
import 'package:map/domain/entity/position_entity.dart';

class CurrentPositionUseCase {
  final LocatorRepository locatorRepository;

  CurrentPositionUseCase(this.locatorRepository);

  Future<PositionEntity> call() async {
    return await locatorRepository.getCurrentPosition();
  }
}
