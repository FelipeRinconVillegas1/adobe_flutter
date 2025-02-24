import 'package:core/di/data_provider.fr.dart';
import 'package:core/local/di_secure_storage.fr.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:core/di/cart/di_cart.fr.dart';
import 'package:store/order/data/datasource/order_datasource_impl.dart';
import 'package:store/order/data/datasource/order_datasource.dart';
import 'package:store/order/data/repository/order_repository_impl.dart';
import 'package:store/order/data/repository/order_repository.dart';
import 'package:store/order/domain/use_case/place_order_use_case.dart';

part 'di_order.fr.g.dart';

@riverpod
PlaceOrderUseCase placeOrderUseCase(PlaceOrderUseCaseRef ref) {
  return PlaceOrderUseCase(ref.watch(orderRepositoryProvider), ref.watch(getCartIdUseCaseProvider),
      ref.watch(secureStorageRepositorySourceProvider));
}

@riverpod
OrderRepository orderRepository(OrderRepositoryRef ref) {
  return OrderRepositoryImpl(ref.watch(orderDatasourceProvider));
}

@riverpod
OrderDatasource orderDatasource(OrderDatasourceRef ref) {
  return OrderDatasourceImpl(ref.watch(graphQLServiceSourceUsePOSTProvider));
}
