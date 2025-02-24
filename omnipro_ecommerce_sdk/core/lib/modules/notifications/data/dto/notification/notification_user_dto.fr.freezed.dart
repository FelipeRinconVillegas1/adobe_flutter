// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notification_user_dto.fr.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

NotificationUserDTO _$NotificationUserDTOFromJson(Map<String, dynamic> json) {
  return _NotificationUserDTO.fromJson(json);
}

/// @nodoc
mixin _$NotificationUserDTO {
  @JsonKey(name: 'id')
  String get id => throw _privateConstructorUsedError;
  String get deviceToken => throw _privateConstructorUsedError;
  String get platform => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  String? get dialCode => throw _privateConstructorUsedError;
  String? get gender => throw _privateConstructorUsedError;
  String? get birthDate => throw _privateConstructorUsedError;
  String? get city => throw _privateConstructorUsedError;
  String? get zipCode => throw _privateConstructorUsedError;
  bool? get enableNotifications => throw _privateConstructorUsedError;
  bool? get enableSoundNotifications => throw _privateConstructorUsedError;
  @JsonKey(name: 'mda')
  String? get mdaCardNumber => throw _privateConstructorUsedError;

  /// Serializes this NotificationUserDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of NotificationUserDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NotificationUserDTOCopyWith<NotificationUserDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationUserDTOCopyWith<$Res> {
  factory $NotificationUserDTOCopyWith(
    NotificationUserDTO value,
    $Res Function(NotificationUserDTO) then,
  ) = _$NotificationUserDTOCopyWithImpl<$Res, NotificationUserDTO>;
  @useResult
  $Res call({
    @JsonKey(name: 'id') String id,
    String deviceToken,
    String platform,
    String? phone,
    String? dialCode,
    String? gender,
    String? birthDate,
    String? city,
    String? zipCode,
    bool? enableNotifications,
    bool? enableSoundNotifications,
    @JsonKey(name: 'mda') String? mdaCardNumber,
  });
}

/// @nodoc
class _$NotificationUserDTOCopyWithImpl<$Res, $Val extends NotificationUserDTO>
    implements $NotificationUserDTOCopyWith<$Res> {
  _$NotificationUserDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NotificationUserDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? deviceToken = null,
    Object? platform = null,
    Object? phone = freezed,
    Object? dialCode = freezed,
    Object? gender = freezed,
    Object? birthDate = freezed,
    Object? city = freezed,
    Object? zipCode = freezed,
    Object? enableNotifications = freezed,
    Object? enableSoundNotifications = freezed,
    Object? mdaCardNumber = freezed,
  }) {
    return _then(
      _value.copyWith(
            id:
                null == id
                    ? _value.id
                    : id // ignore: cast_nullable_to_non_nullable
                        as String,
            deviceToken:
                null == deviceToken
                    ? _value.deviceToken
                    : deviceToken // ignore: cast_nullable_to_non_nullable
                        as String,
            platform:
                null == platform
                    ? _value.platform
                    : platform // ignore: cast_nullable_to_non_nullable
                        as String,
            phone:
                freezed == phone
                    ? _value.phone
                    : phone // ignore: cast_nullable_to_non_nullable
                        as String?,
            dialCode:
                freezed == dialCode
                    ? _value.dialCode
                    : dialCode // ignore: cast_nullable_to_non_nullable
                        as String?,
            gender:
                freezed == gender
                    ? _value.gender
                    : gender // ignore: cast_nullable_to_non_nullable
                        as String?,
            birthDate:
                freezed == birthDate
                    ? _value.birthDate
                    : birthDate // ignore: cast_nullable_to_non_nullable
                        as String?,
            city:
                freezed == city
                    ? _value.city
                    : city // ignore: cast_nullable_to_non_nullable
                        as String?,
            zipCode:
                freezed == zipCode
                    ? _value.zipCode
                    : zipCode // ignore: cast_nullable_to_non_nullable
                        as String?,
            enableNotifications:
                freezed == enableNotifications
                    ? _value.enableNotifications
                    : enableNotifications // ignore: cast_nullable_to_non_nullable
                        as bool?,
            enableSoundNotifications:
                freezed == enableSoundNotifications
                    ? _value.enableSoundNotifications
                    : enableSoundNotifications // ignore: cast_nullable_to_non_nullable
                        as bool?,
            mdaCardNumber:
                freezed == mdaCardNumber
                    ? _value.mdaCardNumber
                    : mdaCardNumber // ignore: cast_nullable_to_non_nullable
                        as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$NotificationUserDTOImplCopyWith<$Res>
    implements $NotificationUserDTOCopyWith<$Res> {
  factory _$$NotificationUserDTOImplCopyWith(
    _$NotificationUserDTOImpl value,
    $Res Function(_$NotificationUserDTOImpl) then,
  ) = __$$NotificationUserDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'id') String id,
    String deviceToken,
    String platform,
    String? phone,
    String? dialCode,
    String? gender,
    String? birthDate,
    String? city,
    String? zipCode,
    bool? enableNotifications,
    bool? enableSoundNotifications,
    @JsonKey(name: 'mda') String? mdaCardNumber,
  });
}

