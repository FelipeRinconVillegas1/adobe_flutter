import 'package:core/data/datasource/permission_handler_datasource.dart';
import 'package:core/data/repository/permission_handler_repository.dart';
import 'package:core/data/repository/permission_handler_repository_impl.dart';
import 'package:core/domain/use_case/permission_handler/check_permission_use_case.dart';
import 'package:core/domain/use_case/permission_handler/opensettings_use_case.dart';
import 'package:core/domain/use_case/permission_handler/request_permission_use_case.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../data/datasource/permission_handler_datasource_impl.dart';

part 'di_permission_handler.g.dart';

@Riverpod(keepAlive: true)
OpenSettingsUseCase openSettingsUseCase(OpenSettingsUseCaseRef ref) {
  return OpenSettingsUseCase(ref.watch(permissionHandlerRepositoryProvider));
}

@Riverpod(keepAlive: true)
RequestPermissionUseCase requestPermissionUseCase(RequestPermissionUseCaseRef ref) {
  return RequestPermissionUseCase(ref.watch(permissionHandlerRepositoryProvider));
}

@Riverpod(keepAlive: true)
CheckPermissionUseCase checkPermissionUseCase(CheckPermissionUseCaseRef ref) {
  return CheckPermissionUseCase(ref.watch(permissionHandlerRepositoryProvider));
}

@Riverpod(keepAlive: true)
PermissionHandlerRepository permissionHandlerRepository(PermissionHandlerRepositoryRef ref) {
  return PermissionHandlerRepositoryImpl(ref.watch(permissionHandlerDatasourceProvider));
}

@Riverpod(keepAlive: true)
PermissionHandlerDatasource permissionHandlerDatasource(PermissionHandlerDatasourceRef ref) {
  return PermissionHandlerDatasourceImpl();
}
