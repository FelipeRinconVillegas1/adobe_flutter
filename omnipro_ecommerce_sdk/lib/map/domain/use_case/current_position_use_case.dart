import '../../data/repository/locator_repository.dart';
import '../entity/position_entity.dart';

class CurrentPositionUseCase {
  final LocatorRepository locatorRepository;

  CurrentPositionUseCase(this.locatorRepository);

  Future<PositionEntity> call() async {
    return await locatorRepository.getCurrentPosition();
  }
}
