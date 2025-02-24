// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bot_whats_app_dto.fr.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

BotWhatsAppDTO _$BotWhatsAppDTOFromJson(Map<String, dynamic> json) {
  return _BotWhatsAppDTO.fromJson(json);
}

/// @nodoc
mixin _$BotWhatsAppDTO {
  String get number => throw _privateConstructorUsedError;
  String get countryCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'message')
  LocalizationMessageDTO get initialMessage =>
      throw _privateConstructorUsedError;

  /// Serializes this BotWhatsAppDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BotWhatsAppDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BotWhatsAppDTOCopyWith<BotWhatsAppDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BotWhatsAppDTOCopyWith<$Res> {
  factory $BotWhatsAppDTOCopyWith(
    BotWhatsAppDTO value,
    $Res Function(BotWhatsAppDTO) then,
  ) = _$BotWhatsAppDTOCopyWithImpl<$Res, BotWhatsAppDTO>;
  @useResult
  $Res call({
    String number,
    String countryCode,
    @JsonKey(name: 'message') LocalizationMessageDTO initialMessage,
  });

  $LocalizationMessageDTOCopyWith<$Res> get initialMessage;
}

/// @nodoc
class _$BotWhatsAppDTOCopyWithImpl<$Res, $Val extends BotWhatsAppDTO>
    implements $BotWhatsAppDTOCopyWith<$Res> {
  _$BotWhatsAppDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BotWhatsAppDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? number = null,
    Object? countryCode = null,
    Object? initialMessage = null,
  }) {
    return _then(
      _value.copyWith(
            number:
                null == number
                    ? _value.number
                    : number // ignore: cast_nullable_to_non_nullable
                        as String,
            countryCode:
                null == countryCode
                    ? _value.countryCode
                    : countryCode // ignore: cast_nullable_to_non_nullable
                        as String,
            initialMessage:
                null == initialMessage
                    ? _value.initialMessage
                    : initialMessage // ignore: cast_nullable_to_non_nullable
                        as LocalizationMessageDTO,
          )
          as $Val,
    );
  }

  /// Create a copy of BotWhatsAppDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LocalizationMessageDTOCopyWith<$Res> get initialMessage {
    return $LocalizationMessageDTOCopyWith<$Res>(_value.initialMessage, (
      value,
    ) {
      return _then(_value.copyWith(initialMessage: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BotWhatsAppDTOImplCopyWith<$Res>
    implements $BotWhatsAppDTOCopyWith<$Res> {
  factory _$$BotWhatsAppDTOImplCopyWith(
    _$BotWhatsAppDTOImpl value,
    $Res Function(_$BotWhatsAppDTOImpl) then,
  ) = __$$BotWhatsAppDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String number,
    String countryCode,
    @JsonKey(name: 'message') LocalizationMessageDTO initialMessage,
  });

  @override
  $LocalizationMessageDTOCopyWith<$Res> get initialMessage;
}

/// @nodoc
class __$$BotWhatsAppDTOImplCopyWithImpl<$Res>
    extends _$BotWhatsAppDTOCopyWithImpl<$Res, _$BotWhatsAppDTOImpl>
    implements _$$BotWhatsAppDTOImplCopyWith<$Res> {
  __$$BotWhatsAppDTOImplCopyWithImpl(
    _$BotWhatsAppDTOImpl _value,
    $Res Function(_$BotWhatsAppDTOImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of BotWhatsAppDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? number = null,
    Object? countryCode = null,
    Object? initialMessage = null,
  }) {
    return _then(
      _$BotWhatsAppDTOImpl(
        number:
            null == number
                ? _value.number
                : number // ignore: cast_nullable_to_non_nullable
                    as String,
        countryCode:
            null == countryCode
                ? _value.countryCode
                : countryCode // ignore: cast_nullable_to_non_nullable
                    as String,
        initialMessage:
            null == initialMessage
                ? _value.initialMessage
                : initialMessage // ignore: cast_nullable_to_non_nullable
                    as LocalizationMessageDTO,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$BotWhatsAppDTOImpl implements _BotWhatsAppDTO {
  const _$BotWhatsAppDTOImpl({
    required this.number,
    required this.countryCode,
    @JsonKey(name: 'message') required this.initialMessage,
  });

  factory _$BotWhatsAppDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$BotWhatsAppDTOImplFromJson(json);

  @override
  final String number;
  @override
  final String countryCode;
  @override
  @JsonKey(name: 'message')
  final LocalizationMessageDTO initialMessage;

  @override
  String toString() {
    return 'BotWhatsAppDTO(number: $number, countryCode: $countryCode, initialMessage: $initialMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BotWhatsAppDTOImpl &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.countryCode, countryCode) ||
                other.countryCode == countryCode) &&
            (identical(other.initialMessage, initialMessage) ||
                other.initialMessage == initialMessage));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, number, countryCode, initialMessage);

  /// Create a copy of BotWhatsAppDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BotWhatsAppDTOImplCopyWith<_$BotWhatsAppDTOImpl> get copyWith =>
      __$$BotWhatsAppDTOImplCopyWithImpl<_$BotWhatsAppDTOImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$BotWhatsAppDTOImplToJson(this);
  }
}

abstract class _BotWhatsAppDTO implements BotWhatsAppDTO {
  const factory _BotWhatsAppDTO({
    required final String number,
    required final String countryCode,
    @JsonKey(name: 'message')
    required final LocalizationMessageDTO initialMessage,
  }) = _$BotWhatsAppDTOImpl;

  factory _BotWhatsAppDTO.fromJson(Map<String, dynamic> json) =
      _$BotWhatsAppDTOImpl.fromJson;

  @override
  String get number;
  @override
  String get countryCode;
  @override
  @JsonKey(name: 'message')
  LocalizationMessageDTO get initialMessage;

  /// Create a copy of BotWhatsAppDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BotWhatsAppDTOImplCopyWith<_$BotWhatsAppDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
