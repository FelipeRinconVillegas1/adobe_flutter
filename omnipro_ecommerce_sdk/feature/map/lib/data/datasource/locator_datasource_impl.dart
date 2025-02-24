import 'package:geolocator/geolocator.dart';
import 'package:map/data/datasource/locator_datasource.dart';
import 'package:map/domain/entity/location_permission_entity.dart';
import 'package:map/domain/entity/position_entity.dart';

class LocatorDatasourceImpl implements LocatorDatasource {
  @override
  Future<LocationPermissionEntity> checkPermission() async {
    final permission = await Geolocator.checkPermission();
    return permissionMapper(permission);
  }

  @override
  Future<PositionEntity> getCurrentPosition() async {
    final position = await Geolocator.getCurrentPosition();
    return positionMapper(position);
  }

  @override
  Future<bool> isLocationServiceEnabled() async {
    return await Geolocator.isLocationServiceEnabled();
  }

  @override
  Future<LocationPermissionEntity> requestPermission() async {
    final permission = await Geolocator.requestPermission();
    return permissionMapper(permission);
  }

  LocationPermissionEntity permissionMapper(LocationPermission permission) {
    switch (permission) {
      case LocationPermission.denied:
        return LocationPermissionEntity.denied;
      case LocationPermission.whileInUse:
        return LocationPermissionEntity.whileInUse;
      case LocationPermission.always:
        return LocationPermissionEntity.always;
      case LocationPermission.deniedForever:
        return LocationPermissionEntity.deniedForever;
      default:
        return LocationPermissionEntity.unknown;
    }
  }

  PositionEntity positionMapper(Position position) {
    return PositionEntity(latitude: position.latitude, longitude: position.longitude);
  }
}
