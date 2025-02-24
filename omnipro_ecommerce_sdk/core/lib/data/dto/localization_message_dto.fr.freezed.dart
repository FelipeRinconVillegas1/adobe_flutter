// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'localization_message_dto.fr.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

LocalizationMessageDTO _$LocalizationMessageDTOFromJson(
  Map<String, dynamic> json,
) {
  return _LocalizationMessageDTO.fromJson(json);
}

/// @nodoc
mixin _$LocalizationMessageDTO {
  @JsonKey(name: 'localizations')
  List<MessageWithLocalizationDTO> get messagesWithLocalization =>
      throw _privateConstructorUsedError;

  /// Serializes this LocalizationMessageDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LocalizationMessageDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LocalizationMessageDTOCopyWith<LocalizationMessageDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocalizationMessageDTOCopyWith<$Res> {
  factory $LocalizationMessageDTOCopyWith(
    LocalizationMessageDTO value,
    $Res Function(LocalizationMessageDTO) then,
  ) = _$LocalizationMessageDTOCopyWithImpl<$Res, LocalizationMessageDTO>;
  @useResult
  $Res call({
    @JsonKey(name: 'localizations')
    List<MessageWithLocalizationDTO> messagesWithLocalization,
  });
}

/// @nodoc
class _$LocalizationMessageDTOCopyWithImpl<
  $Res,
  $Val extends LocalizationMessageDTO
>
    implements $LocalizationMessageDTOCopyWith<$Res> {
  _$LocalizationMessageDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LocalizationMessageDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? messagesWithLocalization = null}) {
    return _then(
      _value.copyWith(
            messagesWithLocalization:
                null == messagesWithLocalization
                    ? _value.messagesWithLocalization
                    : messagesWithLocalization // ignore: cast_nullable_to_non_nullable
                        as List<MessageWithLocalizationDTO>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$LocalizationMessageDTOImplCopyWith<$Res>
    implements $LocalizationMessageDTOCopyWith<$Res> {
  factory _$$LocalizationMessageDTOImplCopyWith(
    _$LocalizationMessageDTOImpl value,
    $Res Function(_$LocalizationMessageDTOImpl) then,
  ) = __$$LocalizationMessageDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'localizations')
    List<MessageWithLocalizationDTO> messagesWithLocalization,
  });
}

/// @nodoc
class __$$LocalizationMessageDTOImplCopyWithImpl<$Res>
    extends
        _$LocalizationMessageDTOCopyWithImpl<$Res, _$LocalizationMessageDTOImpl>
    implements _$$LocalizationMessageDTOImplCopyWith<$Res> {
  __$$LocalizationMessageDTOImplCopyWithImpl(
    _$LocalizationMessageDTOImpl _value,
    $Res Function(_$LocalizationMessageDTOImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LocalizationMessageDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? messagesWithLocalization = null}) {
    return _then(
      _$LocalizationMessageDTOImpl(
        messagesWithLocalization:
            null == messagesWithLocalization
                ? _value._messagesWithLocalization
                : messagesWithLocalization // ignore: cast_nullable_to_non_nullable
                    as List<MessageWithLocalizationDTO>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$LocalizationMessageDTOImpl implements _LocalizationMessageDTO {
  const _$LocalizationMessageDTOImpl({
    @JsonKey(name: 'localizations')
    required final List<MessageWithLocalizationDTO> messagesWithLocalization,
  }) : _messagesWithLocalization = messagesWithLocalization;

  factory _$LocalizationMessageDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$LocalizationMessageDTOImplFromJson(json);

  final List<MessageWithLocalizationDTO> _messagesWithLocalization;
  @override
  @JsonKey(name: 'localizations')
  List<MessageWithLocalizationDTO> get messagesWithLocalization {
    if (_messagesWithLocalization is EqualUnmodifiableListView)
      return _messagesWithLocalization;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_messagesWithLocalization);
  }

  @override
  String toString() {
    return 'LocalizationMessageDTO(messagesWithLocalization: $messagesWithLocalization)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocalizationMessageDTOImpl &&
            const DeepCollectionEquality().equals(
              other._messagesWithLocalization,
              _messagesWithLocalization,
            ));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_messagesWithLocalization),
  );

  /// Create a copy of LocalizationMessageDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LocalizationMessageDTOImplCopyWith<_$LocalizationMessageDTOImpl>
  get copyWith =>
      __$$LocalizationMessageDTOImplCopyWithImpl<_$LocalizationMessageDTOImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$LocalizationMessageDTOImplToJson(this);
  }
}

abstract class _LocalizationMessageDTO implements LocalizationMessageDTO {
  const factory _LocalizationMessageDTO({
    @JsonKey(name: 'localizations')
    required final List<MessageWithLocalizationDTO> messagesWithLocalization,
  }) = _$LocalizationMessageDTOImpl;

