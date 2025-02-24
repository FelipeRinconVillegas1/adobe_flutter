import 'package:core/data/datasource/shipping_methods/shipping_methods_datasource_impl.dart';
import 'package:core/data/repository/shipping_methods/shipping_methods_repository_impl.dart';
import 'package:core/di/data_provider.fr.dart';
import 'package:core/domain/use_case/shipping_methods/get_shipping_method_selected_use_case.dart';
import 'package:core/domain/use_case/shipping_methods/get_shipping_methods_use_case.dart';
import 'package:core/domain/use_case/shipping_methods/save_shipping_method_selected_use_case.dart';
import 'package:core/local/di_secure_storage.fr.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:core/data/datasource/shipping_methods/shipping_methods_datasource.dart';
import 'package:core/data/repository/shipping_methods/shipping_methods_repository.dart';

part 'di_shipping_methods.fr.g.dart';

@Riverpod(keepAlive: true)
GetShippingMethodsUseCase getShippingMethodsUseCase(GetShippingMethodsUseCaseRef ref) {
  return GetShippingMethodsUseCase(ref.watch(shippingMethodsRepositoryProvider));
}

@Riverpod(keepAlive: true)
GetShippingMethodUseCase getShippingMethodUseCase(GetShippingMethodUseCaseRef ref) {
  return GetShippingMethodUseCase(ref.watch(shippingMethodsRepositoryProvider));
}

@Riverpod(keepAlive: true)
SaveShippingMethodUseCase saveShippingMethodUseCase(SaveShippingMethodUseCaseRef ref) {
  return SaveShippingMethodUseCase(ref.watch(shippingMethodsRepositoryProvider));
}

@Riverpod(keepAlive: true)
ShippingMethodsRepository shippingMethodsRepository(ShippingMethodsRepositoryRef ref) {
  return ShippingMethodsRepositoryImpl(ref.watch(shippingMethodsDataSourceProvider));
}

@Riverpod(keepAlive: true)
ShippingMethodsDataSource shippingMethodsDataSource(ShippingMethodsDataSourceRef ref) {
  return ShippingMethodsDataSourceImpl(ref.watch(graphQLServiceSourceNoAuthenticatedProvider.call(useGet: true)),
      ref.watch(secureStorageDatasourceSourceProvider));
}
