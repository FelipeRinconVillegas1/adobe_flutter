import 'package:core/data/datasource/permission_handler_datasource.dart';
import 'package:core/data/repository/permission_handler_repository.dart';
import 'package:core/domain/entity/permission_entities.dart';

class PermissionHandlerRepositoryImpl implements PermissionHandlerRepository {
  PermissionHandlerRepositoryImpl(this._permissionHandlerDatasource);

  final PermissionHandlerDatasource _permissionHandlerDatasource;

  @override
  Future<PermissionStatusEntity> checkPermission(PermissionTypesEntity permissionType) async {
    return _permissionHandlerDatasource.checkPermission(permissionType);
  }

  @override
  Future<bool> openSettings() async {
    return _permissionHandlerDatasource.openSettings();
  }

  @override
  Future<PermissionStatusEntity> requestPermission(PermissionTypesEntity permissionType) async {
    return _permissionHandlerDatasource.requestPermission(permissionType);
  }
}
