import 'package:address/data/datasource/address_datasource.dart';
import 'package:address/data/repository/address_repository.dart';
import 'package:address/di/di_address.fr.dart';
import 'package:address/domain/entity/customer_address_entity.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'customer_address_cache_state.fr.dart';

part 'customer_address_cache_notifier.fr.g.dart';

@Riverpod(keepAlive: true)
class CustomerAddressCacheNotifier extends _$CustomerAddressCacheNotifier {
  late AddressRepository _addressRepository;

  @override
  CustomerAddressCache build() {
    /// Obtain the `SecureStorageDatasource` instance from the provider
    _addressRepository = ref.watch(addressRepositoryProvider);

    /// Listen to the subject event stream of the secure storage
    _addressRepository.getStreamEventChangeData().listen((event) {
      switch (event.eventType) {
        case AddressEvent.saveAddress:
          final currentAddresses = state.shippingAddresses.map((e) => e.copyWith()).toList();
          updateDefaultAddress(event.data!.first);

          /// Add the new address to the list, is secure in this case.
          state = state.copyWith(shippingAddresses: [...currentAddresses, event.data!.first]);
          break;
        case AddressEvent.deleteAddress:
          final currentAddresses = state.shippingAddresses.map((e) => e.copyWith()).toList();
          currentAddresses.removeWhere((element) => element.id == event.data?.first.id);
          state = state.copyWith(shippingAddresses: currentAddresses);
          break;
        case AddressEvent.getAddress:
          state = state.copyWith(shippingAddresses: event.data ?? []);
          break;
        case AddressEvent.selectLocalAddress:
          state = state.copyWith(selectedAddress: event.data?.first);
          break;
        case AddressEvent.updateAddress:
          final currentAddresses = state.shippingAddresses.map((e) => e.copyWith()).toList();
          final index = currentAddresses.indexWhere((element) => element.id == event.data?.first.id);
          currentAddresses[index] = event.data!.first;
          updateDefaultAddress(currentAddresses[index]);

          state = state.copyWith(shippingAddresses: currentAddresses);

          break;
      }
    });
    return const CustomerAddressCache();
  }

  void reset() {
    state = const CustomerAddressCache();
  }

  /// Update the default address when the user select a new default address
  void updateDefaultAddress(CustomerAddressEntity newAddress) {
    if (newAddress.defaultShipping) {
      final currentAddresses = [...state.shippingAddresses];
      for (var element in currentAddresses) {
        if (element.id != newAddress.id) {
          element.defaultShipping = false;
        }
      }
    }
  }
}