/// @nodoc
class __$$NotificationUserDTOImplCopyWithImpl<$Res>
    extends _$NotificationUserDTOCopyWithImpl<$Res, _$NotificationUserDTOImpl>
    implements _$$NotificationUserDTOImplCopyWith<$Res> {
  __$$NotificationUserDTOImplCopyWithImpl(
    _$NotificationUserDTOImpl _value,
    $Res Function(_$NotificationUserDTOImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of NotificationUserDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? deviceToken = null,
    Object? platform = null,
    Object? phone = freezed,
    Object? dialCode = freezed,
    Object? gender = freezed,
    Object? birthDate = freezed,
    Object? city = freezed,
    Object? zipCode = freezed,
    Object? enableNotifications = freezed,
    Object? enableSoundNotifications = freezed,
    Object? mdaCardNumber = freezed,
  }) {
    return _then(
      _$NotificationUserDTOImpl(
        id:
            null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                    as String,
        deviceToken:
            null == deviceToken
                ? _value.deviceToken
                : deviceToken // ignore: cast_nullable_to_non_nullable
                    as String,
        platform:
            null == platform
                ? _value.platform
                : platform // ignore: cast_nullable_to_non_nullable
                    as String,
        phone:
            freezed == phone
                ? _value.phone
                : phone // ignore: cast_nullable_to_non_nullable
                    as String?,
        dialCode:
            freezed == dialCode
                ? _value.dialCode
                : dialCode // ignore: cast_nullable_to_non_nullable
                    as String?,
        gender:
            freezed == gender
                ? _value.gender
                : gender // ignore: cast_nullable_to_non_nullable
                    as String?,
        birthDate:
            freezed == birthDate
                ? _value.birthDate
                : birthDate // ignore: cast_nullable_to_non_nullable
                    as String?,
        city:
            freezed == city
                ? _value.city
                : city // ignore: cast_nullable_to_non_nullable
                    as String?,
        zipCode:
            freezed == zipCode
                ? _value.zipCode
                : zipCode // ignore: cast_nullable_to_non_nullable
                    as String?,
        enableNotifications:
            freezed == enableNotifications
                ? _value.enableNotifications
                : enableNotifications // ignore: cast_nullable_to_non_nullable
                    as bool?,
        enableSoundNotifications:
            freezed == enableSoundNotifications
                ? _value.enableSoundNotifications
                : enableSoundNotifications // ignore: cast_nullable_to_non_nullable
                    as bool?,
        mdaCardNumber:
            freezed == mdaCardNumber
                ? _value.mdaCardNumber
                : mdaCardNumber // ignore: cast_nullable_to_non_nullable
                    as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$NotificationUserDTOImpl implements _NotificationUserDTO {
  const _$NotificationUserDTOImpl({
    @JsonKey(name: 'id') required this.id,
    required this.deviceToken,
    required this.platform,
    this.phone,
    this.dialCode,
    this.gender,
    this.birthDate,
    this.city,
    this.zipCode,
    this.enableNotifications,
    this.enableSoundNotifications,
    @JsonKey(name: 'mda') this.mdaCardNumber,
  });

  factory _$NotificationUserDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$NotificationUserDTOImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String id;
  @override
  final String deviceToken;
  @override
  final String platform;
  @override
  final String? phone;
  @override
  final String? dialCode;
  @override
  final String? gender;
  @override
  final String? birthDate;
  @override
  final String? city;
  @override
  final String? zipCode;
  @override
  final bool? enableNotifications;
  @override
  final bool? enableSoundNotifications;
  @override
  @JsonKey(name: 'mda')
  final String? mdaCardNumber;

  @override
  String toString() {
    return 'NotificationUserDTO(id: $id, deviceToken: $deviceToken, platform: $platform, phone: $phone, dialCode: $dialCode, gender: $gender, birthDate: $birthDate, city: $city, zipCode: $zipCode, enableNotifications: $enableNotifications, enableSoundNotifications: $enableSoundNotifications, mdaCardNumber: $mdaCardNumber)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotificationUserDTOImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.deviceToken, deviceToken) ||
                other.deviceToken == deviceToken) &&
            (identical(other.platform, platform) ||
                other.platform == platform) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.dialCode, dialCode) ||
                other.dialCode == dialCode) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.birthDate, birthDate) ||
                other.birthDate == birthDate) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.zipCode, zipCode) || other.zipCode == zipCode) &&
            (identical(other.enableNotifications, enableNotifications) ||
                other.enableNotifications == enableNotifications) &&
            (identical(
                  other.enableSoundNotifications,
                  enableSoundNotifications,
                ) ||
                other.enableSoundNotifications == enableSoundNotifications) &&
            (identical(other.mdaCardNumber, mdaCardNumber) ||
                other.mdaCardNumber == mdaCardNumber));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    deviceToken,
    platform,
    phone,
    dialCode,
    gender,
    birthDate,
    city,
    zipCode,
    enableNotifications,
    enableSoundNotifications,
    mdaCardNumber,
  );

  /// Create a copy of NotificationUserDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NotificationUserDTOImplCopyWith<_$NotificationUserDTOImpl> get copyWith =>
      __$$NotificationUserDTOImplCopyWithImpl<_$NotificationUserDTOImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$NotificationUserDTOImplToJson(this);
  }
}

abstract class _NotificationUserDTO implements NotificationUserDTO {
  const factory _NotificationUserDTO({
    @JsonKey(name: 'id') required final String id,
    required final String deviceToken,
    required final String platform,
    final String? phone,
    final String? dialCode,
    final String? gender,
    final String? birthDate,
    final String? city,
    final String? zipCode,
    final bool? enableNotifications,
    final bool? enableSoundNotifications,
    @JsonKey(name: 'mda') final String? mdaCardNumber,
  }) = _$NotificationUserDTOImpl;

  factory _NotificationUserDTO.fromJson(Map<String, dynamic> json) =
      _$NotificationUserDTOImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  String get id;
  @override
  String get deviceToken;
  @override
  String get platform;
  @override
  String? get phone;
  @override
  String? get dialCode;
  @override
  String? get gender;
  @override
  String? get birthDate;
  @override
  String? get city;
  @override
  String? get zipCode;
  @override
  bool? get enableNotifications;
  @override
  bool? get enableSoundNotifications;
  @override
  @JsonKey(name: 'mda')
  String? get mdaCardNumber;

  /// Create a copy of NotificationUserDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NotificationUserDTOImplCopyWith<_$NotificationUserDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
