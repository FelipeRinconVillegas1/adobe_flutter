import 'package:core/data/repository/permission_handler_repository.dart';
import 'package:core/domain/entity/permission_entities.dart';

class CheckPermissionUseCase {
  CheckPermissionUseCase(this._permissionHandlerRepository);

  final PermissionHandlerRepository _permissionHandlerRepository;

  Future<PermissionStatusEntity> call(PermissionTypesEntity permissionTypesEntity) async {
    return await _permissionHandlerRepository.checkPermission(permissionTypesEntity);
  }
}
