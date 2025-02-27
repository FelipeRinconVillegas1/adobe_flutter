import 'package:core/data/datasource/orders/orders_datasource.dart';
import 'package:core/data/datasource/orders/orders_mutation.dart';
import 'package:core/data/datasource/orders/orders_query.dart';
import 'package:core/data/datasource/secure_call_datasource.dart';
import 'package:core/data/dto/orders/orders_dto.fr.dart';
import 'package:core/network/graphql/graphql_service.dart';
import 'package:core/utils/error_handler/error_handler.dart';
import '../../dto/orders/order_edited_dto.fr.dart';
import 'package:dartz/dartz.dart';

class OrdersDatasourceImpl implements OrdersDatasource {
  OrdersDatasourceImpl({required this.graphQLService});

  final GraphQLService graphQLService;

  @override
  Future<Either<ErrorHandler, OrdersDTO>> getOrders({
    required int pageSize,
    required int currentPage,
    Map<String, dynamic>? filter,
  }) {
    return secureServerCall(
      () async {
        final response = await graphQLService.query(getOrdersQuery(), variables: {
          "pageSize": pageSize,
          "currentPage": currentPage,
          "sort": {"sort_direction": "DESC", "sort_field": "CREATED_AT"},
          "filter": filter,
        });
        return response.fold(
          (l) => left(l),
          (customerData) => right(
            OrdersDTO.fromJson(customerData.data!['customer']['orders']),
          ),
        );
      },
    );
  }

  @override
  Future<Either<ErrorHandler, ReorderItemsDTO>> reorderItems({required String orderNumber}) {
    return secureServerCall(() async {
      final mutation = reorderItemsMutation(orderNumber);
      final result = await graphQLService.mutation(mutation);

      return result.fold(
        (l) => left(l),
        (json) => right(ReorderItemsDTO.fromJson(json.data?['reorderItems'])),
      );
    });
  }

  @override
  Future<Either<ErrorHandler, OrdersEditedDTO>> getEditedOrdersByOrderId({required int orderId}) {
    return secureServerCall(() async {
      final response = await graphQLService.query(getEditedOrdersByOrderIdQuery(orderId));

      return response.fold(
        (l) => left(l),
        (json) => right(OrdersEditedDTO.fromJson(json.data?['edited_order'])),
      );
    });
  }
}
