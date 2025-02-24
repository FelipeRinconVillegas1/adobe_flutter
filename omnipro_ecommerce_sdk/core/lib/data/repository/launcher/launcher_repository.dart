import 'package:dartz/dartz.dart';

import '../../../domain/entity/launch_type.dart';
import '../../../utils/error_handler/error_handler.dart';

abstract class LauncherRepository {
  Future<Option<ErrorHandler>> omniLaunch({
    LaunchType launchType = LaunchType.link,
    required String url,
  });
}
