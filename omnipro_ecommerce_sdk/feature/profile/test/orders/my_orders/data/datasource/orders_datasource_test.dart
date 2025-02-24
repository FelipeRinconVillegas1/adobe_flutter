import 'package:core/data/datasource/orders/orders_datasource.dart';
import 'package:core/data/datasource/orders/orders_datasource_impl.dart';
import 'package:core/data/dto/orders/orders_dto.fr.dart';
import 'package:core/network/graphql/graphql_service.dart';
import 'package:core/utils/error_handler/error_handler.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:core/network/graphql_helper_test.dart';

import '../../orders_fake_data.dart';

class MockGraphQLService extends Mock implements GraphQLService {}

void main() {
  late GraphQLService graphQLService;
  late OrdersDatasource ordersDatasource;
  setUp(() async {
    graphQLService = MockGraphQLService();
    ordersDatasource = OrdersDatasourceImpl(graphQLService: graphQLService);
  });

  group('OrdersDatasource', () {
    test("return orders", () async {
      int currentPage = 1;
      int pageSize = 10;
      when(() => graphQLService.query(any()))
          .thenAnswer((_) async => Right(mockQuery(response: GetOrdersFakeData.successFullData)));
      final result = await ordersDatasource.getOrders(currentPage: currentPage, pageSize: pageSize);
      expect(result, isA<Right<ErrorHandler, OrdersDTO>>());
      expect(result.getOrElse(() => throw Exception()), isA<OrdersDTO>());
    });
  });
}
