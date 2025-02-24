import 'package:freezed_annotation/freezed_annotation.dart';

part 'warehouse_address_dto.fr.freezed.dart';
part 'warehouse_address_dto.fr.g.dart';

@freezed
class WareHouseAddressDTO with _$WareHouseAddressDTO {
  const factory WareHouseAddressDTO({
    required dynamic id,
    required String code,
    required String name,
    required String address,
    required String schedule,
    required String telephone,
    required double latitude,
    required double longitude,
    @JsonKey(name: 'country_id') required String countryId,
    @JsonKey(name: 'state_id') required String stateId,
    @JsonKey(name: 'state_name') required String stateName,
    @JsonKey(name: 'city_id') required String cityId,
    @JsonKey(name: 'city_name') required String cityName,
    @JsonKey(name: 'zone_id') required String zoneId,
    @JsonKey(name: 'zone_name') required String zoneName,
    required dynamic status,
    @JsonKey(name: 'created_at') required String createdAt,
  }) = _WareHouseAddressDTO;

  factory WareHouseAddressDTO.fromJson(Map<String, Object?> json) => _$WareHouseAddressDTOFromJson(json);
}
