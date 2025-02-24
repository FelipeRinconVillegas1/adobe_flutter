// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'store_location_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

StoreLocationEntity _$StoreLocationEntityFromJson(Map<String, dynamic> json) {
  return _StoreLocationEntity.fromJson(json);
}

/// @nodoc
mixin _$StoreLocationEntity {
  int get id => throw _privateConstructorUsedError;
  double? get latitude => throw _privateConstructorUsedError;
  double? get longitude => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get street => throw _privateConstructorUsedError;
  String? get state => throw _privateConstructorUsedError;
  String? get city => throw _privateConstructorUsedError;
  String? get country => throw _privateConstructorUsedError;
  double? get distance => throw _privateConstructorUsedError;
  String? get postal => throw _privateConstructorUsedError;
  String? get phoneOne => throw _privateConstructorUsedError;
  String? get phoneTwo => throw _privateConstructorUsedError;
  String? get webSite => throw _privateConstructorUsedError;
  String? get facebook => throw _privateConstructorUsedError;
  String? get twitter => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;
  List<StoreLocationTimeDataEntity> get timeData =>
      throw _privateConstructorUsedError;
  StoreLocationTimeDataEntity? get timeDataToday =>
      throw _privateConstructorUsedError;

  /// Serializes this StoreLocationEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StoreLocationEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StoreLocationEntityCopyWith<StoreLocationEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StoreLocationEntityCopyWith<$Res> {
  factory $StoreLocationEntityCopyWith(
    StoreLocationEntity value,
    $Res Function(StoreLocationEntity) then,
  ) = _$StoreLocationEntityCopyWithImpl<$Res, StoreLocationEntity>;
  @useResult
  $Res call({
    int id,
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
    List<StoreLocationTimeDataEntity> timeData,
    StoreLocationTimeDataEntity? timeDataToday,
  });

  $StoreLocationTimeDataEntityCopyWith<$Res>? get timeDataToday;
}

