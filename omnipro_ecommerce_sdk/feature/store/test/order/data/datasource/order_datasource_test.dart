import 'package:core/network/graphql/graphql_service.dart';
import 'package:core/network/graphql_helper_test.dart';
import 'package:core/utils/error_handler/error_handler.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:store/order/data/datasource/order_datasource.dart';
import 'package:store/order/data/datasource/order_datasource_impl.dart';
import 'package:store/order/data/dto/customer_order_dto.fr.dart';

class MockGraphQLService extends Mock implements GraphQLService {}

void main() {
  late OrderDatasource orderDatasource;
  late MockGraphQLService mockGraphQLService;
  setUp(() async {
    mockGraphQLService = MockGraphQLService();
    orderDatasource = OrderDatasourceImpl(mockGraphQLService);
  });

  group('Place order', () {
    const cartId = 'cartId';
    test('Place order success', () async {
      /// Arrange
      final customerOrderExpected = CustomerOrderDTO.fromJson({"order_number": "000000001"});

      final placeOrderResponse = {
        "placeOrder": {
          "order": {"order_number": "000000001"}
        }
      };

      final resultQuery = mockMutation(
        response: placeOrderResponse,
      );

      when(() => mockGraphQLService.mutation(any())).thenAnswer((invocation) async => Right(resultQuery));

      /// Act
      final result = await orderDatasource.placeOrder(cartId);

      /// Assert
      verify(() => mockGraphQLService.mutation(any())).called(1);
      expect(result.isRight(), true);
      expect(result.fold((l) => null, (r) => r.orderNumber), customerOrderExpected.orderNumber);
    });

    test('Place order error', () async {
      /// Arrange

      when(() => mockGraphQLService.mutation(any())).thenAnswer((invocation) async => Left(ErrorHandlerInternal(
            errorMessage: 'Server error',
          )));

      /// Act
      final result = await orderDatasource.placeOrder(cartId);

      /// Assert
      verify(() => mockGraphQLService.mutation(any())).called(1);
      expect(result.isLeft(), true);
      expect(
          result.fold((l) => l, (r) => null),
          ErrorHandlerInternal(
            errorMessage: 'Server error',
          ));
    });
  });
}
