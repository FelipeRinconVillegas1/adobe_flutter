import 'package:core/data/datasource/launcher/launcher_datasource.dart';
import 'package:core/data/datasource/launcher/launcher_datasource_impl.dart';
import 'package:core/data/repository/launcher/launcher_repository.dart';
import 'package:core/data/repository/launcher/launcher_repository_impl.dart';
import 'package:core/domain/use_case/launcher/launch_url_use_case.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'di_launcher.fr.g.dart';

@riverpod
LaunchUrlUseCase launchUrlUseCase(LaunchUrlUseCaseRef ref) {
  return LaunchUrlUseCase(ref.watch(launcherRepositoryProvider));
}

@riverpod
LauncherRepository launcherRepository(LauncherRepositoryRef ref) {
  return LauncherRepositoryImpl(ref.watch(launcherDatasourceProvider));
}

@riverpod
LauncherDatasource launcherDatasource(LauncherDatasourceRef ref) {
  return LauncherDatasourceImpl();
}
