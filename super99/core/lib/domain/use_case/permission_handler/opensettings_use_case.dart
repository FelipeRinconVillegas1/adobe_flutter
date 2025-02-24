import 'package:core/data/repository/permission_handler_repository.dart';

class OpenSettingsUseCase {
  OpenSettingsUseCase(this._permissionHandlerRepository);

  final PermissionHandlerRepository _permissionHandlerRepository;

  Future<bool> call() async {
    return await _permissionHandlerRepository.openSettings();
  }
}
