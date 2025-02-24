import 'package:dartz/dartz.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:core/data/datasource/launcher/launcher_datasource.dart';

import '../../../domain/entity/launch_type.dart';
import '../../../utils/error_handler/error_handler.dart';

class LauncherDatasourceImpl implements LauncherDatasource {
  @override
  Future<Option<ErrorHandler>> omniLaunch({
    LaunchType launchType = LaunchType.link,
    required String url,
  }) async {
    String launchLink = '';

    switch (launchType) {
      case LaunchType.link:
        launchLink += url;
        break;
      case LaunchType.mail:
        launchLink += "mailto:$url";
        break;
      case LaunchType.tel:
        launchLink += "tel:$url";
        break;
      case LaunchType.sms:
        launchLink += "sms:$url";
        break;
      case LaunchType.file:
        launchLink += "file:$url";
        break;
      default:
        launchLink += url;
        break;
    }

    final uriLink = Uri.parse(launchLink);
    final canLaunch = await canLaunchUrl(uriLink);

    if (!canLaunch) {
      return Some(
        ErrorHandlerInternal(errorMessage: 'The url $url can not be launched'),
      );
    }

    try {
      await launchUrl(uriLink);
    } on Exception catch (e) {
      return Some(
        ErrorHandlerInternal(errorMessage: 'There is an error launching the url $url', error: e),
      );
    }

    return None();
  }
}
