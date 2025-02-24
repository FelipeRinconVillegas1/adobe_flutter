import 'order_item_entity.dart';
import 'order_status_entity.dart';

class ProductsOfYourOrderProfileParams {
  ProductsOfYourOrderProfileParams({required this.state, required this.orderItem});

  final OrderStatusEntity state;
  final OrderItemEntity orderItem;
}

class ItemProductOfYourOrder {
  ItemProductOfYourOrder({
    required this.sku,
    required this.name,
    this.imageUrl = '',
    required this.quantity,
    required this.totalPrice,
    required this.priceUnd,
    this.discount = '',
    required this.tax,
    this.salesUnitOfMeasure
  });

  final String sku;
  final String name;
  final String imageUrl;
  final double quantity;
  final String totalPrice;
  final String priceUnd;
  final String tax;
  final String discount;
  final String? salesUnitOfMeasure;
}
