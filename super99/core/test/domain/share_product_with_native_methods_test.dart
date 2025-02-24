import 'package:core/data/repository/share_product_repository.dart';
import 'package:core/domain/entity/complement_share_product.dart';
import 'package:core/domain/entity/localization_message.dart';
import 'package:core/domain/use_case/share_product_with_native_methods.dart';
import 'package:core/utils/error_handler/error_handler.dart';
import 'package:core/utils/loggers/app_logger.dart';
import 'package:core/utils/share_content.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:dartz/dartz.dart';

// Mock for the ShareProductRepository
class MockShareProductRepository extends Mock implements ShareProductRepository {}

// Mock for the ShareContent
class MockShareContent extends Mock implements ShareContent {}

void main() {
  late ShareProductNativeMethodsUseCase shareProductNativeMethods;
  late MockShareProductRepository mockShareProductRepository;
  late MockShareContent mockShareContent;

  setUp(() async {
    await LoggerApp().init(isDebug: false, isTest: true);
    mockShareProductRepository = MockShareProductRepository();
    mockShareContent = MockShareContent();
    shareProductNativeMethods = ShareProductNativeMethodsUseCase(
      mockShareProductRepository,
      mockShareContent,
    );
  });

  group('ShareProductNativeMethods', () {
    test('should return Right(true) when successfully shared the product', () async {
      // Mock data
      const localizationCode = 'en';
      const productUrl = 'your_product_url';
      const subject = 'subject';
      final complementShareProduct = ComplementSharedProduct(
          'url',
          LocalizationMessage([
            MessageWithLocalization('fr', 'Votre produit'),
            MessageWithLocalization('en', subject),
          ]));

      // Mock dependencies' behavior
      when(() => mockShareProductRepository.getComplementShareProduct())
          .thenAnswer((_) async => Right(complementShareProduct));
      when(() => mockShareContent.share('${complementShareProduct.url}$productUrl.html', subject: subject))
          .thenAnswer((_) async {});

      // Call the use case
      final result = await shareProductNativeMethods.call(localizationCode, productUrl);

      // Verify the result
      expect(result, Right(true));
      verify(() => mockShareProductRepository.getComplementShareProduct());
      verify(() => mockShareContent.share('${complementShareProduct.url}$productUrl.html', subject: subject));
      verifyNoMoreInteractions(mockShareProductRepository);
      verifyNoMoreInteractions(mockShareContent);
    });

    test('should return the ErrorHandler when an error occurs', () async {
      // Mock data
      const localizationCode = 'en';
      const productUrl = 'your_product_url';

      final errorHandler = ErrorHandlerInternal(
        errorMessage: 'error_message',
      );

      // Mock dependencies' behavior
      when(() => mockShareProductRepository.getComplementShareProduct()).thenAnswer((_) async => left(errorHandler));

      // Call the use case
      final result = await shareProductNativeMethods.call(localizationCode, productUrl);

      // Verify the result
      expect(result, left(errorHandler));
      verify(() => mockShareProductRepository.getComplementShareProduct());
      verifyNoMoreInteractions(mockShareProductRepository);
      verifyZeroInteractions(mockShareContent);
    });
  });
}
