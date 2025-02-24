import 'dart:convert';
import 'package:collection/collection.dart';
import 'package:core/data/repository/orders/orders_repository.dart';
import 'package:core/domain/entity/orders/orders_edited_entity.fr.dart';
import 'package:core/utils/error_handler/error_handler.dart';
import 'package:dartz/dartz.dart';

class GetOrderEditedUseCase {
  GetOrderEditedUseCase(this._ordersRepository);

  final OrdersRepository _ordersRepository;

  Future<Either<ErrorHandler, OrderEditedEntity>> call({required String orderIdInBase64}) async {
    try {
      final orderIdDecoded = base64Decode(orderIdInBase64);
      final orderId = utf8.decode(orderIdDecoded);
      int? orderIdInt = int.tryParse(orderId);
      if (orderIdInt == null) {
        return left(
          ErrorHandlerExternal(
            errorCode: "ERROR_PARSING_ORDER_ID_BASE64",
            errorMessage: 'Error parsing order id',
          ),
        );
      }
      final resultOrderEdited = await _ordersRepository.getEditedOrdersByOrderId(orderId: orderIdInt);
      return resultOrderEdited.fold(
        (l) => left(l),
        (r) {
          final orderEdited = r.orders.firstWhereOrNull((element) => element.orderId == orderIdInt);
          if (orderEdited != null) {
            return right(orderEdited);
          }
          return left(
            ErrorHandlerExternal(
              errorCode: "NOT_FOUND_ORDER_EDITED",
              errorMessage: 'Error not found order edited',
            ),
          );
        },
      );
    } catch (e, s) {
      return left(
        ErrorHandlerExternal(
          errorCode: "ERROR_GET_ORDER_EDITED",
          errorMessage: e.toString(),
          stackTrace: s,
        ),
      );
    }
  }
}
