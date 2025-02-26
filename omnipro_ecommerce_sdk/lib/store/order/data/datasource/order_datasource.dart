import 'package:core/utils/error_handler/error_handler.dart';
import 'package:dartz/dartz.dart';
import '../dto/customer_order_dto.fr.dart';

abstract class OrderDatasource {
  Future<Either<ErrorHandler, CustomerOrderDTO>> placeOrder(String cartId);
}
