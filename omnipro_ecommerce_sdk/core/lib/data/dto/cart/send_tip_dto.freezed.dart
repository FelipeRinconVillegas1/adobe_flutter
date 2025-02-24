// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'send_tip_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

SendTipDTO _$SendTipDTOFromJson(Map<String, dynamic> json) {
  return _SendTipDTO.fromJson(json);
}

/// @nodoc
mixin _$SendTipDTO {
  @JsonKey(name: 'cart_id')
  String get cartId => throw _privateConstructorUsedError;
  @JsonKey(name: 'tip')
  String get tip => throw _privateConstructorUsedError;

  /// Serializes this SendTipDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SendTipDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SendTipDTOCopyWith<SendTipDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SendTipDTOCopyWith<$Res> {
  factory $SendTipDTOCopyWith(
    SendTipDTO value,
    $Res Function(SendTipDTO) then,
  ) = _$SendTipDTOCopyWithImpl<$Res, SendTipDTO>;
  @useResult
  $Res call({
    @JsonKey(name: 'cart_id') String cartId,
    @JsonKey(name: 'tip') String tip,
  });
}

/// @nodoc
class _$SendTipDTOCopyWithImpl<$Res, $Val extends SendTipDTO>
    implements $SendTipDTOCopyWith<$Res> {
  _$SendTipDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SendTipDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? cartId = null, Object? tip = null}) {
    return _then(
      _value.copyWith(
            cartId:
                null == cartId
                    ? _value.cartId
                    : cartId // ignore: cast_nullable_to_non_nullable
                        as String,
            tip:
                null == tip
                    ? _value.tip
                    : tip // ignore: cast_nullable_to_non_nullable
                        as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$SendTipDTOImplCopyWith<$Res>
    implements $SendTipDTOCopyWith<$Res> {
  factory _$$SendTipDTOImplCopyWith(
    _$SendTipDTOImpl value,
    $Res Function(_$SendTipDTOImpl) then,
  ) = __$$SendTipDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'cart_id') String cartId,
    @JsonKey(name: 'tip') String tip,
  });
}

