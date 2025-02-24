import 'package:core/utils/error_handler/error_handler.dart';
import 'package:dartz/dartz.dart';

import '../../domain/entity/orders/active_order.dart';
import '../../domain/repository/active_order_repository.dart';
import '../datasource/active_orders_datasource.dart';

class ActiveOrderRepositoryImpl implements ActiveOrderRepository {
  ActiveOrderRepositoryImpl(this._dataSource);

  final ActiveOrdersDataSource _dataSource;

  @override
  Stream<List<ActiveOrder>> getOrdersByIds(List<int> orderIds) {
    return _dataSource.getOrdersInProcess(orderIds);
  }

  Future<Either<ErrorHandler, bool>> saveActiveOrder(String orderId) async {
    return _dataSource.saveActiveOrder(orderId);
  }
}