  factory _LocalizationMessageDTO.fromJson(Map<String, dynamic> json) =
      _$LocalizationMessageDTOImpl.fromJson;

  @override
  @JsonKey(name: 'localizations')
  List<MessageWithLocalizationDTO> get messagesWithLocalization;

  /// Create a copy of LocalizationMessageDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LocalizationMessageDTOImplCopyWith<_$LocalizationMessageDTOImpl>
  get copyWith => throw _privateConstructorUsedError;
}

MessageWithLocalizationDTO _$MessageWithLocalizationDTOFromJson(
  Map<String, dynamic> json,
) {
  return _MessageWithLocalizationDTO.fromJson(json);
}

/// @nodoc
mixin _$MessageWithLocalizationDTO {
  String get code => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;

  /// Serializes this MessageWithLocalizationDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MessageWithLocalizationDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MessageWithLocalizationDTOCopyWith<MessageWithLocalizationDTO>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageWithLocalizationDTOCopyWith<$Res> {
  factory $MessageWithLocalizationDTOCopyWith(
    MessageWithLocalizationDTO value,
    $Res Function(MessageWithLocalizationDTO) then,
  ) =
      _$MessageWithLocalizationDTOCopyWithImpl<
        $Res,
        MessageWithLocalizationDTO
      >;
  @useResult
  $Res call({String code, String message});
}

/// @nodoc
class _$MessageWithLocalizationDTOCopyWithImpl<
  $Res,
  $Val extends MessageWithLocalizationDTO
>
    implements $MessageWithLocalizationDTOCopyWith<$Res> {
  _$MessageWithLocalizationDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MessageWithLocalizationDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? code = null, Object? message = null}) {
    return _then(
      _value.copyWith(
            code:
                null == code
                    ? _value.code
                    : code // ignore: cast_nullable_to_non_nullable
                        as String,
            message:
                null == message
                    ? _value.message
                    : message // ignore: cast_nullable_to_non_nullable
                        as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$MessageWithLocalizationDTOImplCopyWith<$Res>
    implements $MessageWithLocalizationDTOCopyWith<$Res> {
  factory _$$MessageWithLocalizationDTOImplCopyWith(
    _$MessageWithLocalizationDTOImpl value,
    $Res Function(_$MessageWithLocalizationDTOImpl) then,
  ) = __$$MessageWithLocalizationDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String code, String message});
}

/// @nodoc
class __$$MessageWithLocalizationDTOImplCopyWithImpl<$Res>
    extends
        _$MessageWithLocalizationDTOCopyWithImpl<
          $Res,
          _$MessageWithLocalizationDTOImpl
        >
    implements _$$MessageWithLocalizationDTOImplCopyWith<$Res> {
  __$$MessageWithLocalizationDTOImplCopyWithImpl(
    _$MessageWithLocalizationDTOImpl _value,
    $Res Function(_$MessageWithLocalizationDTOImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of MessageWithLocalizationDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? code = null, Object? message = null}) {
    return _then(
      _$MessageWithLocalizationDTOImpl(
        code:
            null == code
                ? _value.code
                : code // ignore: cast_nullable_to_non_nullable
                    as String,
        message:
            null == message
                ? _value.message
                : message // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$MessageWithLocalizationDTOImpl implements _MessageWithLocalizationDTO {
  const _$MessageWithLocalizationDTOImpl({
    required this.code,
    required this.message,
  });

  factory _$MessageWithLocalizationDTOImpl.fromJson(
    Map<String, dynamic> json,
  ) => _$$MessageWithLocalizationDTOImplFromJson(json);

  @override
  final String code;
  @override
  final String message;

  @override
  String toString() {
    return 'MessageWithLocalizationDTO(code: $code, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MessageWithLocalizationDTOImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, code, message);

  /// Create a copy of MessageWithLocalizationDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MessageWithLocalizationDTOImplCopyWith<_$MessageWithLocalizationDTOImpl>
  get copyWith => __$$MessageWithLocalizationDTOImplCopyWithImpl<
    _$MessageWithLocalizationDTOImpl
  >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MessageWithLocalizationDTOImplToJson(this);
  }
}

abstract class _MessageWithLocalizationDTO
    implements MessageWithLocalizationDTO {
  const factory _MessageWithLocalizationDTO({
    required final String code,
    required final String message,
  }) = _$MessageWithLocalizationDTOImpl;

  factory _MessageWithLocalizationDTO.fromJson(Map<String, dynamic> json) =
      _$MessageWithLocalizationDTOImpl.fromJson;

  @override
  String get code;
  @override
  String get message;

  /// Create a copy of MessageWithLocalizationDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MessageWithLocalizationDTOImplCopyWith<_$MessageWithLocalizationDTOImpl>
  get copyWith => throw _privateConstructorUsedError;
}
