import 'package:core/data/repository/cart/cart_repository.dart';
import 'package:core/domain/entity/cart/enabled_shipping_method.dart';
import 'package:core/domain/use_case/cart/get_enables_shipping_methods_use_case.dart';
import 'package:core/utils/error_handler/error_handler.dart';
import 'package:core/utils/loggers/app_logger.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockCartRepository extends Mock implements CartRepository {}

void main() {
  late GetEnabledShippingMethodsUseCase useCase;
  late MockCartRepository mockCartRepository;

  setUp(() async {
    await LoggerApp().init(isDebug: false, isTest: true);
    mockCartRepository = MockCartRepository();
    useCase = GetEnabledShippingMethodsUseCase(mockCartRepository);
  });

  final tMethods = [
    EnabledShippingMethod(methodCode: 'test', methodLabel: 'Test Method'),
  ];

  test('should get list of enabled shipping methods from the repository', () async {
    // arrange
    when(() => mockCartRepository.getEnabledShippingMethods()).thenAnswer((_) async => right(tMethods));

    // act
    final result = await useCase.execute();

    // assert
    expect(result, right(tMethods));
    verify(() => mockCartRepository.getEnabledShippingMethods()).called(1);
  });

  test('should return error when the repository call fails', () async {
    // arrange
    final tError = ErrorHandlerInternal(errorMessage: "Test error");
    when(() => mockCartRepository.getEnabledShippingMethods()).thenAnswer((_) async => left(tError));

    // act
    final result = await useCase.execute();

    // assert
    expect(result, left(tError));
    verify(() => mockCartRepository.getEnabledShippingMethods()).called(1);
  });
}
