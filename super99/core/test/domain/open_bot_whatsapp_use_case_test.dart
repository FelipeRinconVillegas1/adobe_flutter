import 'package:core/data/repository/bot_whatsapp_repository.dart';
import 'package:core/domain/entity/bot_whatsapp.dart';
import 'package:core/domain/entity/localization_message.dart';
import 'package:core/domain/use_case/open_bot_whatsapp_use_case.dart';
import 'package:core/domain/use_case/open_chat_whatsapp_use_case.dart';
import 'package:core/utils/error_handler/error_code.dart';
import 'package:core/utils/error_handler/error_handler.dart';
import 'package:core/utils/loggers/app_logger.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockOpenChatWhatsAppUseCase extends Mock implements OpenChatWhatsAppUseCase {}

class MockBotWhatsappRepository extends Mock implements BotWhatsappRepository {}

void main() {
  late MockOpenChatWhatsAppUseCase mockOpenChatWhatsAppUseCase;
  late MockBotWhatsappRepository mockBotWhatsappRepository;
  late OpenBotWhatsAppUseCase openBotWhatsAppUseCase;

  setUp(() async {
    await LoggerApp().init(isDebug: false, isTest: true);
    mockOpenChatWhatsAppUseCase = MockOpenChatWhatsAppUseCase();
    mockBotWhatsappRepository = MockBotWhatsappRepository();
    openBotWhatsAppUseCase = OpenBotWhatsAppUseCase(mockOpenChatWhatsAppUseCase, mockBotWhatsappRepository);
  });

  group('OpenBotWhatsAppUseCase', () {
    final localization = LocalizationMessage([
      MessageWithLocalization('en', 'Hello!'),
      MessageWithLocalization('es', 'Hola!'),
    ]);
    test('should return right true with valid input', () async {
      final botWhatsapp = BotWhatsApp(number: '123456789', countryCode: '1', initialMessage: localization);

      when(() => mockBotWhatsappRepository.getBotWhatsapp()).thenAnswer((_) async => Right(botWhatsapp));

      when(() => mockOpenChatWhatsAppUseCase.call(botWhatsapp.number,
          countryCode: botWhatsapp.countryCode,
          message: localization.getMessage('es'))).thenAnswer((_) async => right(true));

      final result = await openBotWhatsAppUseCase.call('es');

      expect(result, equals(right(true)));
      verify(() => mockOpenChatWhatsAppUseCase(botWhatsapp.number,
          countryCode: botWhatsapp.countryCode, message: botWhatsapp.initialMessage.getMessage('es')));
      verifyNoMoreInteractions(mockOpenChatWhatsAppUseCase);
    });

    test('should return left ErrorHandlerExternal with invalid input', () async {
      final error = Exception('Failed to get bot whatsapp');
      when(() => mockBotWhatsappRepository.getBotWhatsapp()).thenThrow(error);

      final result = await openBotWhatsAppUseCase.call('invalid');

      expect(
        result.fold((l) => (l as ErrorHandlerExternal).errorCode, (r) => null),
        ErrorCode.errorOpenBotWhatsApp,
      );
      verifyZeroInteractions(mockOpenChatWhatsAppUseCase);
    });
  });
}