/// @nodoc
class _$StoreLocationEntityCopyWithImpl<$Res, $Val extends StoreLocationEntity>
    implements $StoreLocationEntityCopyWith<$Res> {
  _$StoreLocationEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StoreLocationEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? name = freezed,
    Object? street = freezed,
    Object? state = freezed,
    Object? city = freezed,
    Object? country = freezed,
    Object? distance = freezed,
    Object? postal = freezed,
    Object? phoneOne = freezed,
    Object? phoneTwo = freezed,
    Object? webSite = freezed,
    Object? facebook = freezed,
    Object? twitter = freezed,
    Object? email = freezed,
    Object? description = freezed,
    Object? url = freezed,
    Object? timeData = null,
    Object? timeDataToday = freezed,
  }) {
    return _then(
      _value.copyWith(
            id:
                null == id
                    ? _value.id
                    : id // ignore: cast_nullable_to_non_nullable
                        as int,
            latitude:
                freezed == latitude
                    ? _value.latitude
                    : latitude // ignore: cast_nullable_to_non_nullable
                        as double?,
            longitude:
                freezed == longitude
                    ? _value.longitude
                    : longitude // ignore: cast_nullable_to_non_nullable
                        as double?,
            name:
                freezed == name
                    ? _value.name
                    : name // ignore: cast_nullable_to_non_nullable
                        as String?,
            street:
                freezed == street
                    ? _value.street
                    : street // ignore: cast_nullable_to_non_nullable
                        as String?,
            state:
                freezed == state
                    ? _value.state
                    : state // ignore: cast_nullable_to_non_nullable
                        as String?,
            city:
                freezed == city
                    ? _value.city
                    : city // ignore: cast_nullable_to_non_nullable
                        as String?,
            country:
                freezed == country
                    ? _value.country
                    : country // ignore: cast_nullable_to_non_nullable
                        as String?,
            distance:
                freezed == distance
                    ? _value.distance
                    : distance // ignore: cast_nullable_to_non_nullable
                        as double?,
            postal:
                freezed == postal
                    ? _value.postal
                    : postal // ignore: cast_nullable_to_non_nullable
                        as String?,
            phoneOne:
                freezed == phoneOne
                    ? _value.phoneOne
                    : phoneOne // ignore: cast_nullable_to_non_nullable
                        as String?,
            phoneTwo:
                freezed == phoneTwo
                    ? _value.phoneTwo
                    : phoneTwo // ignore: cast_nullable_to_non_nullable
                        as String?,
            webSite:
                freezed == webSite
                    ? _value.webSite
                    : webSite // ignore: cast_nullable_to_non_nullable
                        as String?,
            facebook:
                freezed == facebook
                    ? _value.facebook
                    : facebook // ignore: cast_nullable_to_non_nullable
                        as String?,
            twitter:
                freezed == twitter
                    ? _value.twitter
                    : twitter // ignore: cast_nullable_to_non_nullable
                        as String?,
            email:
                freezed == email
                    ? _value.email
                    : email // ignore: cast_nullable_to_non_nullable
                        as String?,
            description:
                freezed == description
                    ? _value.description
                    : description // ignore: cast_nullable_to_non_nullable
                        as String?,
            url:
                freezed == url
                    ? _value.url
                    : url // ignore: cast_nullable_to_non_nullable
                        as String?,
            timeData:
                null == timeData
                    ? _value.timeData
                    : timeData // ignore: cast_nullable_to_non_nullable
                        as List<StoreLocationTimeDataEntity>,
            timeDataToday:
                freezed == timeDataToday
                    ? _value.timeDataToday
                    : timeDataToday // ignore: cast_nullable_to_non_nullable
                        as StoreLocationTimeDataEntity?,
          )
          as $Val,
    );
  }

  /// Create a copy of StoreLocationEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StoreLocationTimeDataEntityCopyWith<$Res>? get timeDataToday {
    if (_value.timeDataToday == null) {
      return null;
    }

    return $StoreLocationTimeDataEntityCopyWith<$Res>(_value.timeDataToday!, (
      value,
    ) {
      return _then(_value.copyWith(timeDataToday: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$StoreLocationEntityImplCopyWith<$Res>
    implements $StoreLocationEntityCopyWith<$Res> {
  factory _$$StoreLocationEntityImplCopyWith(
    _$StoreLocationEntityImpl value,
    $Res Function(_$StoreLocationEntityImpl) then,
  ) = __$$StoreLocationEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int id,
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
    List<StoreLocationTimeDataEntity> timeData,
    StoreLocationTimeDataEntity? timeDataToday,
  });

  @override
  $StoreLocationTimeDataEntityCopyWith<$Res>? get timeDataToday;
}

/// @nodoc
class __$$StoreLocationEntityImplCopyWithImpl<$Res>
    extends _$StoreLocationEntityCopyWithImpl<$Res, _$StoreLocationEntityImpl>
    implements _$$StoreLocationEntityImplCopyWith<$Res> {
  __$$StoreLocationEntityImplCopyWithImpl(
    _$StoreLocationEntityImpl _value,
    $Res Function(_$StoreLocationEntityImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of StoreLocationEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? name = freezed,
    Object? street = freezed,
    Object? state = freezed,
    Object? city = freezed,
    Object? country = freezed,
    Object? distance = freezed,
    Object? postal = freezed,
    Object? phoneOne = freezed,
    Object? phoneTwo = freezed,
    Object? webSite = freezed,
    Object? facebook = freezed,
    Object? twitter = freezed,
    Object? email = freezed,
    Object? description = freezed,
    Object? url = freezed,
    Object? timeData = null,
    Object? timeDataToday = freezed,
  }) {
    return _then(
      _$StoreLocationEntityImpl(
        id:
            null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                    as int,
        latitude:
            freezed == latitude
                ? _value.latitude
                : latitude // ignore: cast_nullable_to_non_nullable
                    as double?,
        longitude:
            freezed == longitude
                ? _value.longitude
                : longitude // ignore: cast_nullable_to_non_nullable
                    as double?,
        name:
            freezed == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                    as String?,
        street:
            freezed == street
                ? _value.street
                : street // ignore: cast_nullable_to_non_nullable
                    as String?,
        state:
            freezed == state
                ? _value.state
                : state // ignore: cast_nullable_to_non_nullable
                    as String?,
        city:
            freezed == city
                ? _value.city
                : city // ignore: cast_nullable_to_non_nullable
                    as String?,
        country:
            freezed == country
                ? _value.country
                : country // ignore: cast_nullable_to_non_nullable
                    as String?,
        distance:
            freezed == distance
                ? _value.distance
                : distance // ignore: cast_nullable_to_non_nullable
                    as double?,
        postal:
            freezed == postal
                ? _value.postal
                : postal // ignore: cast_nullable_to_non_nullable
                    as String?,
        phoneOne:
            freezed == phoneOne
                ? _value.phoneOne
                : phoneOne // ignore: cast_nullable_to_non_nullable
                    as String?,
        phoneTwo:
            freezed == phoneTwo
                ? _value.phoneTwo
                : phoneTwo // ignore: cast_nullable_to_non_nullable
                    as String?,
        webSite:
            freezed == webSite
                ? _value.webSite
                : webSite // ignore: cast_nullable_to_non_nullable
                    as String?,
        facebook:
            freezed == facebook
                ? _value.facebook
                : facebook // ignore: cast_nullable_to_non_nullable
                    as String?,
        twitter:
            freezed == twitter
                ? _value.twitter
                : twitter // ignore: cast_nullable_to_non_nullable
                    as String?,
        email:
            freezed == email
                ? _value.email
                : email // ignore: cast_nullable_to_non_nullable
                    as String?,
        description:
            freezed == description
                ? _value.description
                : description // ignore: cast_nullable_to_non_nullable
                    as String?,
        url:
            freezed == url
                ? _value.url
                : url // ignore: cast_nullable_to_non_nullable
                    as String?,
        timeData:
            null == timeData
                ? _value._timeData
                : timeData // ignore: cast_nullable_to_non_nullable
                    as List<StoreLocationTimeDataEntity>,
        timeDataToday:
            freezed == timeDataToday
                ? _value.timeDataToday
                : timeDataToday // ignore: cast_nullable_to_non_nullable
                    as StoreLocationTimeDataEntity?,
      ),
    );
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$StoreLocationEntityImpl implements _StoreLocationEntity {
  const _$StoreLocationEntityImpl({
    required this.id,
    this.latitude,
    this.longitude,
    this.name,
    this.street,
    this.state,
    this.city,
    this.country,
    this.distance,
    this.postal,
    this.phoneOne,
    this.phoneTwo,
    this.webSite,
    this.facebook,
    this.twitter,
    this.email,
    this.description,
    this.url,
    final List<StoreLocationTimeDataEntity> timeData = const [],
    this.timeDataToday,
  }) : _timeData = timeData;

  factory _$StoreLocationEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$StoreLocationEntityImplFromJson(json);

  @override
  final int id;
  @override
  final double? latitude;
  @override
  final double? longitude;
  @override
  final String? name;
  @override
  final String? street;
  @override
  final String? state;
  @override
  final String? city;
  @override
  final String? country;
  @override
  final double? distance;
  @override
  final String? postal;
  @override
  final String? phoneOne;
  @override
  final String? phoneTwo;
  @override
  final String? webSite;
  @override
  final String? facebook;
  @override
  final String? twitter;
  @override
  final String? email;
  @override
  final String? description;
  @override
  final String? url;
  final List<StoreLocationTimeDataEntity> _timeData;
  @override
  @JsonKey()
  List<StoreLocationTimeDataEntity> get timeData {
    if (_timeData is EqualUnmodifiableListView) return _timeData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_timeData);
  }

  @override
  final StoreLocationTimeDataEntity? timeDataToday;

  @override
  String toString() {
    return 'StoreLocationEntity(id: $id, latitude: $latitude, longitude: $longitude, name: $name, street: $street, state: $state, city: $city, country: $country, distance: $distance, postal: $postal, phoneOne: $phoneOne, phoneTwo: $phoneTwo, webSite: $webSite, facebook: $facebook, twitter: $twitter, email: $email, description: $description, url: $url, timeData: $timeData, timeDataToday: $timeDataToday)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StoreLocationEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.street, street) || other.street == street) &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.distance, distance) ||
                other.distance == distance) &&
            (identical(other.postal, postal) || other.postal == postal) &&
            (identical(other.phoneOne, phoneOne) ||
                other.phoneOne == phoneOne) &&
            (identical(other.phoneTwo, phoneTwo) ||
                other.phoneTwo == phoneTwo) &&
            (identical(other.webSite, webSite) || other.webSite == webSite) &&
            (identical(other.facebook, facebook) ||
                other.facebook == facebook) &&
            (identical(other.twitter, twitter) || other.twitter == twitter) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.url, url) || other.url == url) &&
            const DeepCollectionEquality().equals(other._timeData, _timeData) &&
            (identical(other.timeDataToday, timeDataToday) ||
                other.timeDataToday == timeDataToday));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
    runtimeType,
    id,
    latitude,
    longitude,
    name,
    street,
    state,
    city,
    country,
    distance,
    postal,
    phoneOne,
    phoneTwo,
    webSite,
    facebook,
    twitter,
    email,
    description,
    url,
    const DeepCollectionEquality().hash(_timeData),
    timeDataToday,
  ]);

  /// Create a copy of StoreLocationEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StoreLocationEntityImplCopyWith<_$StoreLocationEntityImpl> get copyWith =>
      __$$StoreLocationEntityImplCopyWithImpl<_$StoreLocationEntityImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$StoreLocationEntityImplToJson(this);
  }
}

