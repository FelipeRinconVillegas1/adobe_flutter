// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'nearby_store.fr.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

NearbyStoreDTO _$NearbyStoreDTOFromJson(Map<String, dynamic> json) {
  return _NearbyStoreDTO.fromJson(json);
}

/// @nodoc
mixin _$NearbyStoreDTO {
  int get id => throw _privateConstructorUsedError;
  String? get latitude => throw _privateConstructorUsedError;
  String? get longitude => throw _privateConstructorUsedError;
  String? get country => throw _privateConstructorUsedError;
  double? get distance => throw _privateConstructorUsedError;
  String? get postal => throw _privateConstructorUsedError;
  @JsonKey(name: 'phone1')
  String? get phoneOne => throw _privateConstructorUsedError;
  @JsonKey(name: 'phone2')
  String? get phoneTwo => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NearbyStoreDTOCopyWith<NearbyStoreDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NearbyStoreDTOCopyWith<$Res> {
  factory $NearbyStoreDTOCopyWith(
          NearbyStoreDTO value, $Res Function(NearbyStoreDTO) then) =
      _$NearbyStoreDTOCopyWithImpl<$Res, NearbyStoreDTO>;
  @useResult
  $Res call(
      {int id,
      String? latitude,
      String? longitude,
      String? country,
      double? distance,
      String? postal,
      @JsonKey(name: 'phone1') String? phoneOne,
      @JsonKey(name: 'phone2') String? phoneTwo});
}

/// @nodoc
class _$NearbyStoreDTOCopyWithImpl<$Res, $Val extends NearbyStoreDTO>
    implements $NearbyStoreDTOCopyWith<$Res> {
  _$NearbyStoreDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? country = freezed,
    Object? distance = freezed,
    Object? postal = freezed,
    Object? phoneOne = freezed,
    Object? phoneTwo = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as String?,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      distance: freezed == distance
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as double?,
      postal: freezed == postal
          ? _value.postal
          : postal // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneOne: freezed == phoneOne
          ? _value.phoneOne
          : phoneOne // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneTwo: freezed == phoneTwo
          ? _value.phoneTwo
          : phoneTwo // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NearbyStoreDTOImplCopyWith<$Res>
    implements $NearbyStoreDTOCopyWith<$Res> {
  factory _$$NearbyStoreDTOImplCopyWith(_$NearbyStoreDTOImpl value,
          $Res Function(_$NearbyStoreDTOImpl) then) =
      __$$NearbyStoreDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String? latitude,
      String? longitude,
      String? country,
      double? distance,
      String? postal,
      @JsonKey(name: 'phone1') String? phoneOne,
      @JsonKey(name: 'phone2') String? phoneTwo});
}

/// @nodoc
class __$$NearbyStoreDTOImplCopyWithImpl<$Res>
    extends _$NearbyStoreDTOCopyWithImpl<$Res, _$NearbyStoreDTOImpl>
    implements _$$NearbyStoreDTOImplCopyWith<$Res> {
  __$$NearbyStoreDTOImplCopyWithImpl(
      _$NearbyStoreDTOImpl _value, $Res Function(_$NearbyStoreDTOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? country = freezed,
    Object? distance = freezed,
    Object? postal = freezed,
    Object? phoneOne = freezed,
    Object? phoneTwo = freezed,
  }) {
    return _then(_$NearbyStoreDTOImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as String?,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      distance: freezed == distance
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as double?,
      postal: freezed == postal
          ? _value.postal
          : postal // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneOne: freezed == phoneOne
          ? _value.phoneOne
          : phoneOne // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneTwo: freezed == phoneTwo
          ? _value.phoneTwo
          : phoneTwo // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NearbyStoreDTOImpl implements _NearbyStoreDTO {
  const _$NearbyStoreDTOImpl(
      {required this.id,
      this.latitude,
      this.longitude,
      this.country,
      this.distance,
      this.postal,
      @JsonKey(name: 'phone1') this.phoneOne,
      @JsonKey(name: 'phone2') this.phoneTwo});

  factory _$NearbyStoreDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$NearbyStoreDTOImplFromJson(json);

  @override
  final int id;
  @override
  final String? latitude;
  @override
  final String? longitude;
  @override
  final String? country;
  @override
  final double? distance;
  @override
  final String? postal;
  @override
  @JsonKey(name: 'phone1')
  final String? phoneOne;
  @override
  @JsonKey(name: 'phone2')
  final String? phoneTwo;

  @override
  String toString() {
    return 'NearbyStoreDTO(id: $id, latitude: $latitude, longitude: $longitude, country: $country, distance: $distance, postal: $postal, phoneOne: $phoneOne, phoneTwo: $phoneTwo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NearbyStoreDTOImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.distance, distance) ||
                other.distance == distance) &&
            (identical(other.postal, postal) || other.postal == postal) &&
            (identical(other.phoneOne, phoneOne) ||
                other.phoneOne == phoneOne) &&
            (identical(other.phoneTwo, phoneTwo) ||
                other.phoneTwo == phoneTwo));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, latitude, longitude, country,
      distance, postal, phoneOne, phoneTwo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NearbyStoreDTOImplCopyWith<_$NearbyStoreDTOImpl> get copyWith =>
      __$$NearbyStoreDTOImplCopyWithImpl<_$NearbyStoreDTOImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NearbyStoreDTOImplToJson(
      this,
    );
  }
}

abstract class _NearbyStoreDTO implements NearbyStoreDTO {
  const factory _NearbyStoreDTO(
      {required final int id,
      final String? latitude,
      final String? longitude,
      final String? country,
      final double? distance,
      final String? postal,
      @JsonKey(name: 'phone1') final String? phoneOne,
      @JsonKey(name: 'phone2') final String? phoneTwo}) = _$NearbyStoreDTOImpl;

  factory _NearbyStoreDTO.fromJson(Map<String, dynamic> json) =
      _$NearbyStoreDTOImpl.fromJson;

  @override
  int get id;
  @override
  String? get latitude;
  @override
  String? get longitude;
  @override
  String? get country;
  @override
  double? get distance;
  @override
  String? get postal;
  @override
  @JsonKey(name: 'phone1')
  String? get phoneOne;
  @override
  @JsonKey(name: 'phone2')
  String? get phoneTwo;
  @override
  @JsonKey(ignore: true)
  _$$NearbyStoreDTOImplCopyWith<_$NearbyStoreDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
