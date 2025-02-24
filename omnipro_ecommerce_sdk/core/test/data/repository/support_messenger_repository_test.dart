import 'package:core/data/datasource/remote_config_datasource.dart';
import 'package:core/data/repository/remote_config_key.dart';
import 'package:core/data/repository/support_messenger_repository.dart';
import 'package:core/utils/error_handler/error_code.dart';
import 'package:core/utils/error_handler/error_handler.dart';
import 'package:core/utils/loggers/app_logger.dart';
import 'package:test/test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:dartz/dartz.dart';

class MockRemoteConfigDataSource extends Mock implements RemoteConfigDataSource {}

void main() {
  late SupportMessengerRepository repository;
  late MockRemoteConfigDataSource mockRemoteConfigDataSource;

  setUp(() async {
    await LoggerApp().init(isDebug: false, isTest: true);
    mockRemoteConfigDataSource = MockRemoteConfigDataSource();
    repository = SupportMessengerRepositoryImpl(mockRemoteConfigDataSource);
  });

  group('SupportMessengerRepository', () {
    test('getIdFacebook returns Right with idFacebook', () async {
      // Arrange
      final expectedIdFacebook = 'your_id_facebook';
      when(() => mockRemoteConfigDataSource.getString(any())).thenReturn(expectedIdFacebook);

      // Act
      final result = await repository.getIdFacebook();

      // Assert
      expect(result, equals(Right(expectedIdFacebook)));
      verify(() => mockRemoteConfigDataSource.getString(RemoteConfigKey.idFacebook));
    });

    test('getIdFacebook returns Left with ErrorHandlerExternal when an exception is thrown', () async {
      // Arrange
      final expectedException = Exception('Something went wrong');
      when(() => mockRemoteConfigDataSource.getString(any())).thenThrow(expectedException);

      // Act
      final result = await repository.getIdFacebook();

      // Assert
      expect(
          result,
          equals(left(ErrorHandlerExternal(
            errorCode: ErrorCode.getIdFacebook,
            errorMessage: expectedException.toString(),
          ))));
      verify(() => mockRemoteConfigDataSource.getString(RemoteConfigKey.idFacebook));
    });
  });
}
