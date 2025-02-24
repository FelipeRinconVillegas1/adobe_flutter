// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_who_pickup_in_store_entity.fr.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

UserWhoPickupInStoreEntity _$UserWhoPickupInStoreEntityFromJson(
  Map<String, dynamic> json,
) {
  return _UserWhoPickupInStoreEntity.fromJson(json);
}

/// @nodoc
mixin _$UserWhoPickupInStoreEntity {
  @JsonKey(name: 'full_name')
  String? get fullName => throw _privateConstructorUsedError;
  @JsonKey(name: 'telephone')
  String? get telephone => throw _privateConstructorUsedError;
  @JsonKey(name: 'identification')
  String? get identification => throw _privateConstructorUsedError;
  @JsonKey(name: 'who_pick_up')
  WhoPickUp get whoPickUp => throw _privateConstructorUsedError;

  /// Serializes this UserWhoPickupInStoreEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserWhoPickupInStoreEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserWhoPickupInStoreEntityCopyWith<UserWhoPickupInStoreEntity>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserWhoPickupInStoreEntityCopyWith<$Res> {
  factory $UserWhoPickupInStoreEntityCopyWith(
    UserWhoPickupInStoreEntity value,
    $Res Function(UserWhoPickupInStoreEntity) then,
  ) =
      _$UserWhoPickupInStoreEntityCopyWithImpl<
        $Res,
        UserWhoPickupInStoreEntity
      >;
  @useResult
  $Res call({
    @JsonKey(name: 'full_name') String? fullName,
    @JsonKey(name: 'telephone') String? telephone,
    @JsonKey(name: 'identification') String? identification,
    @JsonKey(name: 'who_pick_up') WhoPickUp whoPickUp,
  });
}

/// @nodoc
class _$UserWhoPickupInStoreEntityCopyWithImpl<
  $Res,
  $Val extends UserWhoPickupInStoreEntity
>
    implements $UserWhoPickupInStoreEntityCopyWith<$Res> {
  _$UserWhoPickupInStoreEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserWhoPickupInStoreEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fullName = freezed,
    Object? telephone = freezed,
    Object? identification = freezed,
    Object? whoPickUp = null,
  }) {
    return _then(
      _value.copyWith(
            fullName:
                freezed == fullName
                    ? _value.fullName
                    : fullName // ignore: cast_nullable_to_non_nullable
                        as String?,
            telephone:
                freezed == telephone
                    ? _value.telephone
                    : telephone // ignore: cast_nullable_to_non_nullable
                        as String?,
            identification:
                freezed == identification
                    ? _value.identification
                    : identification // ignore: cast_nullable_to_non_nullable
                        as String?,
            whoPickUp:
                null == whoPickUp
                    ? _value.whoPickUp
                    : whoPickUp // ignore: cast_nullable_to_non_nullable
                        as WhoPickUp,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$UserWhoPickupInStoreEntityImplCopyWith<$Res>
    implements $UserWhoPickupInStoreEntityCopyWith<$Res> {
  factory _$$UserWhoPickupInStoreEntityImplCopyWith(
    _$UserWhoPickupInStoreEntityImpl value,
    $Res Function(_$UserWhoPickupInStoreEntityImpl) then,
  ) = __$$UserWhoPickupInStoreEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'full_name') String? fullName,
    @JsonKey(name: 'telephone') String? telephone,
    @JsonKey(name: 'identification') String? identification,
    @JsonKey(name: 'who_pick_up') WhoPickUp whoPickUp,
  });
}

