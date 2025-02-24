import 'package:core/data/repository/bot_whatsapp_repository.dart';
import 'package:core/utils/error_handler/error_code.dart';
import 'package:core/utils/error_handler/error_handler.dart';
import 'package:dartz/dartz.dart';

import 'open_chat_whatsapp_use_case.dart';

/// Open chat bot whatsapp
class OpenBotWhatsAppUseCase {
  final OpenChatWhatsAppUseCase _openChatWhatsAppUseCase;
  final BotWhatsappRepository _botWhatsappRepository;

  OpenBotWhatsAppUseCase(this._openChatWhatsAppUseCase, this._botWhatsappRepository);

  Future<Either<ErrorHandler, bool>> call(String localizationCode) async {
    try {
      final botWhatsappResult = await _botWhatsappRepository.getBotWhatsapp();

      return botWhatsappResult.fold((l) => left(l), (botWhatsapp) async {
        await _openChatWhatsAppUseCase(botWhatsapp.number,
            countryCode: botWhatsapp.countryCode, message: botWhatsapp.initialMessage.getMessage(localizationCode));

        return right(true);
      });
    } catch (e) {
      return left(ErrorHandlerExternal(errorCode: ErrorCode.errorOpenBotWhatsApp, errorMessage: e.toString()));
    }
  }
}
