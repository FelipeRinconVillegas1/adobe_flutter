import 'package:dartz/dartz.dart';

import '../../../../utils/error_handler/error_handler.dart';
import '../../domain/entity/orders/active_order.dart';

abstract class ActiveOrdersDataSource {
  /// Gets active orders from Firestore by a list of IDs
  Stream<List<ActiveOrder>> getOrdersInProcess(List<int> orderIds);

  /// Save order to follow status changes
  Future<Either<ErrorHandler, bool>> saveActiveOrder(String orderId);
}
