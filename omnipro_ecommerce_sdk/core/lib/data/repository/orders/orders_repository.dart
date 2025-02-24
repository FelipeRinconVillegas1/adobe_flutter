import 'package:core/domain/entity/orders/orders_entity.dart';
import 'package:core/utils/error_handler/error_handler.dart';
import 'package:dartz/dartz.dart';
import '../../../domain/entity/orders/orders_edited_entity.fr.dart';

abstract class OrdersRepository {
  Future<Either<ErrorHandler, OrdersEntity>> getOrders({
    required int pageSize,
    required int currentPage,
    Map<String, dynamic>? filter,
  });

  Future<Either<ErrorHandler, ReorderItemsEntity>> reorderItems(String orderNumber);

  Future<Either<ErrorHandler, OrdersEditedEntity>> getEditedOrdersByOrderId({required int orderId});

}
