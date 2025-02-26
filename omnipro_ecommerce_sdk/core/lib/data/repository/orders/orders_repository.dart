import 'package:core/domain/entity/orders/orders_entity.dart';
import 'package:core/utils/error_handler/error_handler.dart';
import 'package:dartz/dartz.dart';

abstract class OrdersRepository {
  Future<Either<ErrorHandler, OrdersEntity>> getOrders({
    required int pageSize,
    required int currentPage,
    Map<String, dynamic>? filter,
  });

  Future<Either<ErrorHandler, ReorderItemsEntity>> reorderItems(String orderNumber);
}
