import 'package:core/data/datasource/launcher/launcher_datasource.dart';
import 'package:core/data/repository/launcher/launcher_repository.dart';
import 'package:core/domain/entity/launch_type.dart';
import 'package:core/utils/error_handler/error_handler.dart';
import 'package:dartz/dartz.dart';

class LauncherRepositoryImpl implements LauncherRepository {
  LauncherRepositoryImpl(this._launcherDatasource);

  final LauncherDatasource _launcherDatasource;

  @override
  Future<Option<ErrorHandler>> omniLaunch({LaunchType launchType = LaunchType.link, required String url}) {
    return _launcherDatasource.omniLaunch(launchType: launchType, url: url);
  }
}
