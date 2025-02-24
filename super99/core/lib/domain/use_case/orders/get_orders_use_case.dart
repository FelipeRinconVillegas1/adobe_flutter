import 'package:core/data/repository/orders/orders_repository.dart';
import 'package:core/domain/entity/orders/orders_entity.dart';
import 'package:core/utils/error_handler/error_code.dart';
import 'package:core/utils/error_handler/error_handler.dart';
import 'package:dartz/dartz.dart';

class GetOrdersUseCase {
  GetOrdersUseCase({required this.ordersRepository});
  OrdersRepository ordersRepository;
  Future<Either<ErrorHandler, OrdersEntity>> call({
    required int pageSize,
    required int currentPage,
    Map<String, dynamic>? filter,
  }) async {
    try {
      return await ordersRepository.getOrders(currentPage: currentPage, pageSize: pageSize, filter: filter);
    } catch (e, s) {
      return left(
        ErrorHandlerExternal(errorCode: ErrorCode.errorGetOrders, errorMessage: e.toString(), stackTrace: s),
      );
    }
  }
}
