import '../../domain/entity/location_permission_entity.dart';
import '../../domain/entity/position_entity.dart';
import '../datasource/locator_datasource.dart';
import 'locator_repository.dart';

class LocatorRepositoryImpl implements LocatorRepository {
  LocatorRepositoryImpl({
    required this.datasource,
  });

  final LocatorDatasource datasource;

  @override
  Future<LocationPermissionEntity> checkPermission() async {
    return await datasource.checkPermission();
  }

  @override
  Future<PositionEntity> getCurrentPosition() async {
    return await datasource.getCurrentPosition();
  }

  @override
  Future<bool> isLocationServiceEnabled() async {
    return await datasource.isLocationServiceEnabled();
  }

  @override
  Future<LocationPermissionEntity> requestPermission() async {
    return await datasource.requestPermission();
  }
}
