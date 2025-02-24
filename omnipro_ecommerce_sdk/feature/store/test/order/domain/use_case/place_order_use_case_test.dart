import 'package:core/domain/use_case/cart/get_cart_id_use_case.dart';
import 'package:core/local/data/repository/secure_storege_repository.dart';
import 'package:core/local/key_secure_storage.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mocktail/mocktail.dart';
import 'package:mockito/mockito.dart' as mockito;
import 'package:dartz/dartz.dart';
import 'package:store/order/data/repository/order_repository.dart';
import 'package:store/order/domain/entity/order.dart';
import 'package:core/utils/error_handler/error_handler.dart';
import 'package:store/order/domain/use_case/place_order_use_case.dart';

import 'place_order_use_case_test.mocks.dart';

class MockOrderRepository extends Mock implements OrderRepository {}

class MockGetCartIdUseCase extends Mock implements GetCartIdUseCase {}

@GenerateNiceMocks([MockSpec<SecureStorageRepository>()])
void main() {
  late PlaceOrderUseCase placeOrderUseCase;
  late MockOrderRepository mockOrderRepository;
  late MockGetCartIdUseCase mockGetCartIdUseCase;
  late MockSecureStorageRepository mockSecureStorageRepository;
  setUp(() async {
    registerFallbackValue(KeySecureStorage.customerCartID);
    mockSecureStorageRepository = MockSecureStorageRepository();
    mockOrderRepository = MockOrderRepository();
    mockGetCartIdUseCase = MockGetCartIdUseCase();
    placeOrderUseCase = PlaceOrderUseCase(mockOrderRepository, mockGetCartIdUseCase, mockSecureStorageRepository);
  });

  test('should place order and return order number if successful', () async {
    const cartId = 'cartId';
    const orderNumber = 'orderNumber';
    final expectedOrder = CustomerOrder(orderNumber: orderNumber);

    mockito.when(mockSecureStorageRepository.deleteData(mockito.any)).thenAnswer((invocation) => Future.value());

    when(() => mockGetCartIdUseCase()).thenAnswer((_) async => cartId);
    when(() => mockOrderRepository.placeOrder(cartId)).thenAnswer((_) async => right(expectedOrder));

    when(() => mockGetCartIdUseCase()).thenAnswer((_) async => cartId);
    when(() => mockOrderRepository.placeOrder(cartId)).thenAnswer((_) async => right(expectedOrder));

    final result = await placeOrderUseCase();

    expect(result, equals(right(expectedOrder)));
    verify(() => mockOrderRepository.placeOrder(cartId)).called(1);
    verify(() => mockGetCartIdUseCase()).called(1);

    mockito.verify(mockSecureStorageRepository.deleteData(KeySecureStorage.customerCartID)).called(1);
    mockito.verify(mockSecureStorageRepository.deleteData(KeySecureStorage.guestCartID)).called(1);
  });

  test('should place order and return order number if successful with custom cartId', () async {
    const cartId = 'id';
    const orderNumber = 'orderNumber';
    final expectedOrder = CustomerOrder(orderNumber: orderNumber);

    when(() => mockGetCartIdUseCase()).thenAnswer((_) async => cartId);
    when(() => mockOrderRepository.placeOrder(cartId)).thenAnswer((_) async => right(expectedOrder));

    final result = await placeOrderUseCase.call(customCartId: cartId);

    expect(result, equals(right(expectedOrder)));
    verify(() => mockOrderRepository.placeOrder(cartId)).called(1);
    verifyNever(() => mockGetCartIdUseCase());
  });

  test('should handle internal error if an exception occurs', () async {
    final exceptionMessage = Exception('An error occurred');

    final expectedError = ErrorHandlerInternal(errorMessage: exceptionMessage.toString());

    when(() => mockGetCartIdUseCase()).thenThrow(exceptionMessage);

    final result = await placeOrderUseCase.call();

    expect(result.fold((l) => l as ErrorHandlerInternal, (r) => null), expectedError);
    verify(() => mockGetCartIdUseCase()).called(1);
    verifyNever(() => mockOrderRepository.placeOrder(any()));
  });
}