abstract class _StoreLocationEntity implements StoreLocationEntity {
  const factory _StoreLocationEntity({
    required final int id,
    final double? latitude,
    final double? longitude,
    final String? name,
    final String? street,
    final String? state,
    final String? city,
    final String? country,
    final double? distance,
    final String? postal,
    final String? phoneOne,
    final String? phoneTwo,
    final String? webSite,
    final String? facebook,
    final String? twitter,
    final String? email,
    final String? description,
    final String? url,
    final List<StoreLocationTimeDataEntity> timeData,
    final StoreLocationTimeDataEntity? timeDataToday,
  }) = _$StoreLocationEntityImpl;

  factory _StoreLocationEntity.fromJson(Map<String, dynamic> json) =
      _$StoreLocationEntityImpl.fromJson;

  @override
  int get id;
  @override
  double? get latitude;
  @override
  double? get longitude;
  @override
  String? get name;
  @override
  String? get street;
  @override
  String? get state;
  @override
  String? get city;
  @override
  String? get country;
  @override
  double? get distance;
  @override
  String? get postal;
  @override
  String? get phoneOne;
  @override
  String? get phoneTwo;
  @override
  String? get webSite;
  @override
  String? get facebook;
  @override
  String? get twitter;
  @override
  String? get email;
  @override
  String? get description;
  @override
  String? get url;
  @override
  List<StoreLocationTimeDataEntity> get timeData;
  @override
  StoreLocationTimeDataEntity? get timeDataToday;

