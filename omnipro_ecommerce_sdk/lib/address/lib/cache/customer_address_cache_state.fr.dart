import 'package:freezed_annotation/freezed_annotation.dart';
import '../domain/entity/customer_address_entity.dart';

part 'customer_address_cache_state.fr.freezed.dart';

@Freezed(makeCollectionsUnmodifiable: false)
class CustomerAddressCache with _$CustomerAddressCache {
  const factory CustomerAddressCache({
    @Default([]) List<CustomerAddressEntity> shippingAddresses,
    CustomerAddressEntity? selectedAddress,
  }) = _CustomerAddressCache;
}
