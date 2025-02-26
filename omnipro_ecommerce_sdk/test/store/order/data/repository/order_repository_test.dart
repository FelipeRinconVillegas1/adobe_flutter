import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:dartz/dartz.dart';
import 'package:core/utils/error_handler/error_handler.dart';
import 'package:omnipro_ecommerce_sdk/store/order/data/datasource/order_datasource.dart';
import 'package:omnipro_ecommerce_sdk/store/order/data/dto/customer_order_dto.fr.dart';
import 'package:omnipro_ecommerce_sdk/store/order/data/repository/order_repository_impl.dart';
import 'package:omnipro_ecommerce_sdk/store/order/domain/entity/order.dart';

class MockOrderDatasource extends Mock implements OrderDatasource {}

void main() {
  late OrderRepositoryImpl orderRepository;
  late MockOrderDatasource mockOrderDatasource;

  setUp(() {
    mockOrderDatasource = MockOrderDatasource();
    orderRepository = OrderRepositoryImpl(mockOrderDatasource);
  });

  test('should place order and return order domain object if successful', () async {
    const cartId = 'cartId';
    const orderNumber = 'orderNumber';
    const expectedOrderDTO = CustomerOrderDTO(orderNumber: orderNumber);
    final expectedOrder = CustomerOrder(orderNumber: orderNumber);

    when(() => mockOrderDatasource.placeOrder(cartId)).thenAnswer((_) async => right(expectedOrderDTO));

    final result = await orderRepository.placeOrder(cartId);

    expect(result.fold((l) => null, (r) => r.orderNumber), expectedOrder.orderNumber);
    verify(() => mockOrderDatasource.placeOrder(cartId));
  });

  test('should handle error if an error occurs', () async {
    const cartId = 'cartId';
    const errorMessage = 'An error occurred';
    final expectedError = ErrorHandlerInternal(errorMessage: errorMessage);

    when(() => mockOrderDatasource.placeOrder(cartId)).thenAnswer((_) async => left(expectedError));

    final result = await orderRepository.placeOrder(cartId);

    expect(result.fold((l) => l, (r) => null), expectedError);
    verify(() => mockOrderDatasource.placeOrder(cartId));
  });
}
