import 'package:core/data/repository/support_messenger_repository.dart';
import 'package:core/domain/use_case/open_chat_messenger_use_case.dart';
import 'package:core/utils/error_handler/error_code.dart';
import 'package:core/utils/error_handler/error_handler.dart';
import 'package:dartz/dartz.dart';

class OpenSupportMessengerUseCase {
  final OpenChatMessengerUseCase _openChatMessengerUseCase;
  final SupportMessengerRepository _supportMessengerRepository;

  OpenSupportMessengerUseCase(this._openChatMessengerUseCase, this._supportMessengerRepository);

  Future<Either<ErrorHandler, bool>> call() async {
    try {
      final facebookIdResult = await _supportMessengerRepository.getIdFacebook();

      return facebookIdResult.fold((l) => left(l), (idFacebookPage) async {
        await _openChatMessengerUseCase.call(idFacebook: idFacebookPage);

        return right(true);
      });
    } catch (e) {
      return left(ErrorHandlerExternal(errorCode: ErrorCode.openSupportChatMessenger, errorMessage: e.toString()));
    }
  }
}
