import 'dart:convert';
import 'package:core/utils/extension.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'customer_address_dto.fr.freezed.dart';
part 'customer_address_dto.fr.g.dart';

@freezed
class CustomerAddressDTO with _$CustomerAddressDTO {
  @JsonSerializable(explicitToJson: true)
  const factory CustomerAddressDTO({
    @Default(-1) int id,
    required String firstname,
    required String lastname,
    required RegionDTO region,
    @JsonKey(name: 'country_code') required String countryCode,
    @Default([]) List<String> street,
    required String telephone,
    required String city,
    @JsonKey(name: 'default_shipping', defaultValue: false) bool? defaultShipping,
    @JsonKey(name: 'default_billing', defaultValue: false) bool? defaultBilling,
    String? postcode,
  }) = _CustomerAddressDTO;

  factory CustomerAddressDTO.fromJson(Map<String, Object?> json) => _$CustomerAddressDTOFromJson(json);
}

extension ToMutation on CustomerAddressDTO {
  String toMutation() => toMutationHelper(jsonEncode(toJson()));
}

@freezed
class RegionDTO with _$RegionDTO {
  const factory RegionDTO({
    required String region,
    @JsonKey(name: 'region_code') @Default('') String code,
    @JsonKey(name: 'region_id') required int regionId,
  }) = _RegionDTO;

  factory RegionDTO.fromJson(Map<String, Object?> json) => _$RegionDTOFromJson(json);
}