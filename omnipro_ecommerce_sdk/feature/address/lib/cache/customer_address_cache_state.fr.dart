import 'package:address/domain/entity/customer_address_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'customer_address_cache_state.fr.freezed.dart';

@Freezed(makeCollectionsUnmodifiable: false)
class CustomerAddressCache with _$CustomerAddressCache {
  const factory CustomerAddressCache({
    @Default([]) List<CustomerAddressEntity> shippingAddresses,
    CustomerAddressEntity? selectedAddress,
  }) = _CustomerAddressCache;
}
