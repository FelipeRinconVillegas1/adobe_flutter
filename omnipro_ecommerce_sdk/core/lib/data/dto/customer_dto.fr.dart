import 'package:core/data/dto/wishlist_dto.fr.dart';
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
    @Default([]) List<CustomerAddressDTO> addresses,
  }) = _CustomerDTO;

  factory CustomerDTO.fromJson(Map<String, Object?> json) => _$CustomerDTOFromJson(json);
}