  /// Create a copy of StoreLocationEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StoreLocationEntityImplCopyWith<_$StoreLocationEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

StoreLocationTimeDataEntity _$StoreLocationTimeDataEntityFromJson(
  Map<String, dynamic> json,
) {
  return _StoreLocationTimeDataEntity.fromJson(json);
}

/// @nodoc
mixin _$StoreLocationTimeDataEntity {
  String get from => throw _privateConstructorUsedError;
  String get to => throw _privateConstructorUsedError;

  /// Serializes this StoreLocationTimeDataEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StoreLocationTimeDataEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StoreLocationTimeDataEntityCopyWith<StoreLocationTimeDataEntity>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StoreLocationTimeDataEntityCopyWith<$Res> {
  factory $StoreLocationTimeDataEntityCopyWith(
    StoreLocationTimeDataEntity value,
    $Res Function(StoreLocationTimeDataEntity) then,
  ) =
      _$StoreLocationTimeDataEntityCopyWithImpl<
        $Res,
        StoreLocationTimeDataEntity
      >;
  @useResult
  $Res call({String from, String to});
}

/// @nodoc
class _$StoreLocationTimeDataEntityCopyWithImpl<
  $Res,
  $Val extends StoreLocationTimeDataEntity
>
    implements $StoreLocationTimeDataEntityCopyWith<$Res> {
  _$StoreLocationTimeDataEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StoreLocationTimeDataEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? from = null, Object? to = null}) {
    return _then(
      _value.copyWith(
            from:
                null == from
                    ? _value.from
                    : from // ignore: cast_nullable_to_non_nullable
                        as String,
            to:
                null == to
                    ? _value.to
                    : to // ignore: cast_nullable_to_non_nullable
                        as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$StoreLocationTimeDataEntityImplCopyWith<$Res>
    implements $StoreLocationTimeDataEntityCopyWith<$Res> {
  factory _$$StoreLocationTimeDataEntityImplCopyWith(
    _$StoreLocationTimeDataEntityImpl value,
    $Res Function(_$StoreLocationTimeDataEntityImpl) then,
  ) = __$$StoreLocationTimeDataEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String from, String to});
}

/// @nodoc
class __$$StoreLocationTimeDataEntityImplCopyWithImpl<$Res>
    extends
        _$StoreLocationTimeDataEntityCopyWithImpl<
          $Res,
          _$StoreLocationTimeDataEntityImpl
        >
    implements _$$StoreLocationTimeDataEntityImplCopyWith<$Res> {
  __$$StoreLocationTimeDataEntityImplCopyWithImpl(
    _$StoreLocationTimeDataEntityImpl _value,
    $Res Function(_$StoreLocationTimeDataEntityImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of StoreLocationTimeDataEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? from = null, Object? to = null}) {
    return _then(
      _$StoreLocationTimeDataEntityImpl(
        from:
            null == from
                ? _value.from
                : from // ignore: cast_nullable_to_non_nullable
                    as String,
        to:
            null == to
                ? _value.to
                : to // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$StoreLocationTimeDataEntityImpl
    implements _StoreLocationTimeDataEntity {
  const _$StoreLocationTimeDataEntityImpl({
    required this.from,
    required this.to,
  });

  factory _$StoreLocationTimeDataEntityImpl.fromJson(
    Map<String, dynamic> json,
  ) => _$$StoreLocationTimeDataEntityImplFromJson(json);

  @override
  final String from;
  @override
  final String to;

  @override
  String toString() {
    return 'StoreLocationTimeDataEntity(from: $from, to: $to)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StoreLocationTimeDataEntityImpl &&
            (identical(other.from, from) || other.from == from) &&
            (identical(other.to, to) || other.to == to));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, from, to);

  /// Create a copy of StoreLocationTimeDataEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StoreLocationTimeDataEntityImplCopyWith<_$StoreLocationTimeDataEntityImpl>
  get copyWith => __$$StoreLocationTimeDataEntityImplCopyWithImpl<
    _$StoreLocationTimeDataEntityImpl
  >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StoreLocationTimeDataEntityImplToJson(this);
  }
}

abstract class _StoreLocationTimeDataEntity
    implements StoreLocationTimeDataEntity {
  const factory _StoreLocationTimeDataEntity({
    required final String from,
    required final String to,
  }) = _$StoreLocationTimeDataEntityImpl;

  factory _StoreLocationTimeDataEntity.fromJson(Map<String, dynamic> json) =
      _$StoreLocationTimeDataEntityImpl.fromJson;

  @override
  String get from;
  @override
  String get to;

  /// Create a copy of StoreLocationTimeDataEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StoreLocationTimeDataEntityImplCopyWith<_$StoreLocationTimeDataEntityImpl>
  get copyWith => throw _privateConstructorUsedError;
}
