import 'package:core/di/firebase_database_provider.fr.dart';
import 'package:core/modules/active_orders/data/datasource/active_orders_datasource_impl.dart';
import 'package:core/modules/active_orders/data/repository/active_order_repository_impl.dart';
import 'package:core/modules/active_orders/domain/use_case/save_active_order_use_case.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../data/datasource/active_orders_datasource.dart';
import '../domain/repository/active_order_repository.dart';
import '../domain/use_case/get_active_orders_use_case.dart';

part 'di_active_orders.fr.g.dart';

@riverpod
ActiveOrdersDataSource activeOrdersDataSource(ActiveOrdersDataSourceRef ref) {
  return ActiveOrdersDatasourceImpl(ref.watch(firebaseDatabaseProvider));
}

@riverpod
ActiveOrderRepository orderRepository(OrderRepositoryRef ref) {
  final dataSource = ref.watch(activeOrdersDataSourceProvider);
  return ActiveOrderRepositoryImpl(dataSource);
}

@riverpod
GetActiveOrdersUseCase getActiveOrdersUseCase(GetActiveOrdersUseCaseRef ref) {
  final repository = ref.watch(orderRepositoryProvider);
  return GetActiveOrdersUseCase(repository);
}

@riverpod
SaveActiveOrdersUseCase saveActiveOrdersUseCase(SaveActiveOrdersUseCaseRef ref) {
  final repository = ref.watch(orderRepositoryProvider);
  return SaveActiveOrdersUseCase(repository);
}
