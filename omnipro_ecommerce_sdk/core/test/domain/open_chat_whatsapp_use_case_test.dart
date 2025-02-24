import 'package:core/domain/use_case/open_chat_whatsapp_use_case.dart';
import 'package:core/utils/error_handler/error_code.dart';
import 'package:core/utils/error_handler/error_handler.dart';
import 'package:core/utils/launch_url.dart';
import 'package:core/utils/loggers/app_logger.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:url_launcher/url_launcher.dart';

class MockLaunchUrl extends Mock implements LaunchUrl {}

void main() {
  late OpenChatWhatsAppUseCase useCase;
  late LaunchUrl launchUrl;

  setUp(() async {
    await LoggerApp().init(isDebug: false, isTest: true);
    launchUrl = MockLaunchUrl();
    useCase = OpenChatWhatsAppUseCase(launchUrl);
  });

  test('should launch WhatsApp chat with number and message not default', () async {
    final number = '123456789';
    final countryCode = '1';
    final message = 'Hello!';
    final expectedUrl = Uri.parse('https://wa.me/$countryCode$number?text=${Uri.encodeComponent(message)}');

    when(() => launchUrl.launchUrl(expectedUrl, mode: LaunchMode.externalApplication)).thenAnswer((_) async => true);

    final result = await useCase.call(number, countryCode: countryCode, message: message);

    expect(result, Right(true));
    verify(() => launchUrl.launchUrl(expectedUrl, mode: LaunchMode.externalApplication));
  });

  test('should return error when WhatsApp chat fails to open', () async {
    final number = '123456789';
    final countryCode = '1';
    final message = 'Hello!';
    final expectedUrl = Uri.parse('https://wa.me/$countryCode$number?text=${Uri.encodeComponent(message)}');

    when(() => launchUrl.launchUrl(expectedUrl, mode: LaunchMode.externalApplication)).thenThrow(Exception());

    final result = (await useCase.call(number, countryCode: countryCode, message: message)).fold((l) => l, (r) => null)
        as ErrorHandlerExternal;

    expect(result, isA<ErrorHandlerExternal>());
    expect(
      result.errorCode,
      ErrorCode.errorOpenChatWhatsApp,
    );
    verify(() => launchUrl.launchUrl(expectedUrl, mode: LaunchMode.externalApplication));
  });
}
