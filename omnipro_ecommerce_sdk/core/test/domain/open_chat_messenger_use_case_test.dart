import 'package:core/domain/use_case/open_chat_messenger_use_case.dart';
import 'package:core/utils/error_handler/error_code.dart';
import 'package:core/utils/error_handler/error_handler.dart';
import 'package:core/utils/launch_url.dart';
import 'package:core/utils/loggers/app_logger.dart';
import 'package:test/test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:dartz/dartz.dart';
import 'package:url_launcher/url_launcher.dart';

class MockLaunchUrl extends Mock implements LaunchUrl {}

void main() {
  late OpenChatMessengerUseCase useCase;
  late MockLaunchUrl mockLaunchUrl;

  setUp(() async {
    await LoggerApp().init(isDebug: false, isTest: true);
    mockLaunchUrl = MockLaunchUrl();
    useCase = OpenChatMessengerUseCase(mockLaunchUrl);
  });

  group('OpenChatMessengerUseCase', () {
    final idFacebook = 'your_id_facebook';
    registerFallbackValue(Uri.parse('https://m.me/$idFacebook'));
    test('calls launchUrl with correct URL and returns Right with true', () async {
      // Arrange
      when(() => mockLaunchUrl.launchUrl(any(), mode: LaunchMode.externalApplication))
          .thenAnswer((_) async => Future.value(true));

      // Act
      final result = await useCase.call(idFacebook: idFacebook);

      // Assert
      expect(result, equals(right(true)));
      verify(() => mockLaunchUrl.launchUrl(
            Uri.parse('https://m.me/$idFacebook'),
            mode: LaunchMode.externalApplication,
          ));
    });

    test('returns Left with ErrorHandlerExternal when launchUrl throws an exception', () async {
      // Arrange

      final expectedException = Exception('Something went wrong');
      when(() => mockLaunchUrl.launchUrl(any(), mode: LaunchMode.externalApplication)).thenThrow(expectedException);

      // Act
      final result = await useCase.call(idFacebook: idFacebook);

      // Assert
      expect(
          result,
          equals(left(ErrorHandlerExternal(
            errorCode: ErrorCode.openChatMessenger,
            errorMessage: expectedException.toString(),
          ))));
      verify(() => mockLaunchUrl.launchUrl(
            Uri.parse('https://m.me/$idFacebook'),
            mode: LaunchMode.externalApplication,
          ));
    });
  });
}
