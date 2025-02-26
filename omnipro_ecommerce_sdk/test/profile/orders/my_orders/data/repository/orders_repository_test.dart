import 'package:core/data/datasource/orders/orders_datasource.dart';
import 'package:core/data/dto/orders/orders_dto.fr.dart';
import 'package:core/data/repository/orders/orders_mapper.dart';
import 'package:core/data/repository/orders/orders_repository.dart';
import 'package:core/data/repository/orders/orders_repository_impl.dart';
import 'package:core/domain/entity/orders/orders_entity.dart';
import 'package:core/utils/error_handler/error_code.dart';
import 'package:core/utils/error_handler/error_handler.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../orders_fake_data.dart';

class MockOrdersDataSource extends Mock implements OrdersDatasource {}

void main() {
  late OrdersRepository ordersRepository;
  late MockOrdersDataSource ordersDataSource;
  int currentPage = 1;
  int pageSize = 10;
  setUp(() async {
    ordersDataSource = MockOrdersDataSource();
    ordersRepository = OrdersRepositoryImpl(ordersDatasource: ordersDataSource);
  });
  group('OrdersRepository', () {
    test('return list orders', () async {
      final ordersDTO = OrdersDTO.fromJson(GetOrdersFakeData.successFullData['customer']['orders']);
      when(() => ordersDataSource.getOrders(currentPage: currentPage, pageSize: pageSize))
          .thenAnswer((_) async => Right<ErrorHandler, OrdersDTO>(ordersDTO));
      final result = await ordersRepository.getOrders(currentPage: currentPage, pageSize: pageSize);
      verify(() => ordersDataSource.getOrders(currentPage: currentPage, pageSize: pageSize)).called(1);
      expect(result.isRight(), true);
      expect(result, Right<ErrorHandler, OrdersEntity>(ordersDTO.toDomain()));
    });

    test('return ErrorHandler when the server call fails', () async {
      final error = Exception('Failed to fetch data');

      when(() => ordersDataSource.getOrders(currentPage: currentPage, pageSize: pageSize)).thenThrow(error);
      final result = await ordersRepository.getOrders(currentPage: currentPage, pageSize: pageSize);
      expect(result.isLeft(), true);
      expect(result.fold((l) => (l as ErrorHandlerExternal).errorCode, (r) => null), equals(ErrorCode.errorGetOrders));
    });
  });
}
