import 'package:core/data/repository/launcher/launcher_repository.dart';
import 'package:dartz/dartz.dart';

import '../../../utils/error_handler/error_handler.dart';
import '../../entity/launch_type.dart';

class LaunchUrlUseCase {
  LaunchUrlUseCase(this._launcherRepository);

  final LauncherRepository _launcherRepository;

  Future<Option<ErrorHandler>> call({
    LaunchType launchType = LaunchType.link,
    required String url,
  }) {
    return _launcherRepository.omniLaunch(launchType: launchType, url: url);
  }
}
