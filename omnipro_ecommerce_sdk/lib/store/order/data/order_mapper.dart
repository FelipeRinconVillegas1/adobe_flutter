import '../domain/entity/order.dart';
import 'dto/customer_order_dto.fr.dart';

extension MapperOrderDTO on CustomerOrderDTO {
  CustomerOrder toDomain() => CustomerOrder(
        orderNumber: orderNumber,
      );
}
