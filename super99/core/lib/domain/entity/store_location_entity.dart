import 'package:freezed_annotation/freezed_annotation.dart';

part 'store_location_entity.freezed.dart';
part 'store_location_entity.g.dart';

@freezed
class StoreLocationEntity with _$StoreLocationEntity {
  @JsonSerializable(explicitToJson: true)
  const factory StoreLocationEntity({
    required int id,
    double? latitude,
    double? longitude,
    String? name,
    String? street,
    String? state,
    String? city,
    String? country,
    double? distance,
    String? postal,
    String? phoneOne,
    String? phoneTwo,
    String? webSite,
    String? facebook,
    String? twitter,
    String? email,
    String? description,
    String? url,
    @Default([]) List<StoreLocationTimeDataEntity> timeData,
    StoreLocationTimeDataEntity? timeDataToday,
  }) = _StoreLocationEntity;

  factory StoreLocationEntity.fromJson(Map<String, dynamic> json) => _$StoreLocationEntityFromJson(json);
}

@freezed
class StoreLocationTimeDataEntity with _$StoreLocationTimeDataEntity {
  const factory StoreLocationTimeDataEntity({
    required String from,
    required String to,
  }) = _StoreLocationTimeDataEntity;

  factory StoreLocationTimeDataEntity.fromJson(Map<String, dynamic> json) =>
      _$StoreLocationTimeDataEntityFromJson(json);
}
