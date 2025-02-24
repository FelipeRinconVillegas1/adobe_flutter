import 'package:core/data/repository/cart/cart_repository.dart';
import 'package:core/domain/entity/cart/send_tip.dart';
import 'package:core/domain/use_case/cart/add_tip_to_cart_use_case.dart';
import 'package:core/domain/use_case/cart/get_cart_id_use_case.dart';
import 'package:core/utils/error_handler/error_handler.dart';
import 'package:core/utils/extension.dart';
import 'package:core/utils/loggers/app_logger.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:dartz/dartz.dart';

// Mocks
class MockCartRepository extends Mock implements CartRepository {}

class MockGetCartIdUseCase extends Mock implements GetCartIdUseCase {}

void main() {
  late AddTipToCartUseCase addTipToCartUseCase;
  late MockCartRepository mockCartRepository;
  late MockGetCartIdUseCase mockGetCartIdUseCase;
  final sendTip = SendTip(cartId: '211', tip: '79.31');

  setUp(() async {
    await LoggerApp().init(isDebug: false, isTest: true);
    mockGetCartIdUseCase = MockGetCartIdUseCase();
    mockCartRepository = MockCartRepository();
    addTipToCartUseCase = AddTipToCartUseCase(mockCartRepository, mockGetCartIdUseCase);
  });

  group('AddTipToCartUseCase execute', () {
    test('should return ErrorHandler when there is an error', () async {
      final mockError = ErrorHandlerInternal(errorMessage: 'Test Error');

      when(() => mockCartRepository.sendTip(sendTip: sendTip)).thenAnswer((_) async => left(mockError));
      when(() => mockGetCartIdUseCase.call()).thenAnswer((invocation) async => sendTip.cartId);

      final result = await addTipToCartUseCase.execute(sendTip.tip);

      expect(result.isLeft(), true);
      expect(result.getLeft(), isA<ErrorHandler>());
    });

    test('should return SendTipResponse when the request is successful', () async {
      final mockResponse = SendTipResponse(
        message: 'Test Message',
        code: 'Test Code',
        cartId: 'Test Cart Id',
      );

      when(() => mockCartRepository.sendTip(sendTip: sendTip)).thenAnswer((_) async => right(mockResponse));
      when(() => mockGetCartIdUseCase.call()).thenAnswer((invocation) async => sendTip.cartId);

      final result = await addTipToCartUseCase.execute(sendTip.tip);

      expect(result.isRight(), true);
      expect(result.getRight(), isA<SendTipResponse>());
    });
  });
}
