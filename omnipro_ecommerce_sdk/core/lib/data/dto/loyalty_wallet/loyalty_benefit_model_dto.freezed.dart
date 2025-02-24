// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'loyalty_benefit_model_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

LoyaltyBenefitModelDTO _$LoyaltyBenefitModelDTOFromJson(
  Map<String, dynamic> json,
) {
  return _LoyaltyBenefitModelDTO.fromJson(json);
}

/// @nodoc
mixin _$LoyaltyBenefitModelDTO {
  String get image => throw _privateConstructorUsedError;
  String get code => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;

  /// Serializes this LoyaltyBenefitModelDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LoyaltyBenefitModelDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LoyaltyBenefitModelDTOCopyWith<LoyaltyBenefitModelDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoyaltyBenefitModelDTOCopyWith<$Res> {
  factory $LoyaltyBenefitModelDTOCopyWith(
    LoyaltyBenefitModelDTO value,
    $Res Function(LoyaltyBenefitModelDTO) then,
  ) = _$LoyaltyBenefitModelDTOCopyWithImpl<$Res, LoyaltyBenefitModelDTO>;
  @useResult
  $Res call({String image, String code, String title, String description});
}

/// @nodoc
class _$LoyaltyBenefitModelDTOCopyWithImpl<
  $Res,
  $Val extends LoyaltyBenefitModelDTO
>
    implements $LoyaltyBenefitModelDTOCopyWith<$Res> {
  _$LoyaltyBenefitModelDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LoyaltyBenefitModelDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? image = null,
    Object? code = null,
    Object? title = null,
    Object? description = null,
  }) {
    return _then(
      _value.copyWith(
            image:
                null == image
                    ? _value.image
                    : image // ignore: cast_nullable_to_non_nullable
                        as String,
            code:
                null == code
                    ? _value.code
                    : code // ignore: cast_nullable_to_non_nullable
                        as String,
            title:
                null == title
                    ? _value.title
                    : title // ignore: cast_nullable_to_non_nullable
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
abstract class _$$LoyaltyBenefitModelDTOImplCopyWith<$Res>
    implements $LoyaltyBenefitModelDTOCopyWith<$Res> {
  factory _$$LoyaltyBenefitModelDTOImplCopyWith(
    _$LoyaltyBenefitModelDTOImpl value,
    $Res Function(_$LoyaltyBenefitModelDTOImpl) then,
  ) = __$$LoyaltyBenefitModelDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String image, String code, String title, String description});
}

/// @nodoc
class __$$LoyaltyBenefitModelDTOImplCopyWithImpl<$Res>
    extends
        _$LoyaltyBenefitModelDTOCopyWithImpl<$Res, _$LoyaltyBenefitModelDTOImpl>
    implements _$$LoyaltyBenefitModelDTOImplCopyWith<$Res> {
  __$$LoyaltyBenefitModelDTOImplCopyWithImpl(
    _$LoyaltyBenefitModelDTOImpl _value,
    $Res Function(_$LoyaltyBenefitModelDTOImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LoyaltyBenefitModelDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? image = null,
    Object? code = null,
    Object? title = null,
    Object? description = null,
  }) {
    return _then(
      _$LoyaltyBenefitModelDTOImpl(
        image:
            null == image
                ? _value.image
                : image // ignore: cast_nullable_to_non_nullable
                    as String,
        code:
            null == code
                ? _value.code
                : code // ignore: cast_nullable_to_non_nullable
                    as String,
        title:
            null == title
                ? _value.title
                : title // ignore: cast_nullable_to_non_nullable
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
class _$LoyaltyBenefitModelDTOImpl implements _LoyaltyBenefitModelDTO {
  const _$LoyaltyBenefitModelDTOImpl({
    required this.image,
    required this.code,
    required this.title,
    required this.description,
  });

  factory _$LoyaltyBenefitModelDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$LoyaltyBenefitModelDTOImplFromJson(json);

  @override
  final String image;
  @override
  final String code;
  @override
  final String title;
  @override
  final String description;

  @override
  String toString() {
    return 'LoyaltyBenefitModelDTO(image: $image, code: $code, title: $title, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoyaltyBenefitModelDTOImpl &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, image, code, title, description);

  /// Create a copy of LoyaltyBenefitModelDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoyaltyBenefitModelDTOImplCopyWith<_$LoyaltyBenefitModelDTOImpl>
  get copyWith =>
      __$$LoyaltyBenefitModelDTOImplCopyWithImpl<_$LoyaltyBenefitModelDTOImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$LoyaltyBenefitModelDTOImplToJson(this);
  }
}

abstract class _LoyaltyBenefitModelDTO implements LoyaltyBenefitModelDTO {
  const factory _LoyaltyBenefitModelDTO({
    required final String image,
    required final String code,
    required final String title,
    required final String description,
  }) = _$LoyaltyBenefitModelDTOImpl;

  factory _LoyaltyBenefitModelDTO.fromJson(Map<String, dynamic> json) =
      _$LoyaltyBenefitModelDTOImpl.fromJson;

  @override
  String get image;
  @override
  String get code;
  @override
  String get title;
  @override
  String get description;

  /// Create a copy of LoyaltyBenefitModelDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoyaltyBenefitModelDTOImplCopyWith<_$LoyaltyBenefitModelDTOImpl>
  get copyWith => throw _privateConstructorUsedError;
}
