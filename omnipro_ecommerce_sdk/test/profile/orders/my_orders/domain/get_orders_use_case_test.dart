import 'package:core/data/dto/orders/orders_dto.fr.dart';
import 'package:core/data/repository/orders/orders_mapper.dart';
import 'package:core/data/repository/orders/orders_repository.dart';
import 'package:core/domain/entity/orders/orders_entity.dart';
import 'package:core/utils/error_handler/error_code.dart';
import 'package:core/utils/error_handler/error_handler.dart';
import 'package:dartz/dartz.dart';
import 'package:mocktail/mocktail.dart';
import 'package:core/domain/use_case/orders/get_orders_use_case.dart';
import 'package:test/test.dart';

import '../orders_fake_data.dart';

class MockOrdersRepository extends Mock implements OrdersRepository {}

void main() {
  late GetOrdersUseCase getOrdersUseCase;
  late MockOrdersRepository ordersRepository;
  int currentPage = 1;
  int pageSize = 10;
  setUp(() async {
    ordersRepository = MockOrdersRepository();
    getOrdersUseCase = GetOrdersUseCase(ordersRepository: ordersRepository);
  });
  group('GetOrdersUseCase', () {
    test('return list orders', () async {
      final ordersDTO = OrdersDTO.fromJson(GetOrdersFakeData.successFullData['customer']['orders']);
      when(() => ordersRepository.getOrders(currentPage: currentPage, pageSize: pageSize))
          .thenAnswer((_) async => Right<ErrorHandler, OrdersEntity>(ordersDTO.toDomain()));
      final result = await getOrdersUseCase.call(currentPage: currentPage, pageSize: pageSize);
      verify(() => ordersRepository.getOrders(currentPage: currentPage, pageSize: pageSize)).called(1);
      expect(result.isRight(), true);
      expect(result..fold((l) => null, (r) => r), Right<ErrorHandler, OrdersEntity>(ordersDTO.toDomain()));
    });

    test('return ErrorHandler when the server call fails', () async {
      final error = Exception('Failed to fetch data');
      when(() => ordersRepository.getOrders(currentPage: currentPage, pageSize: pageSize)).thenThrow(error);
      final result = await getOrdersUseCase.call(currentPage: currentPage, pageSize: pageSize);
      expect(result.isLeft(), true);
      expect(result.fold((l) => (l as ErrorHandlerExternal).errorCode, (r) => null), equals(ErrorCode.errorGetOrders));
    });
  });
}
