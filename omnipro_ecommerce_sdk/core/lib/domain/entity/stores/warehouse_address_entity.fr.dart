import 'package:freezed_annotation/freezed_annotation.dart';

part 'warehouse_address_entity.fr.freezed.dart';
part 'warehouse_address_entity.fr.g.dart';

@freezed
class WareHouseAddressEntity with _$WareHouseAddressEntity {
  const factory WareHouseAddressEntity({
    required dynamic id,
    required String name,
    required String code,
    required String address,
    required String schedule,
    required String telephone,
    required double latitude,
    required double longitude,
    required String countryId,
    required String stateId,
    required String stateName,
    required String cityId,
    required String cityName,
    required String zoneId,
    required String zoneName,
    required dynamic status,
    required String createdAt,
    required String postCode,
  }) = _WareHouseAddressEntity;

  factory WareHouseAddressEntity.fromJson(Map<String, Object?> json) => _$WareHouseAddressEntityFromJson(json);
}

class WareHouseWithDistance {
  WareHouseWithDistance(this.wareHouse, this.distance);

  final WareHouseAddressEntity wareHouse;
  final double? distance;
}
