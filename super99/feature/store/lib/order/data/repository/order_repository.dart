import 'package:core/utils/error_handler/error_handler.dart';
import 'package:dartz/dartz.dart';
import 'package:store/order/domain/entity/order.dart';

///---
abstract class OrderRepository {
  Future<Either<ErrorHandler, CustomerOrder>> placeOrder(String cartId);
}
