import 'package:core/data/datasource/permission_handler_datasource.dart';
import 'package:core/domain/entity/permission_entities.dart';
import 'package:permission_handler/permission_handler.dart';

class PermissionHandlerDatasourceImpl implements PermissionHandlerDatasource {
  @override
  Future<PermissionStatusEntity> checkPermission(PermissionTypesEntity permissionType) async {
    final permission = permissionMapper(permissionType);
    if (permission == null) return PermissionStatusEntity.denied;
    final status = await permission.status;
    return permissionStatusMapper(status);
  }

  @override
  Future<PermissionStatusEntity> requestPermission(PermissionTypesEntity permissionType) async {
    final permission = permissionMapper(permissionType);
    if (permission == null) return PermissionStatusEntity.denied;
    final userPermission = await permission.request();
    return permissionStatusMapper(userPermission);
  }

  @override
  Future<bool> openSettings() async {
    return openAppSettings();
  }

  PermissionStatusEntity permissionStatusMapper(PermissionStatus permissionStatus) {
    switch (permissionStatus) {
      case PermissionStatus.denied:
        return PermissionStatusEntity.denied;
      case PermissionStatus.granted:
        return PermissionStatusEntity.granted;
      case PermissionStatus.limited:
        return PermissionStatusEntity.limited;
      case PermissionStatus.permanentlyDenied:
        return PermissionStatusEntity.permanentlyDenied;
      case PermissionStatus.restricted:
        return PermissionStatusEntity.restricted;
      default:
        return PermissionStatusEntity.denied;
    }
  }

  Permission? permissionMapper(PermissionTypesEntity permissionType) {
    switch (permissionType) {
      case PermissionTypesEntity.camera:
        return Permission.camera;
      case PermissionTypesEntity.audio:
        return Permission.audio;
      case PermissionTypesEntity.microphone:
        return Permission.microphone;
      case PermissionTypesEntity.speech:
        return Permission.speech;
      case PermissionTypesEntity.bluetooth:
        return Permission.bluetooth;
      default:
        return null;
    }
  }
}
