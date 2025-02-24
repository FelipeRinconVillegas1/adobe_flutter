import 'package:equatable/equatable.dart';

/// Class to localize messages from server
class LocalizationMessage extends Equatable {
  final List<MessageWithLocalization> messagesWithLocalization;

  LocalizationMessage(this.messagesWithLocalization);

  /// Get message from code, if not found return defaultText
  String getMessage(String code, {String defaultText = ''}) {
    final localization = messagesWithLocalization.firstWhere((element) => element.code == code,
        orElse: () => MessageWithLocalization('', ''));

    return localization.message.isEmpty ? defaultText : localization.message;
  }

  @override
  List<Object?> get props => [messagesWithLocalization];
}

class MessageWithLocalization extends Equatable {
  /// Code identify localization
  final String code;
  final String message;

  MessageWithLocalization(this.code, this.message);

  @override
  List<Object?> get props => [code, message];
}
