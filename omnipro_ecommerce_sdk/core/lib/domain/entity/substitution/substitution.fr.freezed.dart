// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'substitution.fr.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$Substitution {
  @JsonKey(name: 'custom_code')
  String? get customCode => throw _privateConstructorUsedError;
  String get option => throw _privateConstructorUsedError;
  @JsonKey(name: 'css_classname')
  String get cssClassname => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;

  /// Create a copy of Substitution
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SubstitutionCopyWith<Substitution> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubstitutionCopyWith<$Res> {
  factory $SubstitutionCopyWith(
    Substitution value,
    $Res Function(Substitution) then,
  ) = _$SubstitutionCopyWithImpl<$Res, Substitution>;
  @useResult
  $Res call({
    @JsonKey(name: 'custom_code') String? customCode,
    String option,
    @JsonKey(name: 'css_classname') String cssClassname,
    String description,
  });
}

/// @nodoc
class _$SubstitutionCopyWithImpl<$Res, $Val extends Substitution>
    implements $SubstitutionCopyWith<$Res> {
  _$SubstitutionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Substitution
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
abstract class _$$SubstitutionImplCopyWith<$Res>
    implements $SubstitutionCopyWith<$Res> {
  factory _$$SubstitutionImplCopyWith(
    _$SubstitutionImpl value,
    $Res Function(_$SubstitutionImpl) then,
  ) = __$$SubstitutionImplCopyWithImpl<$Res>;
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
class __$$SubstitutionImplCopyWithImpl<$Res>
    extends _$SubstitutionCopyWithImpl<$Res, _$SubstitutionImpl>
    implements _$$SubstitutionImplCopyWith<$Res> {
  __$$SubstitutionImplCopyWithImpl(
    _$SubstitutionImpl _value,
    $Res Function(_$SubstitutionImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Substitution
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
      _$SubstitutionImpl(
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

class _$SubstitutionImpl implements _Substitution {
  const _$SubstitutionImpl({
    @JsonKey(name: 'custom_code') this.customCode,
    required this.option,
    @JsonKey(name: 'css_classname') required this.cssClassname,
    required this.description,
  });

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
    return 'Substitution(customCode: $customCode, option: $option, cssClassname: $cssClassname, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubstitutionImpl &&
            (identical(other.customCode, customCode) ||
                other.customCode == customCode) &&
            (identical(other.option, option) || other.option == option) &&
            (identical(other.cssClassname, cssClassname) ||
                other.cssClassname == cssClassname) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, customCode, option, cssClassname, description);

  /// Create a copy of Substitution
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SubstitutionImplCopyWith<_$SubstitutionImpl> get copyWith =>
      __$$SubstitutionImplCopyWithImpl<_$SubstitutionImpl>(this, _$identity);
}

abstract class _Substitution implements Substitution {
  const factory _Substitution({
    @JsonKey(name: 'custom_code') final String? customCode,
    required final String option,
    @JsonKey(name: 'css_classname') required final String cssClassname,
    required final String description,
  }) = _$SubstitutionImpl;

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

  /// Create a copy of Substitution
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SubstitutionImplCopyWith<_$SubstitutionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SubstitutionResponse {
  @JsonKey(name: 'cart_id')
  String get cartId => throw _privateConstructorUsedError;
  @JsonKey(name: 'receiving_substitutions')
  String get receivingSubstitutions => throw _privateConstructorUsedError;

  /// Create a copy of SubstitutionResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SubstitutionResponseCopyWith<SubstitutionResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubstitutionResponseCopyWith<$Res> {
  factory $SubstitutionResponseCopyWith(
    SubstitutionResponse value,
    $Res Function(SubstitutionResponse) then,
  ) = _$SubstitutionResponseCopyWithImpl<$Res, SubstitutionResponse>;
  @useResult
  $Res call({
    @JsonKey(name: 'cart_id') String cartId,
    @JsonKey(name: 'receiving_substitutions') String receivingSubstitutions,
  });
}

/// @nodoc
class _$SubstitutionResponseCopyWithImpl<
  $Res,
  $Val extends SubstitutionResponse
>
    implements $SubstitutionResponseCopyWith<$Res> {
  _$SubstitutionResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SubstitutionResponse
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
abstract class _$$SubstitutionResponseImplCopyWith<$Res>
    implements $SubstitutionResponseCopyWith<$Res> {
  factory _$$SubstitutionResponseImplCopyWith(
    _$SubstitutionResponseImpl value,
    $Res Function(_$SubstitutionResponseImpl) then,
  ) = __$$SubstitutionResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'cart_id') String cartId,
    @JsonKey(name: 'receiving_substitutions') String receivingSubstitutions,
  });
}

/// @nodoc
class __$$SubstitutionResponseImplCopyWithImpl<$Res>
    extends _$SubstitutionResponseCopyWithImpl<$Res, _$SubstitutionResponseImpl>
    implements _$$SubstitutionResponseImplCopyWith<$Res> {
  __$$SubstitutionResponseImplCopyWithImpl(
    _$SubstitutionResponseImpl _value,
    $Res Function(_$SubstitutionResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SubstitutionResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? cartId = null, Object? receivingSubstitutions = null}) {
    return _then(
      _$SubstitutionResponseImpl(
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

class _$SubstitutionResponseImpl implements _SubstitutionResponse {
  const _$SubstitutionResponseImpl({
    @JsonKey(name: 'cart_id') required this.cartId,
    @JsonKey(name: 'receiving_substitutions')
    required this.receivingSubstitutions,
  });

  @override
  @JsonKey(name: 'cart_id')
  final String cartId;
  @override
  @JsonKey(name: 'receiving_substitutions')
  final String receivingSubstitutions;

  @override
  String toString() {
    return 'SubstitutionResponse(cartId: $cartId, receivingSubstitutions: $receivingSubstitutions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubstitutionResponseImpl &&
            (identical(other.cartId, cartId) || other.cartId == cartId) &&
            (identical(other.receivingSubstitutions, receivingSubstitutions) ||
                other.receivingSubstitutions == receivingSubstitutions));
  }

  @override
  int get hashCode => Object.hash(runtimeType, cartId, receivingSubstitutions);

  /// Create a copy of SubstitutionResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SubstitutionResponseImplCopyWith<_$SubstitutionResponseImpl>
  get copyWith =>
      __$$SubstitutionResponseImplCopyWithImpl<_$SubstitutionResponseImpl>(
        this,
        _$identity,
      );
}

abstract class _SubstitutionResponse implements SubstitutionResponse {
  const factory _SubstitutionResponse({
    @JsonKey(name: 'cart_id') required final String cartId,
    @JsonKey(name: 'receiving_substitutions')
    required final String receivingSubstitutions,
  }) = _$SubstitutionResponseImpl;

  @override
  @JsonKey(name: 'cart_id')
  String get cartId;
  @override
  @JsonKey(name: 'receiving_substitutions')
  String get receivingSubstitutions;

  /// Create a copy of SubstitutionResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SubstitutionResponseImplCopyWith<_$SubstitutionResponseImpl>
  get copyWith => throw _privateConstructorUsedError;
}
