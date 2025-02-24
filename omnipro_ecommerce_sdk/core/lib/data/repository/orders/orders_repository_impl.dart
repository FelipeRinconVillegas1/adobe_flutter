import 'package:core/data/datasource/orders/orders_datasource.dart';
import 'package:core/data/mapper.dart';
import 'package:core/data/repository/orders/orders_mapper.dart';
import 'package:core/data/repository/orders/orders_repository.dart';
import 'package:core/domain/entity/orders/orders_entity.dart';
import 'package:core/utils/error_handler/error_code.dart';
import 'package:core/utils/error_handler/error_handler.dart';
import 'package:dartz/dartz.dart';

import '../../../domain/entity/orders/orders_edited_entity.fr.dart';

class OrdersRepositoryImpl implements OrdersRepository {
  OrdersRepositoryImpl({required this.ordersDatasource});
  final OrdersDatasource ordersDatasource;

  @override
  Future<Either<ErrorHandler, OrdersEntity>> getOrders({
    required int pageSize,
    required int currentPage,
    Map<String, dynamic>? filter,
  }) async {
    try {
      final response = await ordersDatasource.getOrders(currentPage: currentPage, pageSize: pageSize, filter: filter);
      return response.fold((l) => left(l), (r) => right(r.toDomain()));
    } catch (e, s) {
      return left(ErrorHandlerExternal(errorCode: ErrorCode.errorGetOrders, errorMessage: e.toString(), stackTrace: s));
    }
  }

  @override
  Future<Either<ErrorHandler, ReorderItemsEntity>> reorderItems(String orderNumber) async {
    try {
      final response = await ordersDatasource.reorderItems(orderNumber: orderNumber);
      return response.fold((l) => left(l), (r) => right(r.toDomain()));
    } catch (e, s) {
      return left(ErrorHandlerExternal(errorCode: ErrorCode.errorGetOrders, errorMessage: e.toString(), stackTrace: s));
    }
  }

  @override
  Future<Either<ErrorHandler, OrdersEditedEntity>> getEditedOrdersByOrderId({required int orderId}) async {
    try {
      return ordersDatasource.getEditedOrdersByOrderId(orderId: orderId).then((response) {
        return response.fold((l) => left(l), (r) => right(r.toDomain()));
      });
    } catch (e, s) {
      return left(ErrorHandlerExternal(errorCode: ErrorCode.errorGetOrders, errorMessage: e.toString(), stackTrace: s));
    }
  }
}
