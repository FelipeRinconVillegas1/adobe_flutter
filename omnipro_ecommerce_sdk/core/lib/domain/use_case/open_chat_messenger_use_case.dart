import 'package:core/utils/error_handler/error_code.dart';
import 'package:core/utils/error_handler/error_handler.dart';
import 'package:core/utils/launch_url.dart';
import 'package:dartz/dartz.dart';
import 'package:url_launcher/url_launcher.dart';

/// Open chat whatsapp with a number and a message (optional)
class OpenChatMessengerUseCase {
  final LaunchUrl _launch;

  OpenChatMessengerUseCase(this._launch);

  Future<Either<ErrorHandler, bool>> call({required String idFacebook}) async {
    try {
      await _launch.launchUrl(Uri.parse('https://m.me/$idFacebook'), mode: LaunchMode.externalApplication);
      return right(true);
    } catch (e) {
      return left(ErrorHandlerExternal(errorCode: ErrorCode.openChatMessenger, errorMessage: e.toString()));
    }
  }
}
