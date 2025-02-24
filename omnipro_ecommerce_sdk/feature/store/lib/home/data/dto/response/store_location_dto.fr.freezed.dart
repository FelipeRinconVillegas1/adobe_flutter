// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'store_location_dto.fr.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

StoreLocationDTO _$StoreLocationDTOFromJson(Map<String, dynamic> json) {
  return _StoreLocationDTO.fromJson(json);
}

/// @nodoc
mixin _$StoreLocationDTO {
  int get id => throw _privateConstructorUsedError;
  String? get latitude => throw _privateConstructorUsedError;
  String? get longitude => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get street => throw _privateConstructorUsedError;
  String? get state => throw _privateConstructorUsedError;
  String? get city => throw _privateConstructorUsedError;
  String? get country => throw _privateConstructorUsedError;
  double? get distance => throw _privateConstructorUsedError;
  String? get postal => throw _privateConstructorUsedError;
  @JsonKey(name: 'phone1')
  String? get phoneOne => throw _privateConstructorUsedError;
  @JsonKey(name: 'phone2')
  String? get phoneTwo => throw _privateConstructorUsedError;
  @JsonKey(name: 'web')
  String? get webSite => throw _privateConstructorUsedError;
  String? get facebook => throw _privateConstructorUsedError;
  String? get twitter => throw _privateConstructorUsedError;
  String? get mail => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;
  List<StoreTimeDataDTO> get timeData => throw _privateConstructorUsedError;
  StoreTimeDataDTO? get timeDataToday => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StoreLocationDTOCopyWith<StoreLocationDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StoreLocationDTOCopyWith<$Res> {
  factory $StoreLocationDTOCopyWith(
          StoreLocationDTO value, $Res Function(StoreLocationDTO) then) =
      _$StoreLocationDTOCopyWithImpl<$Res, StoreLocationDTO>;
  @useResult
  $Res call(
      {int id,
      String? latitude,
      String? longitude,
      String? name,
      String? street,
      String? state,
      String? city,
      String? country,
      double? distance,
      String? postal,
      @JsonKey(name: 'phone1') String? phoneOne,
      @JsonKey(name: 'phone2') String? phoneTwo,
      @JsonKey(name: 'web') String? webSite,
      String? facebook,
      String? twitter,
      String? mail,
      String? description,
      String? url,
      List<StoreTimeDataDTO> timeData,
      StoreTimeDataDTO? timeDataToday});

  $StoreTimeDataDTOCopyWith<$Res>? get timeDataToday;
}

/// @nodoc
class _$StoreLocationDTOCopyWithImpl<$Res, $Val extends StoreLocationDTO>
    implements $StoreLocationDTOCopyWith<$Res> {
  _$StoreLocationDTOCopyWithImpl(this._value, this._then);

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
    Object? mail = freezed,
    Object? description = freezed,
    Object? url = freezed,
    Object? timeData = null,
    Object? timeDataToday = freezed,
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
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      street: freezed == street
          ? _value.street
          : street // ignore: cast_nullable_to_non_nullable
              as String?,
      state: freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
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
      webSite: freezed == webSite
          ? _value.webSite
          : webSite // ignore: cast_nullable_to_non_nullable
              as String?,
      facebook: freezed == facebook
          ? _value.facebook
          : facebook // ignore: cast_nullable_to_non_nullable
              as String?,
      twitter: freezed == twitter
          ? _value.twitter
          : twitter // ignore: cast_nullable_to_non_nullable
              as String?,
      mail: freezed == mail
          ? _value.mail
          : mail // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      timeData: null == timeData
          ? _value.timeData
          : timeData // ignore: cast_nullable_to_non_nullable
              as List<StoreTimeDataDTO>,
      timeDataToday: freezed == timeDataToday
          ? _value.timeDataToday
          : timeDataToday // ignore: cast_nullable_to_non_nullable
              as StoreTimeDataDTO?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $StoreTimeDataDTOCopyWith<$Res>? get timeDataToday {
    if (_value.timeDataToday == null) {
      return null;
    }

    return $StoreTimeDataDTOCopyWith<$Res>(_value.timeDataToday!, (value) {
      return _then(_value.copyWith(timeDataToday: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$StoreLocationDTOImplCopyWith<$Res>
    implements $StoreLocationDTOCopyWith<$Res> {
  factory _$$StoreLocationDTOImplCopyWith(_$StoreLocationDTOImpl value,
          $Res Function(_$StoreLocationDTOImpl) then) =
      __$$StoreLocationDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String? latitude,
      String? longitude,
      String? name,
      String? street,
      String? state,
      String? city,
      String? country,
      double? distance,
      String? postal,
      @JsonKey(name: 'phone1') String? phoneOne,
      @JsonKey(name: 'phone2') String? phoneTwo,
      @JsonKey(name: 'web') String? webSite,
      String? facebook,
      String? twitter,
      String? mail,
      String? description,
      String? url,
      List<StoreTimeDataDTO> timeData,
      StoreTimeDataDTO? timeDataToday});

  @override
  $StoreTimeDataDTOCopyWith<$Res>? get timeDataToday;
}

/// @nodoc
class __$$StoreLocationDTOImplCopyWithImpl<$Res>
    extends _$StoreLocationDTOCopyWithImpl<$Res, _$StoreLocationDTOImpl>
    implements _$$StoreLocationDTOImplCopyWith<$Res> {
  __$$StoreLocationDTOImplCopyWithImpl(_$StoreLocationDTOImpl _value,
      $Res Function(_$StoreLocationDTOImpl) _then)
      : super(_value, _then);

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
    Object? mail = freezed,
    Object? description = freezed,
    Object? url = freezed,
    Object? timeData = null,
    Object? timeDataToday = freezed,
  }) {
    return _then(_$StoreLocationDTOImpl(
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
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      street: freezed == street
          ? _value.street
          : street // ignore: cast_nullable_to_non_nullable
              as String?,
      state: freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
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
      webSite: freezed == webSite
          ? _value.webSite
          : webSite // ignore: cast_nullable_to_non_nullable
              as String?,
      facebook: freezed == facebook
          ? _value.facebook
          : facebook // ignore: cast_nullable_to_non_nullable
              as String?,
      twitter: freezed == twitter
          ? _value.twitter
          : twitter // ignore: cast_nullable_to_non_nullable
              as String?,
      mail: freezed == mail
          ? _value.mail
          : mail // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      timeData: null == timeData
          ? _value._timeData
          : timeData // ignore: cast_nullable_to_non_nullable
              as List<StoreTimeDataDTO>,
      timeDataToday: freezed == timeDataToday
          ? _value.timeDataToday
          : timeDataToday // ignore: cast_nullable_to_non_nullable
              as StoreTimeDataDTO?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StoreLocationDTOImpl implements _StoreLocationDTO {
  const _$StoreLocationDTOImpl(
      {required this.id,
      this.latitude,
      this.longitude,
      this.name,
      this.street,
      this.state,
      this.city,
      this.country,
      this.distance,
      this.postal,
      @JsonKey(name: 'phone1') this.phoneOne,
      @JsonKey(name: 'phone2') this.phoneTwo,
      @JsonKey(name: 'web') this.webSite,
      this.facebook,
      this.twitter,
      this.mail,
      this.description,
      this.url,
      final List<StoreTimeDataDTO> timeData = const [],
      this.timeDataToday})
      : _timeData = timeData;

  factory _$StoreLocationDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$StoreLocationDTOImplFromJson(json);

  @override
  final int id;
  @override
  final String? latitude;
  @override
  final String? longitude;
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
  @JsonKey(name: 'phone1')
  final String? phoneOne;
  @override
  @JsonKey(name: 'phone2')
  final String? phoneTwo;
  @override
  @JsonKey(name: 'web')
  final String? webSite;
  @override
  final String? facebook;
  @override
  final String? twitter;
  @override
  final String? mail;
  @override
  final String? description;
  @override
  final String? url;
  final List<StoreTimeDataDTO> _timeData;
  @override
  @JsonKey()
  List<StoreTimeDataDTO> get timeData {
    if (_timeData is EqualUnmodifiableListView) return _timeData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_timeData);
  }

  @override
  final StoreTimeDataDTO? timeDataToday;

  @override
  String toString() {
    return 'StoreLocationDTO(id: $id, latitude: $latitude, longitude: $longitude, name: $name, street: $street, state: $state, city: $city, country: $country, distance: $distance, postal: $postal, phoneOne: $phoneOne, phoneTwo: $phoneTwo, webSite: $webSite, facebook: $facebook, twitter: $twitter, mail: $mail, description: $description, url: $url, timeData: $timeData, timeDataToday: $timeDataToday)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StoreLocationDTOImpl &&
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
            (identical(other.mail, mail) || other.mail == mail) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.url, url) || other.url == url) &&
            const DeepCollectionEquality().equals(other._timeData, _timeData) &&
            (identical(other.timeDataToday, timeDataToday) ||
                other.timeDataToday == timeDataToday));
  }

  @JsonKey(ignore: true)
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
        mail,
        description,
        url,
        const DeepCollectionEquality().hash(_timeData),
        timeDataToday
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StoreLocationDTOImplCopyWith<_$StoreLocationDTOImpl> get copyWith =>
      __$$StoreLocationDTOImplCopyWithImpl<_$StoreLocationDTOImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StoreLocationDTOImplToJson(
      this,
    );
  }
}

abstract class _StoreLocationDTO implements StoreLocationDTO {
  const factory _StoreLocationDTO(
      {required final int id,
      final String? latitude,
      final String? longitude,
      final String? name,
      final String? street,
      final String? state,
      final String? city,
      final String? country,
      final double? distance,
      final String? postal,
      @JsonKey(name: 'phone1') final String? phoneOne,
      @JsonKey(name: 'phone2') final String? phoneTwo,
      @JsonKey(name: 'web') final String? webSite,
      final String? facebook,
      final String? twitter,
      final String? mail,
      final String? description,
      final String? url,
      final List<StoreTimeDataDTO> timeData,
      final StoreTimeDataDTO? timeDataToday}) = _$StoreLocationDTOImpl;

  factory _StoreLocationDTO.fromJson(Map<String, dynamic> json) =
      _$StoreLocationDTOImpl.fromJson;

  @override
  int get id;
  @override
  String? get latitude;
  @override
  String? get longitude;
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
  @JsonKey(name: 'phone1')
  String? get phoneOne;
  @override
  @JsonKey(name: 'phone2')
  String? get phoneTwo;
  @override
  @JsonKey(name: 'web')
  String? get webSite;
  @override
  String? get facebook;
  @override
  String? get twitter;
  @override
  String? get mail;
  @override
  String? get description;
  @override
  String? get url;
  @override
  List<StoreTimeDataDTO> get timeData;
  @override
  StoreTimeDataDTO? get timeDataToday;
  @override
  @JsonKey(ignore: true)
  _$$StoreLocationDTOImplCopyWith<_$StoreLocationDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

StoreTimeDataDTO _$StoreTimeDataDTOFromJson(Map<String, dynamic> json) {
  return _StoreTimeDataDTO.fromJson(json);
}

/// @nodoc
mixin _$StoreTimeDataDTO {
  List<String> get from => throw _privateConstructorUsedError;
  List<String> get to => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StoreTimeDataDTOCopyWith<StoreTimeDataDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StoreTimeDataDTOCopyWith<$Res> {
  factory $StoreTimeDataDTOCopyWith(
          StoreTimeDataDTO value, $Res Function(StoreTimeDataDTO) then) =
      _$StoreTimeDataDTOCopyWithImpl<$Res, StoreTimeDataDTO>;
  @useResult
  $Res call({List<String> from, List<String> to});
}

/// @nodoc
class _$StoreTimeDataDTOCopyWithImpl<$Res, $Val extends StoreTimeDataDTO>
    implements $StoreTimeDataDTOCopyWith<$Res> {
  _$StoreTimeDataDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? from = null,
    Object? to = null,
  }) {
    return _then(_value.copyWith(
      from: null == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as List<String>,
      to: null == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StoreTimeDataDTOImplCopyWith<$Res>
    implements $StoreTimeDataDTOCopyWith<$Res> {
  factory _$$StoreTimeDataDTOImplCopyWith(_$StoreTimeDataDTOImpl value,
          $Res Function(_$StoreTimeDataDTOImpl) then) =
      __$$StoreTimeDataDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<String> from, List<String> to});
}

/// @nodoc
class __$$StoreTimeDataDTOImplCopyWithImpl<$Res>
    extends _$StoreTimeDataDTOCopyWithImpl<$Res, _$StoreTimeDataDTOImpl>
    implements _$$StoreTimeDataDTOImplCopyWith<$Res> {
  __$$StoreTimeDataDTOImplCopyWithImpl(_$StoreTimeDataDTOImpl _value,
      $Res Function(_$StoreTimeDataDTOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? from = null,
    Object? to = null,
  }) {
    return _then(_$StoreTimeDataDTOImpl(
      from: null == from
          ? _value._from
          : from // ignore: cast_nullable_to_non_nullable
              as List<String>,
      to: null == to
          ? _value._to
          : to // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StoreTimeDataDTOImpl implements _StoreTimeDataDTO {
  const _$StoreTimeDataDTOImpl(
      {required final List<String> from, required final List<String> to})
      : _from = from,
        _to = to;

  factory _$StoreTimeDataDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$StoreTimeDataDTOImplFromJson(json);

  final List<String> _from;
  @override
  List<String> get from {
    if (_from is EqualUnmodifiableListView) return _from;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_from);
  }

  final List<String> _to;
  @override
  List<String> get to {
    if (_to is EqualUnmodifiableListView) return _to;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_to);
  }

  @override
  String toString() {
    return 'StoreTimeDataDTO(from: $from, to: $to)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StoreTimeDataDTOImpl &&
            const DeepCollectionEquality().equals(other._from, _from) &&
            const DeepCollectionEquality().equals(other._to, _to));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_from),
      const DeepCollectionEquality().hash(_to));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StoreTimeDataDTOImplCopyWith<_$StoreTimeDataDTOImpl> get copyWith =>
      __$$StoreTimeDataDTOImplCopyWithImpl<_$StoreTimeDataDTOImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StoreTimeDataDTOImplToJson(
      this,
    );
  }
}

abstract class _StoreTimeDataDTO implements StoreTimeDataDTO {
  const factory _StoreTimeDataDTO(
      {required final List<String> from,
      required final List<String> to}) = _$StoreTimeDataDTOImpl;

  factory _StoreTimeDataDTO.fromJson(Map<String, dynamic> json) =
      _$StoreTimeDataDTOImpl.fromJson;

  @override
  List<String> get from;
  @override
  List<String> get to;
  @override
  @JsonKey(ignore: true)
  _$$StoreTimeDataDTOImplCopyWith<_$StoreTimeDataDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
