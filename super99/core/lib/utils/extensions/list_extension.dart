import '../../domain/entity/orders/order_item_entity.dart';
import '../../domain/entity/orders/order_status_entity.dart';

extension ListExtensionItemOrderEntity on List<OrderItemEntity> {
  List<OrderItemEntity> getOrderByStatusCode(OrderStatusEntity status) {
    if (status == OrderStatusEntity.orderNoStatus) {
      return [];
    }
    return where((itemOrder) => status.statusCode.contains(itemOrder.statusCode))
        .toList();
  }
}
