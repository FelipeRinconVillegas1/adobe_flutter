import 'package:core/domain/entity/permission_entities.dart';

abstract class PermissionHandlerDatasource {
  Future<PermissionStatusEntity> checkPermission(PermissionTypesEntity permissionType);

  Future<PermissionStatusEntity> requestPermission(PermissionTypesEntity permissionType);

  Future<bool> openSettings();
}
