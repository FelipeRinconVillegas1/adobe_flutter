import 'package:core/data/dto/orders/orders_dto.fr.dart';
import 'package:core/utils/error_handler/error_handler.dart';
import 'package:dartz/dartz.dart';

import '../../dto/orders/order_edited_dto.fr.dart';

abstract class OrdersDatasource {
  Future<Either<ErrorHandler, OrdersDTO>> getOrders({
    required int pageSize,
    required int currentPage,
    Map<String, dynamic>? filter,
  });

  Future<Either<ErrorHandler, ReorderItemsDTO>> reorderItems({required String orderNumber});

  Future<Either<ErrorHandler, OrdersEditedDTO>> getEditedOrdersByOrderId({required int orderId});
}
