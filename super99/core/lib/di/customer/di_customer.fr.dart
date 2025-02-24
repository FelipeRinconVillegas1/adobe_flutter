import 'package:core/data/datasource/customer/customer_datasource.dart';
import 'package:core/data/datasource/customer/customer_datasource_impl.dart';
import 'package:core/data/repository/customer/customer_repository.dart';
import 'package:core/data/repository/customer/customer_repository_impl.dart';
import 'package:core/di/data_provider.fr.dart';
import 'package:core/domain/use_case/customer/delete_account_use_case.dart';
import 'package:core/domain/use_case/customer/get_customer_use_case.dart';
import 'package:core/domain/use_case/customer/save_customer_in_local_use_case.dart';
import 'package:core/domain/use_case/customer/update_customer_email_use_case.dart';
import 'package:core/domain/use_case/customer/update_customer_password_use_case.dart';
import 'package:core/domain/use_case/customer/update_customer_use_case.dart';
import 'package:core/local/di_secure_storage.fr.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'di_customer.fr.g.dart';

/// UpdateCustomerUseCase di
@riverpod
UpdateCustomerUseCase updateCustomerUseCase(UpdateCustomerUseCaseRef ref) {
  return UpdateCustomerUseCase(ref.watch(customerRepositoryProvider), ref.watch(saveCustomerInLocalUseCaseProvider));
}

@riverpod
SaveCustomerInLocalUseCase saveCustomerInLocalUseCase(SaveCustomerInLocalUseCaseRef ref) {
  return SaveCustomerInLocalUseCase(ref.watch(customerRepositoryProvider));
}

@Riverpod(keepAlive: true)
SaveCustomerInLocalUseCase saveCustomerInLocalUseCaseKeepAlive(SaveCustomerInLocalUseCaseKeepAliveRef ref) {
  return SaveCustomerInLocalUseCase(ref.watch(customerRepositoryKeepAliveProvider));
}

@riverpod
GetCustomerUseCase getCustomerUseCase(GetCustomerUseCaseRef ref) {
  return GetCustomerUseCase(ref.watch(customerRepositoryProvider), ref.watch(saveCustomerInLocalUseCaseProvider));
}

@Riverpod(keepAlive: true)
GetCustomerUseCase getCustomerUseCaseKeepAlive(GetCustomerUseCaseKeepAliveRef ref) {
  return GetCustomerUseCase(
      ref.watch(customerRepositoryKeepAliveProvider), ref.watch(saveCustomerInLocalUseCaseKeepAliveProvider));
}

@riverpod
CustomerRepository customerRepository(CustomerRepositoryRef ref) {
  return CustomerRepositoryImpl(
      ref.watch(customerDatasourceProvider), ref.watch(secureStorageDatasourceSourceProvider));
}

@Riverpod(keepAlive: true)
CustomerRepository customerRepositoryKeepAlive(CustomerRepositoryKeepAliveRef ref) {
  return CustomerRepositoryImpl(
      ref.watch(customerDatasourceKeepAliveProvider), ref.watch(secureStorageDatasourceSourceProvider));
}

@Riverpod(keepAlive: true)
CustomerDatasource customerDatasourceKeepAlive(CustomerDatasourceKeepAliveRef ref) {
  return CustomerDatasourceImpl(
    ref.watch(graphQLServiceSourceProvider),
  );
}

@riverpod
CustomerDatasource customerDatasource(CustomerDatasourceRef ref) {
  return CustomerDatasourceImpl(
    ref.watch(graphQLServiceSourceProvider),
  );
}

@riverpod
UpdateCustomerEmailUseCase updateCustomerEmailUseCase(UpdateCustomerEmailUseCaseRef ref) {
  return UpdateCustomerEmailUseCase(
      ref.watch(customerRepositoryProvider), ref.watch(saveCustomerInLocalUseCaseProvider));
}

@riverpod
UpdateCustomerPasswordUseCase updateCustomerPasswordUseCase(UpdateCustomerPasswordUseCaseRef ref) {
  return UpdateCustomerPasswordUseCase(
      ref.watch(customerRepositoryProvider), ref.watch(saveCustomerInLocalUseCaseProvider));
}

@riverpod
DeleteAccountUseCase deleteAccountUseCase(DeleteAccountUseCaseRef ref) {
  return DeleteAccountUseCase(ref.watch(customerRepositoryProvider));
}
