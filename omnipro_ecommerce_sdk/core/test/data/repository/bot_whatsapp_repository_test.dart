import 'dart:convert';
import 'package:core/data/datasource/remote_config_datasource.dart';
import 'package:core/data/dto/bot_whats_app_dto.fr.dart';
import 'package:core/data/mapper.dart';
import 'package:core/data/repository/bot_whatsapp_repository.dart';
import 'package:core/data/repository/remote_config_key.dart';
import 'package:core/utils/error_handler/error_code.dart';
import 'package:core/utils/error_handler/error_handler.dart';
import 'package:core/utils/loggers/app_logger.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockRemoteConfigDataSource extends Mock implements RemoteConfigDataSource {}

void main() {
  late BotWhatsappRepositoryImpl repository;
  late RemoteConfigDataSource dataSource;

  setUp(() async {
    await LoggerApp().init(isDebug: false, isTest: true);
    dataSource = MockRemoteConfigDataSource();
    repository = BotWhatsappRepositoryImpl(dataSource);
  });

  group('getBotWhatsapp', () {
    test('returns BotWhatsApp when call to remote data source is successful', () async {
      final botWhatsappJson = '''{
  "number": "18007112222",
  "countryCode": "52",
  "message": {
    "localizations": [
      {
        "code": "en",
        "message": "Test"
      },
      {
        "code": "es",
        "message": "Prueba"
      }
    ]
  }
}''';
      final botWhatsappDTO = BotWhatsAppDTO.fromJson(jsonDecode(botWhatsappJson));
      final botWhatsapp = botWhatsappDTO.toDomain();

      when(() => dataSource.getString(RemoteConfigKey.botWhatsApp)).thenReturn(botWhatsappJson);

      final result = await repository.getBotWhatsapp();

      expect(result.fold((l) => null, (r) => r), equals(botWhatsapp));
      verify(() => dataSource.getString(RemoteConfigKey.botWhatsApp)).called(1);
    });

    test('returns an exception when call to remote data source fails', () async {
      final error = Exception('Failed to fetch data');

      when(() => dataSource.getString(RemoteConfigKey.botWhatsApp)).thenThrow(error);

      final result = await repository.getBotWhatsapp();

      expect(result.fold((l) => (l as ErrorHandlerExternal).errorCode, (r) => null), ErrorCode.errorGetBotWhatsApp);
      verify(() => dataSource.getString(RemoteConfigKey.botWhatsApp)).called(1);
    });
  });
}
