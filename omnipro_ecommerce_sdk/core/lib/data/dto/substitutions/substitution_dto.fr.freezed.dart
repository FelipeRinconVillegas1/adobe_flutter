// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'substitution_dto.fr.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

SubstitutionDTO _$SubstitutionDTOFromJson(Map<String, dynamic> json) {
  return _SubstitutionDTO.fromJson(json);
}

/// @nodoc
mixin _$SubstitutionDTO {
  @JsonKey(name: 'custom_code')
  String? get customCode => throw _privateConstructorUsedError;
  String get option => throw _privateConstructorUsedError;
  @JsonKey(name: 'css_classname')
  String get cssClassname => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;

  /// Serializes this SubstitutionDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SubstitutionDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SubstitutionDTOCopyWith<SubstitutionDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubstitutionDTOCopyWith<$Res> {
  factory $SubstitutionDTOCopyWith(
    SubstitutionDTO value,
    $Res Function(SubstitutionDTO) then,
  ) = _$SubstitutionDTOCopyWithImpl<$Res, SubstitutionDTO>;
  @useResult
  $Res call({
    @JsonKey(name: 'custom_code') String? customCode,
    String option,
    @JsonKey(name: 'css_classname') String cssClassname,
    String description,
  });
}

/// @nodoc
class _$SubstitutionDTOCopyWithImpl<$Res, $Val extends SubstitutionDTO>
    implements $SubstitutionDTOCopyWith<$Res> {
  _$SubstitutionDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SubstitutionDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? customCode = freezed,
    Object? option = null,
    Object? cssClassname = null,
    Object? description = null,
  }) {
    return _then(
      _value.copyWith(
            customCode:
                freezed == customCode
                    ? _value.customCode
                    : customCode // ignore: cast_nullable_to_non_nullable
                        as String?,
            option:
                null == option
                    ? _value.option
                    : option // ignore: cast_nullable_to_non_nullable
                        as String,
            cssClassname:
                null == cssClassname
                    ? _value.cssClassname
                    : cssClassname // ignore: cast_nullable_to_non_nullable
                        as String,
            description:
                null == description
                    ? _value.description
                    : description // ignore: cast_nullable_to_non_nullable
                        as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$SubstitutionDTOImplCopyWith<$Res>
    implements $SubstitutionDTOCopyWith<$Res> {
  factory _$$SubstitutionDTOImplCopyWith(
    _$SubstitutionDTOImpl value,
    $Res Function(_$SubstitutionDTOImpl) then,
  ) = __$$SubstitutionDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'custom_code') String? customCode,
    String option,
    @JsonKey(name: 'css_classname') String cssClassname,
    String description,
  });
}

