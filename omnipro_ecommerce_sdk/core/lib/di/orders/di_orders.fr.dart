import 'package:core/data/datasource/orders/orders_datasource.dart';
import 'package:core/data/datasource/orders/orders_datasource_impl.dart';
import 'package:core/data/repository/orders/orders_repository.dart';
import 'package:core/data/repository/orders/orders_repository_impl.dart';
import 'package:core/di/data_provider.fr.dart';
import 'package:core/domain/use_case/orders/get_orders_use_case.dart';
import 'package:core/domain/use_case/orders/reorder_items_use_case.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'di_orders.fr.g.dart';

@riverpod
GetOrdersUseCase getOrdersUseCase(GetOrdersUseCaseRef ref) {
  return GetOrdersUseCase(ordersRepository: ref.watch(ordersRepositoryProvider));
}

@riverpod
OrdersRepository ordersRepository(OrdersRepositoryRef ref) {
  return OrdersRepositoryImpl(ordersDatasource: ref.watch(ordersDatasourceProvider));
}

@riverpod
OrdersDatasource ordersDatasource(OrdersDatasourceRef ref) {
  return OrdersDatasourceImpl(graphQLService: ref.watch(graphQLServiceSourceProvider));
}

@riverpod
ReorderItemsUseCase reorderItemsUseCase(ReorderItemsUseCaseRef ref) {
  return ReorderItemsUseCase(ref.watch(ordersRepositoryProvider));
}
