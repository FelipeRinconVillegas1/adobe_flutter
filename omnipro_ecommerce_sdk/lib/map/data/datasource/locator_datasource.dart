import '../../domain/entity/location_permission_entity.dart';
import '../../domain/entity/position_entity.dart';

abstract class LocatorDatasource {
  Future<LocationPermissionEntity> checkPermission();

  Future<LocationPermissionEntity> requestPermission();

  Future<bool> isLocationServiceEnabled();

  Future<PositionEntity> getCurrentPosition();
}
