import '../../data/repository/locator_repository.dart';
import '../entity/location_permission_entity.dart';

class CheckPermissionUseCase {
  final LocatorRepository locatorRepository;

  CheckPermissionUseCase(this.locatorRepository);

  Future<LocationPermissionEntity> call() async {
    return await locatorRepository.checkPermission();
  }
}
