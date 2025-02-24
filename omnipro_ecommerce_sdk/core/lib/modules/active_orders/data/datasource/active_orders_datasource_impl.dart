import 'package:collection/collection.dart';
import 'package:core/utils/error_handler/error_handler.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_database/firebase_database.dart';

import '../../../../utils/error_handler/error_code.dart';
import '../../domain/entity/orders/active_order.dart';
import 'active_orders_datasource.dart';

class ActiveOrdersDatasourceImpl extends ActiveOrdersDataSource {
  ActiveOrdersDatasourceImpl(this._database);

  final FirebaseDatabase _database;

  @override
  Stream<List<ActiveOrder>> getOrdersInProcess(List<int> magentoOrderIds) {
    if (magentoOrderIds.isEmpty) {
      return Stream.value([]);
    }

    final ordersRef = _database.ref('orders');
    return ordersRef.onValue.map((event) {
      final data = event.snapshot.value as Map<dynamic, dynamic>?;

      if (data == null) return [];

      final filteredOrders = data.values.where((order) {
        final magentoOrderId = order['magentoOrderId'];
        return magentoOrderId != null && magentoOrderIds.contains(magentoOrderId);
      });

      return filteredOrders.map((order) {
        final domainModel = ActiveOrder.fromJson(Map<String, dynamic>.from(order));
        return domainModel;
      }).sorted((a, b) {
        return b.orderId.compareTo(a.orderId);
      }).toList();
    });
  }

  @override
  Future<Either<ErrorHandler, bool>> saveActiveOrder(String orderId) async {
    try {
      final newOrderRef = _database.ref('orders');
      final orderData = {
        'magentoOrderId': int.parse(orderId),
        'status': "received",
        'createdAt': ServerValue.timestamp,
      };
      final customerKey = orderId;
      await newOrderRef.child(customerKey).set(orderData);
      return right(true);
    } catch (e, stackTrace) {
      return left(
        ErrorHandlerExternal(
          errorMessage: e.toString(),
          errorCode: ErrorCode.errorNoActiveOrderSaved,
          stackTrace: stackTrace,
        ),
      );
    }
  }
}