/// @nodoc
class __$$SubstitutionDTOImplCopyWithImpl<$Res>
    extends _$SubstitutionDTOCopyWithImpl<$Res, _$SubstitutionDTOImpl>
    implements _$$SubstitutionDTOImplCopyWith<$Res> {
  __$$SubstitutionDTOImplCopyWithImpl(
    _$SubstitutionDTOImpl _value,
    $Res Function(_$SubstitutionDTOImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SubstitutionDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? customCode = freezed,
    Object? option = null,
    Object? cssClassname = null,
    Object? description = null,
  }) {
    return _then(
      _$SubstitutionDTOImpl(
        customCode:
            freezed == customCode
                ? _value.customCode
                : customCode // ignore: cast_nullable_to_non_nullable
                    as String?,
        option:
            null == option
                ? _value.option
                : option // ignore: cast_nullable_to_non_nullable
                    as String,
        cssClassname:
            null == cssClassname
                ? _value.cssClassname
                : cssClassname // ignore: cast_nullable_to_non_nullable
                    as String,
        description:
            null == description
                ? _value.description
                : description // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$SubstitutionDTOImpl implements _SubstitutionDTO {
  const _$SubstitutionDTOImpl({
    @JsonKey(name: 'custom_code') this.customCode,
    required this.option,
    @JsonKey(name: 'css_classname') required this.cssClassname,
    required this.description,
  });

  factory _$SubstitutionDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$SubstitutionDTOImplFromJson(json);

  @override
  @JsonKey(name: 'custom_code')
  final String? customCode;
  @override
  final String option;
  @override
  @JsonKey(name: 'css_classname')
  final String cssClassname;
  @override
  final String description;

  @override
  String toString() {
    return 'SubstitutionDTO(customCode: $customCode, option: $option, cssClassname: $cssClassname, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubstitutionDTOImpl &&
            (identical(other.customCode, customCode) ||
                other.customCode == customCode) &&
            (identical(other.option, option) || other.option == option) &&
            (identical(other.cssClassname, cssClassname) ||
                other.cssClassname == cssClassname) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, customCode, option, cssClassname, description);

  /// Create a copy of SubstitutionDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SubstitutionDTOImplCopyWith<_$SubstitutionDTOImpl> get copyWith =>
      __$$SubstitutionDTOImplCopyWithImpl<_$SubstitutionDTOImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$SubstitutionDTOImplToJson(this);
  }
}

abstract class _SubstitutionDTO implements SubstitutionDTO {
  const factory _SubstitutionDTO({
    @JsonKey(name: 'custom_code') final String? customCode,
    required final String option,
    @JsonKey(name: 'css_classname') required final String cssClassname,
    required final String description,
  }) = _$SubstitutionDTOImpl;

  factory _SubstitutionDTO.fromJson(Map<String, dynamic> json) =
      _$SubstitutionDTOImpl.fromJson;

  @override
  @JsonKey(name: 'custom_code')
  String? get customCode;
  @override
  String get option;
  @override
  @JsonKey(name: 'css_classname')
  String get cssClassname;
  @override
  String get description;

  /// Create a copy of SubstitutionDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SubstitutionDTOImplCopyWith<_$SubstitutionDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SubstitutionResponseDTO _$SubstitutionResponseDTOFromJson(
  Map<String, dynamic> json,
) {
  return _SubstitutionResponseDTO.fromJson(json);
}

/// @nodoc
mixin _$SubstitutionResponseDTO {
  @JsonKey(name: 'cart_id')
  String get cartId => throw _privateConstructorUsedError;
  @JsonKey(name: 'receiving_substitutions')
  String get receivingSubstitutions => throw _privateConstructorUsedError;

  /// Serializes this SubstitutionResponseDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SubstitutionResponseDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SubstitutionResponseDTOCopyWith<SubstitutionResponseDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubstitutionResponseDTOCopyWith<$Res> {
  factory $SubstitutionResponseDTOCopyWith(
    SubstitutionResponseDTO value,
    $Res Function(SubstitutionResponseDTO) then,
  ) = _$SubstitutionResponseDTOCopyWithImpl<$Res, SubstitutionResponseDTO>;
  @useResult
  $Res call({
    @JsonKey(name: 'cart_id') String cartId,
    @JsonKey(name: 'receiving_substitutions') String receivingSubstitutions,
  });
}

/// @nodoc
class _$SubstitutionResponseDTOCopyWithImpl<
  $Res,
  $Val extends SubstitutionResponseDTO
>
    implements $SubstitutionResponseDTOCopyWith<$Res> {
  _$SubstitutionResponseDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SubstitutionResponseDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? cartId = null, Object? receivingSubstitutions = null}) {
    return _then(
      _value.copyWith(
            cartId:
                null == cartId
                    ? _value.cartId
                    : cartId // ignore: cast_nullable_to_non_nullable
                        as String,
            receivingSubstitutions:
                null == receivingSubstitutions
                    ? _value.receivingSubstitutions
                    : receivingSubstitutions // ignore: cast_nullable_to_non_nullable
                        as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$SubstitutionResponseDTOImplCopyWith<$Res>
    implements $SubstitutionResponseDTOCopyWith<$Res> {
  factory _$$SubstitutionResponseDTOImplCopyWith(
    _$SubstitutionResponseDTOImpl value,
    $Res Function(_$SubstitutionResponseDTOImpl) then,
  ) = __$$SubstitutionResponseDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'cart_id') String cartId,
    @JsonKey(name: 'receiving_substitutions') String receivingSubstitutions,
  });
}

/// @nodoc
class __$$SubstitutionResponseDTOImplCopyWithImpl<$Res>
    extends
        _$SubstitutionResponseDTOCopyWithImpl<
          $Res,
          _$SubstitutionResponseDTOImpl
        >
    implements _$$SubstitutionResponseDTOImplCopyWith<$Res> {
  __$$SubstitutionResponseDTOImplCopyWithImpl(
    _$SubstitutionResponseDTOImpl _value,
    $Res Function(_$SubstitutionResponseDTOImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SubstitutionResponseDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? cartId = null, Object? receivingSubstitutions = null}) {
    return _then(
      _$SubstitutionResponseDTOImpl(
        cartId:
            null == cartId
                ? _value.cartId
                : cartId // ignore: cast_nullable_to_non_nullable
                    as String,
        receivingSubstitutions:
            null == receivingSubstitutions
                ? _value.receivingSubstitutions
                : receivingSubstitutions // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$SubstitutionResponseDTOImpl implements _SubstitutionResponseDTO {
  const _$SubstitutionResponseDTOImpl({
    @JsonKey(name: 'cart_id') required this.cartId,
    @JsonKey(name: 'receiving_substitutions')
    required this.receivingSubstitutions,
  });

  factory _$SubstitutionResponseDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$SubstitutionResponseDTOImplFromJson(json);

  @override
  @JsonKey(name: 'cart_id')
  final String cartId;
  @override
  @JsonKey(name: 'receiving_substitutions')
  final String receivingSubstitutions;

  @override
  String toString() {
    return 'SubstitutionResponseDTO(cartId: $cartId, receivingSubstitutions: $receivingSubstitutions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubstitutionResponseDTOImpl &&
            (identical(other.cartId, cartId) || other.cartId == cartId) &&
            (identical(other.receivingSubstitutions, receivingSubstitutions) ||
                other.receivingSubstitutions == receivingSubstitutions));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, cartId, receivingSubstitutions);

  /// Create a copy of SubstitutionResponseDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SubstitutionResponseDTOImplCopyWith<_$SubstitutionResponseDTOImpl>
  get copyWith => __$$SubstitutionResponseDTOImplCopyWithImpl<
    _$SubstitutionResponseDTOImpl
  >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SubstitutionResponseDTOImplToJson(this);
  }
}

abstract class _SubstitutionResponseDTO implements SubstitutionResponseDTO {
  const factory _SubstitutionResponseDTO({
    @JsonKey(name: 'cart_id') required final String cartId,
    @JsonKey(name: 'receiving_substitutions')
    required final String receivingSubstitutions,
  }) = _$SubstitutionResponseDTOImpl;

  factory _SubstitutionResponseDTO.fromJson(Map<String, dynamic> json) =
      _$SubstitutionResponseDTOImpl.fromJson;

  @override
  @JsonKey(name: 'cart_id')
  String get cartId;
  @override
  @JsonKey(name: 'receiving_substitutions')
  String get receivingSubstitutions;

  /// Create a copy of SubstitutionResponseDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SubstitutionResponseDTOImplCopyWith<_$SubstitutionResponseDTOImpl>
  get copyWith => throw _privateConstructorUsedError;
}
