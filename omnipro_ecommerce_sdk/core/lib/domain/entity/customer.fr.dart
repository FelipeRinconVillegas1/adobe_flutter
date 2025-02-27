import 'package:core/domain/entity/wishlist.fr.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:omnipro_ecommerce_sdk/address/lib/domain/entity/customer_address_entity.dart';

part 'customer.fr.freezed.dart';

@freezed
class Customer with _$Customer {
  const factory Customer({
    int? id,
    @JsonKey(name: 'firstname') required String firstName,
    @JsonKey(name: 'lastname') required String lastName,
    required String email,
    @JsonKey(name: 'dob') required DateTime dateOfBirth,
    int? gender,
    @Default([]) List<WishList> wishlists,
    @Default([]) List<CustomerAddressEntity> addresses,
  }) = _Customer;
}