/// @nodoc
class __$$SendTipDTOImplCopyWithImpl<$Res>
    extends _$SendTipDTOCopyWithImpl<$Res, _$SendTipDTOImpl>
    implements _$$SendTipDTOImplCopyWith<$Res> {
  __$$SendTipDTOImplCopyWithImpl(
    _$SendTipDTOImpl _value,
    $Res Function(_$SendTipDTOImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SendTipDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? cartId = null, Object? tip = null}) {
    return _then(
      _$SendTipDTOImpl(
        cartId:
            null == cartId
                ? _value.cartId
                : cartId // ignore: cast_nullable_to_non_nullable
                    as String,
        tip:
            null == tip
                ? _value.tip
                : tip // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$SendTipDTOImpl implements _SendTipDTO {
  const _$SendTipDTOImpl({
    @JsonKey(name: 'cart_id') required this.cartId,
    @JsonKey(name: 'tip') required this.tip,
  });

  factory _$SendTipDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$SendTipDTOImplFromJson(json);

  @override
  @JsonKey(name: 'cart_id')
  final String cartId;
  @override
  @JsonKey(name: 'tip')
  final String tip;

  @override
  String toString() {
    return 'SendTipDTO(cartId: $cartId, tip: $tip)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendTipDTOImpl &&
            (identical(other.cartId, cartId) || other.cartId == cartId) &&
            (identical(other.tip, tip) || other.tip == tip));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, cartId, tip);

  /// Create a copy of SendTipDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SendTipDTOImplCopyWith<_$SendTipDTOImpl> get copyWith =>
      __$$SendTipDTOImplCopyWithImpl<_$SendTipDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SendTipDTOImplToJson(this);
  }
}

abstract class _SendTipDTO implements SendTipDTO {
  const factory _SendTipDTO({
    @JsonKey(name: 'cart_id') required final String cartId,
    @JsonKey(name: 'tip') required final String tip,
  }) = _$SendTipDTOImpl;

  factory _SendTipDTO.fromJson(Map<String, dynamic> json) =
      _$SendTipDTOImpl.fromJson;

  @override
  @JsonKey(name: 'cart_id')
  String get cartId;
  @override
  @JsonKey(name: 'tip')
  String get tip;

  /// Create a copy of SendTipDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SendTipDTOImplCopyWith<_$SendTipDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SendTipResponseDTO _$SendTipResponseDTOFromJson(Map<String, dynamic> json) {
  return _SendTipResponseDTO.fromJson(json);
}

/// @nodoc
mixin _$SendTipResponseDTO {
  String get message => throw _privateConstructorUsedError;
  String get code => throw _privateConstructorUsedError;
  @JsonKey(name: 'cart_id')
  String get cartId => throw _privateConstructorUsedError;

  /// Serializes this SendTipResponseDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SendTipResponseDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SendTipResponseDTOCopyWith<SendTipResponseDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SendTipResponseDTOCopyWith<$Res> {
  factory $SendTipResponseDTOCopyWith(
    SendTipResponseDTO value,
    $Res Function(SendTipResponseDTO) then,
  ) = _$SendTipResponseDTOCopyWithImpl<$Res, SendTipResponseDTO>;
  @useResult
  $Res call({
    String message,
    String code,
    @JsonKey(name: 'cart_id') String cartId,
  });
}

/// @nodoc
class _$SendTipResponseDTOCopyWithImpl<$Res, $Val extends SendTipResponseDTO>
    implements $SendTipResponseDTOCopyWith<$Res> {
  _$SendTipResponseDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SendTipResponseDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? code = null,
    Object? cartId = null,
  }) {
    return _then(
      _value.copyWith(
            message:
                null == message
                    ? _value.message
                    : message // ignore: cast_nullable_to_non_nullable
                        as String,
            code:
                null == code
                    ? _value.code
                    : code // ignore: cast_nullable_to_non_nullable
                        as String,
            cartId:
                null == cartId
                    ? _value.cartId
                    : cartId // ignore: cast_nullable_to_non_nullable
                        as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$SendTipResponseDTOImplCopyWith<$Res>
    implements $SendTipResponseDTOCopyWith<$Res> {
  factory _$$SendTipResponseDTOImplCopyWith(
    _$SendTipResponseDTOImpl value,
    $Res Function(_$SendTipResponseDTOImpl) then,
  ) = __$$SendTipResponseDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String message,
    String code,
    @JsonKey(name: 'cart_id') String cartId,
  });
}

/// @nodoc
class __$$SendTipResponseDTOImplCopyWithImpl<$Res>
    extends _$SendTipResponseDTOCopyWithImpl<$Res, _$SendTipResponseDTOImpl>
    implements _$$SendTipResponseDTOImplCopyWith<$Res> {
  __$$SendTipResponseDTOImplCopyWithImpl(
    _$SendTipResponseDTOImpl _value,
    $Res Function(_$SendTipResponseDTOImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SendTipResponseDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? code = null,
    Object? cartId = null,
  }) {
    return _then(
      _$SendTipResponseDTOImpl(
        message:
            null == message
                ? _value.message
                : message // ignore: cast_nullable_to_non_nullable
                    as String,
        code:
            null == code
                ? _value.code
                : code // ignore: cast_nullable_to_non_nullable
                    as String,
        cartId:
            null == cartId
                ? _value.cartId
                : cartId // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$SendTipResponseDTOImpl implements _SendTipResponseDTO {
  const _$SendTipResponseDTOImpl({
    required this.message,
    required this.code,
    @JsonKey(name: 'cart_id') required this.cartId,
  });

  factory _$SendTipResponseDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$SendTipResponseDTOImplFromJson(json);

  @override
  final String message;
  @override
  final String code;
  @override
  @JsonKey(name: 'cart_id')
  final String cartId;

  @override
  String toString() {
    return 'SendTipResponseDTO(message: $message, code: $code, cartId: $cartId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendTipResponseDTOImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.cartId, cartId) || other.cartId == cartId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, message, code, cartId);

  /// Create a copy of SendTipResponseDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SendTipResponseDTOImplCopyWith<_$SendTipResponseDTOImpl> get copyWith =>
      __$$SendTipResponseDTOImplCopyWithImpl<_$SendTipResponseDTOImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$SendTipResponseDTOImplToJson(this);
  }
}

abstract class _SendTipResponseDTO implements SendTipResponseDTO {
  const factory _SendTipResponseDTO({
    required final String message,
    required final String code,
    @JsonKey(name: 'cart_id') required final String cartId,
  }) = _$SendTipResponseDTOImpl;

  factory _SendTipResponseDTO.fromJson(Map<String, dynamic> json) =
      _$SendTipResponseDTOImpl.fromJson;

  @override
  String get message;
  @override
  String get code;
  @override
  @JsonKey(name: 'cart_id')
  String get cartId;

  /// Create a copy of SendTipResponseDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SendTipResponseDTOImplCopyWith<_$SendTipResponseDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
