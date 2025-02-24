import 'package:core/data/dto/customer_address_dto.fr.dart';
import 'package:core/di/data_provider.fr.dart';
import 'package:core/local/di_secure_storage.fr.dart';
import 'package:core/utils/stream_event_change_contract.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:rxdart/rxdart.dart';
import '../data/datasource/address_datasource.dart';
import '../data/repository/address_repository.dart';
import '../domain/use_case/delete_address_use_case.dart';
import '../domain/use_case/get_customer_addresses_use_case.dart';
import '../domain/use_case/get_local_address_selected_use_case.dart';
import '../domain/use_case/get_local_billing_address_selected_use_case.dart';
import '../domain/use_case/get_states_by_id_country_use_case.dart';
import '../domain/use_case/get_user_who_pickup_in_store_use_case.dart';
import '../domain/use_case/save_local_address_selected_use_case.dart';
import '../domain/use_case/save_local_billing_address_selected_use_case .dart';
import '../domain/use_case/save_new_customer_address_use_case.dart';
import '../domain/use_case/save_user_who_pickup_in_store_use_case.dart';
import '../domain/use_case/update_address_use_case.dart';

part 'di_address.fr.g.dart';

@Riverpod(keepAlive: true)
UpdateAddressUseCase updateAddressUseCase(UpdateAddressUseCaseRef ref) {
  return UpdateAddressUseCase(ref.watch(addressRepositoryProvider));
}

@riverpod
DeleteAddressUseCase deleteAddressUseCase(DeleteAddressUseCaseRef ref) {
  return DeleteAddressUseCase(ref.watch(addressRepositoryProvider));
}

@riverpod
GetStatesByIdCountryUseCase getStatesByIdCountryUseCase(GetStatesByIdCountryUseCaseRef ref) {
  return GetStatesByIdCountryUseCase(ref.watch(addressRepositoryProvider));
}

@riverpod
SaveNewCustomerAddressUseCase saveNewCustomerAddressUseCase(SaveNewCustomerAddressUseCaseRef ref) {
  return SaveNewCustomerAddressUseCase(
    ref.watch(addressRepositoryProvider),
  );
}

@riverpod
GetCustomerAddressesUseCase getCustomerAddressesUseCase(GetCustomerAddressesUseCaseRef ref) {
  return GetCustomerAddressesUseCase(ref.watch(addressRepositoryProvider));
}

@Riverpod(keepAlive: true)
GetCustomerAddressesUseCase getCustomerAddressesUseCaseKeepAlive(GetCustomerAddressesUseCaseKeepAliveRef ref) {
  return GetCustomerAddressesUseCase(ref.watch(addressRepositoryProvider));
}

@Riverpod(keepAlive: true)
GetLocalAddressSelectedUseCase getAddressSelectedUseCase(GetAddressSelectedUseCaseRef ref) {
  return GetLocalAddressSelectedUseCase(ref.watch(addressRepositoryProvider));
}

@Riverpod(keepAlive: true)
GetLocalBillingAddressSelectedUseCase getBillingAddressSelectedUseCase(GetBillingAddressSelectedUseCaseRef ref) {
  return GetLocalBillingAddressSelectedUseCase(ref.watch(addressRepositoryProvider));
}

@Riverpod(keepAlive: true)
SaveLocalAddressSelectedUseCase saveLocalAddressSelectedUseCase(SaveLocalAddressSelectedUseCaseRef ref) {
  return SaveLocalAddressSelectedUseCase(ref.watch(addressRepositoryProvider));
}

@Riverpod(keepAlive: true)
SaveLocalUserWhoPickUpInStoreUseCase saveLocalUserWhoPickUpInStoreUseCase(SaveLocalUserWhoPickUpInStoreUseCaseRef ref) {
  return SaveLocalUserWhoPickUpInStoreUseCase(ref.watch(addressRepositoryProvider));
}

@Riverpod(keepAlive: true)
GetLocalUserWhoPickupInStoreUseCase getLocalUserWhoPickupInStoreUseCase(GetLocalUserWhoPickupInStoreUseCaseRef ref) {
  return GetLocalUserWhoPickupInStoreUseCase(ref.watch(addressRepositoryProvider));
}

@Riverpod(keepAlive: true)
SaveLocalBillingAddressSelectedUseCase saveLocalBillingAddressSelectedUseCase(
    SaveLocalBillingAddressSelectedUseCaseRef ref) {
  return SaveLocalBillingAddressSelectedUseCase(ref.watch(addressRepositoryProvider));
}

@Riverpod(keepAlive: true)
AddressRepository addressRepository(AddressRepositoryRef ref) {
  return AddressRepositoryImpl(ref.watch(addressDatasourceProvider), ref.watch(secureStorageDatasourceSourceProvider));
}

@Riverpod(keepAlive: true)
AddressDatasource addressDatasource(AddressDatasourceRef ref) {
  return AddressDatasourceImpl(ref.watch(graphQLServiceSourceProvider),
      BehaviorSubject<EventDataChange<List<CustomerAddressDTO>, AddressEvent>>());
}
