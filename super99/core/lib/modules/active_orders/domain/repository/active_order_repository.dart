import 'package:dartz/dartz.dart';

import '../../../../utils/error_handler/error_handler.dart';
import '../entity/orders/active_order.dart';

abstract class ActiveOrderRepository {
  Stream<List<ActiveOrder>> getOrdersByIds(List<int> orderIds);

  Future<Either<ErrorHandler, bool>> saveActiveOrder(String orderId);
}
