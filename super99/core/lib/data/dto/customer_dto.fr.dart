import 'package:core/data/dto/custom_attribute_dto.fr.dart';
import 'package:core/data/dto/wishlist_dto.fr.dart';
import 'package:core/utils/custom_attribute_code.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'customer_address_dto.fr.dart';

part 'customer_dto.fr.freezed.dart';

part 'customer_dto.fr.g.dart';

@freezed
class CustomerDTO with _$CustomerDTO {
  @JsonSerializable(explicitToJson: true)
  const factory CustomerDTO({
    int? id,
    @JsonKey(name: 'firstname') required String firstName,
    @JsonKey(name: 'lastname') required String lastName,
    @JsonKey(name: 'email') required String email,
    @JsonKey(name: 'dob') required DateTime dateOfBirth,
    int? gender,
    @Default([]) List<WishListDTO> wishlists,
    @JsonKey(name: 'custom_attributes') required List<CustomAttributeDTO> customAttributes,
    @Default([]) List<CustomerAddressDTO> addresses,
  }) = _CustomerDTO;

  factory CustomerDTO.fromJson(Map<String, Object?> json) => _$CustomerDTOFromJson(json);
}

extension CustomerDTOX on CustomerDTO {
  Map<CustomAttributeCode, CustomAttributeDTO> get customAttributesRequired => customAttributes
      .where((element) => CustomAttributeCode.attributesRequired.map((e) => e.value).contains(element.code))
      .toList()
      .asMap()
      .map((key, value) =>
          MapEntry(CustomAttributeCode.values.firstWhere((element) => element.value == value.code), value));

  Map<CustomAttributeCode, CustomAttributeDTO> get customAttributesOptionals => customAttributes
      .where((element) => !CustomAttributeCode.attributesRequired.map((e) => e.value).contains(element.code))
      .toList()
      .asMap()
      .map((key, value) => MapEntry(CustomAttributeCode.values.firstWhere((element) => element.value == value.code,orElse: (){
        return CustomAttributeCode.none;
  }), value));
}