/// @nodoc
class __$$UserWhoPickupInStoreEntityImplCopyWithImpl<$Res>
    extends
        _$UserWhoPickupInStoreEntityCopyWithImpl<
          $Res,
          _$UserWhoPickupInStoreEntityImpl
        >
    implements _$$UserWhoPickupInStoreEntityImplCopyWith<$Res> {
  __$$UserWhoPickupInStoreEntityImplCopyWithImpl(
    _$UserWhoPickupInStoreEntityImpl _value,
    $Res Function(_$UserWhoPickupInStoreEntityImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UserWhoPickupInStoreEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fullName = freezed,
    Object? telephone = freezed,
    Object? identification = freezed,
    Object? whoPickUp = null,
  }) {
    return _then(
      _$UserWhoPickupInStoreEntityImpl(
        fullName:
            freezed == fullName
                ? _value.fullName
                : fullName // ignore: cast_nullable_to_non_nullable
                    as String?,
        telephone:
            freezed == telephone
                ? _value.telephone
                : telephone // ignore: cast_nullable_to_non_nullable
                    as String?,
        identification:
            freezed == identification
                ? _value.identification
                : identification // ignore: cast_nullable_to_non_nullable
                    as String?,
        whoPickUp:
            null == whoPickUp
                ? _value.whoPickUp
                : whoPickUp // ignore: cast_nullable_to_non_nullable
                    as WhoPickUp,
      ),
    );
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$UserWhoPickupInStoreEntityImpl implements _UserWhoPickupInStoreEntity {
  const _$UserWhoPickupInStoreEntityImpl({
    @JsonKey(name: 'full_name') this.fullName = "",
    @JsonKey(name: 'telephone') this.telephone = "",
    @JsonKey(name: 'identification') this.identification = "",
    @JsonKey(name: 'who_pick_up') required this.whoPickUp,
  });

  factory _$UserWhoPickupInStoreEntityImpl.fromJson(
    Map<String, dynamic> json,
  ) => _$$UserWhoPickupInStoreEntityImplFromJson(json);

  @override
  @JsonKey(name: 'full_name')
  final String? fullName;
  @override
  @JsonKey(name: 'telephone')
  final String? telephone;
  @override
  @JsonKey(name: 'identification')
  final String? identification;
  @override
  @JsonKey(name: 'who_pick_up')
  final WhoPickUp whoPickUp;

  @override
  String toString() {
    return 'UserWhoPickupInStoreEntity(fullName: $fullName, telephone: $telephone, identification: $identification, whoPickUp: $whoPickUp)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserWhoPickupInStoreEntityImpl &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.telephone, telephone) ||
                other.telephone == telephone) &&
            (identical(other.identification, identification) ||
                other.identification == identification) &&
            (identical(other.whoPickUp, whoPickUp) ||
                other.whoPickUp == whoPickUp));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, fullName, telephone, identification, whoPickUp);

  /// Create a copy of UserWhoPickupInStoreEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserWhoPickupInStoreEntityImplCopyWith<_$UserWhoPickupInStoreEntityImpl>
  get copyWith => __$$UserWhoPickupInStoreEntityImplCopyWithImpl<
    _$UserWhoPickupInStoreEntityImpl
  >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserWhoPickupInStoreEntityImplToJson(this);
  }
}

abstract class _UserWhoPickupInStoreEntity
    implements UserWhoPickupInStoreEntity {
  const factory _UserWhoPickupInStoreEntity({
    @JsonKey(name: 'full_name') final String? fullName,
    @JsonKey(name: 'telephone') final String? telephone,
    @JsonKey(name: 'identification') final String? identification,
    @JsonKey(name: 'who_pick_up') required final WhoPickUp whoPickUp,
  }) = _$UserWhoPickupInStoreEntityImpl;

  factory _UserWhoPickupInStoreEntity.fromJson(Map<String, dynamic> json) =
      _$UserWhoPickupInStoreEntityImpl.fromJson;

  @override
  @JsonKey(name: 'full_name')
  String? get fullName;
  @override
  @JsonKey(name: 'telephone')
  String? get telephone;
  @override
  @JsonKey(name: 'identification')
  String? get identification;
  @override
  @JsonKey(name: 'who_pick_up')
  WhoPickUp get whoPickUp;

  /// Create a copy of UserWhoPickupInStoreEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserWhoPickupInStoreEntityImplCopyWith<_$UserWhoPickupInStoreEntityImpl>
  get copyWith => throw _privateConstructorUsedError;
}
