import 'package:core/utils/error_handler/error_code.dart';
import 'package:core/utils/error_handler/error_handler.dart';
import 'package:core/utils/launch_url.dart';
import 'package:dartz/dartz.dart';
import 'package:url_launcher/url_launcher.dart';

/// Open chat whatsapp with a number and a message (optional)
class OpenChatWhatsAppUseCase {
  final LaunchUrl _launch;

  OpenChatWhatsAppUseCase(this._launch);

  Future<Either<ErrorHandler, bool>> call(String number, {required String countryCode, String message = ''}) async {
    try {
      await _launch.launchUrl(Uri.parse(Uri.encodeFull('https://wa.me/$countryCode$number?text=$message')),
          mode: LaunchMode.externalApplication);

      return right(true);
    } catch (e) {
      return left(ErrorHandlerExternal(errorCode: ErrorCode.errorOpenChatWhatsApp, errorMessage: e.toString()));
    }
  }
}
