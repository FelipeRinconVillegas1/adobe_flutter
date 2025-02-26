import 'package:core/utils/error_handler/error_handler.dart';
import 'package:dartz/dartz.dart';
import 'package:omnipro_ecommerce_sdk/store/order/data/order_mapper.dart';
import '../../domain/entity/order.dart';
import '../datasource/order_datasource.dart';
import 'order_repository.dart';

class OrderRepositoryImpl extends OrderRepository {
  final OrderDatasource _orderDatasource;

  OrderRepositoryImpl(
    this._orderDatasource,
  );

  @override
  Future<Either<ErrorHandler, CustomerOrder>> placeOrder(String cartId) async {
    return (await _orderDatasource.placeOrder(cartId))
        .fold((l) => left(l), (orderDTO) => Right(orderDTO.toDomain()));
  }
}
