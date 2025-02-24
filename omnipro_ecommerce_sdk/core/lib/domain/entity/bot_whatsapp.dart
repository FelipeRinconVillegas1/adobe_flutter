import 'package:core/domain/entity/localization_message.dart';
import 'package:equatable/equatable.dart';

class BotWhatsApp extends Equatable {
  final String number;
  final String countryCode;
  final LocalizationMessage initialMessage;

  BotWhatsApp({
    required this.number,
    required this.countryCode,
    required this.initialMessage,
  });

  @override
  List<Object?> get props => [number, countryCode, initialMessage];
}
