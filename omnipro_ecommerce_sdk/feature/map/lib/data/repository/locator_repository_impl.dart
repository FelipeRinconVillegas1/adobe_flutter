import 'package:map/data/datasource/locator_datasource.dart';
import 'package:map/data/repository/locator_repository.dart';
import 'package:map/domain/entity/location_permission_entity.dart';
import 'package:map/domain/entity/position_entity.dart';

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
