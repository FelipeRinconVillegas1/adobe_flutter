import 'package:core/data/datasource/secure_call_datasource.dart';
import 'package:core/network/graphql/graphql_service.dart';
import 'package:core/utils/extension.dart';
import 'package:dartz/dartz.dart';
import 'package:core/utils/error_handler/error_handler.dart';
import '../dto/customer_order_dto.fr.dart';
import 'order_datasource.dart';
import 'order_mutation.dart';

class OrderDatasourceImpl extends OrderDatasource {
  OrderDatasourceImpl(
    this._graphQLService,
  );

  final GraphQLService _graphQLService;

  @override
  Future<Either<ErrorHandler, CustomerOrderDTO>> placeOrder(String cartId) async {
    return secureServerCall(() async {
      String mutation = placeOrderMutation(cartId);
      final response = await _graphQLService.mutation(
        mutation,
      );

      final mutationResponse = response.getRight();
      if (mutationResponse == null) {
        return left(response.getLeft()!);
      }

      return right(CustomerOrderDTO.fromJson(mutationResponse.data?['placeOrder']['order']));
    });
  }
}
