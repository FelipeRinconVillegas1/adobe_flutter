import 'package:map/data/repository/locator_repository.dart';
import 'package:map/domain/entity/location_permission_entity.dart';

class RequestPermissionUseCase {
  final LocatorRepository _locatorRepository;

  RequestPermissionUseCase(this._locatorRepository);

  Future<LocationPermissionEntity> call() async {
    return await _locatorRepository.requestPermission();
  }
}
