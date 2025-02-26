import 'package:core/domain/entity/custom_attribute.dart';
import 'package:core/domain/entity/wishlist.fr.dart';
import 'package:core/utils/custom_attribute_code.dart';
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
    required Map<CustomAttributeCode, CustomAttribute> customAttributesRequired,
    @Default({}) Map<CustomAttributeCode, CustomAttribute> customAttributesOptionals,
    @Default([]) List<CustomerAddressEntity> addresses,
  }) = _Customer;
}

extension CustomerExtension on Customer {
  String cellphone() => customAttributesRequired[CustomAttributeCode.customeTelephone]!.value;

  String countryCode() => customAttributesRequired[CustomAttributeCode.customerAreaCodeTelephone]!.value;

  String province() => customAttributesRequired[CustomAttributeCode.provinceOfResidence]!.value;

  String completePhone() => '$countryCode${cellphone()}';

  String? purchasePreference() => customAttributesOptionals[CustomAttributeCode.purchasePreference]?.value;

  String? programKnowledge() => customAttributesOptionals[CustomAttributeCode.programKnowlege]?.value;

  String? maritalStatus() => customAttributesOptionals[CustomAttributeCode.maritalStatus]?.value;
}
