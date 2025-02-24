import 'package:core/data/datasource/remote_config_datasource.dart';
import 'package:core/data/dto/complement_share_product_dto.fr.dart';
import 'package:core/data/dto/localization_message_dto.fr.dart';
import 'package:core/data/mapper.dart';
import 'package:core/data/repository/remote_config_key.dart';
import 'package:core/data/repository/share_product_repository.dart';
import 'package:core/utils/loggers/app_logger.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:dartz/dartz.dart';

// Mock for the RemoteConfigDataSource
class MockRemoteConfigDataSource extends Mock implements RemoteConfigDataSource {}

void main() {
  late ShareProductRepositoryImpl shareProductRepositoryImpl;
  late MockRemoteConfigDataSource mockRemoteConfigDataSource;

  setUp(() async {
    await LoggerApp().init(isDebug: false, isTest: true);
    mockRemoteConfigDataSource = MockRemoteConfigDataSource();
    shareProductRepositoryImpl = ShareProductRepositoryImpl(mockRemoteConfigDataSource);
  });

  group('ShareProductRepositoryImpl', () {
    test('should return the complement share product when successfully retrieved', () async {
      // Mock data
      const jsonShareProduct = '{"your_share_product_data"}';
      final complementShareProductDTO = ComplementShareProductDTO(
          url: '',
          initialMessage: LocalizationMessageDTO(messagesWithLocalization: [
            MessageWithLocalizationDTO(code: 'fr', message: 'Votre produit'),
            MessageWithLocalizationDTO(code: 'en', message: 'Your product'),
          ]));

      // Mock dependencies' behavior
      when(() => mockRemoteConfigDataSource.getString(RemoteConfigKey.complementShareProduct))
          .thenReturn(jsonShareProduct);

      // Call the repository method
      final result = await shareProductRepositoryImpl.getComplementShareProduct();

      // Verify the result
      expect(result, Right(complementShareProductDTO.toDomain));
      verify(() => mockRemoteConfigDataSource.getString(RemoteConfigKey.complementShareProduct));
      verifyNoMoreInteractions(mockRemoteConfigDataSource);
    });

    test('should return an ErrorHandler when an error occurs', () async {
      // Mock data
      // Mock dependencies' behavior
      when(() => mockRemoteConfigDataSource.getString(RemoteConfigKey.complementShareProduct)).thenReturn('');

      // Call the repository method
      final result = await shareProductRepositoryImpl.getComplementShareProduct();

      // Verify the result
      expect(result.isLeft(), true);
      verify(() => mockRemoteConfigDataSource.getString(RemoteConfigKey.complementShareProduct));
      verifyNoMoreInteractions(mockRemoteConfigDataSource);
    });
  });
}
