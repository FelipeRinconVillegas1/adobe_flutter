import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_who_pickup_in_store_entity.fr.freezed.dart';
part 'user_who_pickup_in_store_entity.fr.g.dart';

enum WhoPickUp {
  @JsonKey(name: 'me')
  me,
  @JsonKey(name: 'someoneElse')
  someoneElse,
}

@freezed
class UserWhoPickupInStoreEntity with _$UserWhoPickupInStoreEntity {
  @JsonSerializable(explicitToJson: true)
  const factory UserWhoPickupInStoreEntity({
    @Default("") @JsonKey(name: 'full_name') String? fullName,
    @Default("") @JsonKey(name: 'telephone') String? telephone,
    @Default("") @JsonKey(name: 'identification') String? identification,
    @JsonKey(name: 'who_pick_up') required WhoPickUp whoPickUp,
  }) = _UserWhoPickupInStoreEntity;
  factory UserWhoPickupInStoreEntity.fromJson(Map<String, Object?> json) => _$UserWhoPickupInStoreEntityFromJson(json);
}
