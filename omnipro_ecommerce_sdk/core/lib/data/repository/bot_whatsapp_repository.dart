import 'dart:convert';

import 'package:core/data/datasource/remote_config_datasource.dart';
import 'package:core/data/dto/bot_whats_app_dto.fr.dart';
import 'package:core/data/mapper.dart';
import 'package:core/data/repository/remote_config_key.dart';
import 'package:core/domain/entity/bot_whatsapp.dart';
import 'package:core/utils/error_handler/error_code.dart';
import 'package:core/utils/error_handler/error_handler.dart';
import 'package:dartz/dartz.dart';

abstract class BotWhatsappRepository {
  /// Get bot whatsapp number and country code
  Future<Either<ErrorHandler, BotWhatsApp>> getBotWhatsapp();
}

class BotWhatsappRepositoryImpl implements BotWhatsappRepository {
  final RemoteConfigDataSource _remoteConfigDataSource;

  BotWhatsappRepositoryImpl(this._remoteConfigDataSource);

  @override
  Future<Either<ErrorHandler, BotWhatsApp>> getBotWhatsapp() async {
    try {
      final botWhatsappJson = _remoteConfigDataSource.getString(RemoteConfigKey.botWhatsApp);
      final botWhatsapp = BotWhatsAppDTO.fromJson(jsonDecode(botWhatsappJson));
      return Right(botWhatsapp.toDomain());
    } catch (e) {
      return left(ErrorHandlerExternal(errorCode: ErrorCode.errorGetBotWhatsApp, errorMessage: e.toString()));
    }
  }
}
