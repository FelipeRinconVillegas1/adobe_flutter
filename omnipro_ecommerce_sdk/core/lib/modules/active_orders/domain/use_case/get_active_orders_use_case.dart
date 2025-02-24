import 'package:core/modules/active_orders/domain/repository/active_order_repository.dart';

import '../entity/orders/active_order.dart';

class GetActiveOrdersUseCase {
  GetActiveOrdersUseCase(this._repository);

  final ActiveOrderRepository _repository;

  Stream<List<ActiveOrder>> call(List<int> orderIds) {
    if (orderIds.isEmpty) {
      return Stream.value([]);
    }
    return _repository.getOrdersByIds(orderIds);
  }
}
