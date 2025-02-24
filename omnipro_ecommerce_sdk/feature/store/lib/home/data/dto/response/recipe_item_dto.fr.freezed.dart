// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'recipe_item_dto.fr.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RecipeItemDTO _$RecipeItemDTOFromJson(Map<String, dynamic> json) {
  return _RecipeItemDTO.fromJson(json);
}

/// @nodoc
mixin _$RecipeItemDTO {
  String get name => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  String get sku => throw _privateConstructorUsedError;
  @JsonKey(name: 'product_link')
  String get productLink => throw _privateConstructorUsedError;

  /// Serializes this RecipeItemDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RecipeItemDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RecipeItemDTOCopyWith<RecipeItemDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecipeItemDTOCopyWith<$Res> {
  factory $RecipeItemDTOCopyWith(
          RecipeItemDTO value, $Res Function(RecipeItemDTO) then) =
      _$RecipeItemDTOCopyWithImpl<$Res, RecipeItemDTO>;
  @useResult
  $Res call(
      {String name,
      String image,
      String sku,
      @JsonKey(name: 'product_link') String productLink});
}

/// @nodoc
class _$RecipeItemDTOCopyWithImpl<$Res, $Val extends RecipeItemDTO>
    implements $RecipeItemDTOCopyWith<$Res> {
  _$RecipeItemDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RecipeItemDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? image = null,
    Object? sku = null,
    Object? productLink = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      sku: null == sku
          ? _value.sku
          : sku // ignore: cast_nullable_to_non_nullable
              as String,
      productLink: null == productLink
          ? _value.productLink
          : productLink // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RecipeItemDTOImplCopyWith<$Res>
    implements $RecipeItemDTOCopyWith<$Res> {
  factory _$$RecipeItemDTOImplCopyWith(
          _$RecipeItemDTOImpl value, $Res Function(_$RecipeItemDTOImpl) then) =
      __$$RecipeItemDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String image,
      String sku,
      @JsonKey(name: 'product_link') String productLink});
}

/// @nodoc
class __$$RecipeItemDTOImplCopyWithImpl<$Res>
    extends _$RecipeItemDTOCopyWithImpl<$Res, _$RecipeItemDTOImpl>
    implements _$$RecipeItemDTOImplCopyWith<$Res> {
  __$$RecipeItemDTOImplCopyWithImpl(
      _$RecipeItemDTOImpl _value, $Res Function(_$RecipeItemDTOImpl) _then)
      : super(_value, _then);

  /// Create a copy of RecipeItemDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? image = null,
    Object? sku = null,
    Object? productLink = null,
  }) {
    return _then(_$RecipeItemDTOImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      sku: null == sku
          ? _value.sku
          : sku // ignore: cast_nullable_to_non_nullable
              as String,
      productLink: null == productLink
          ? _value.productLink
          : productLink // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RecipeItemDTOImpl implements _RecipeItemDTO {
  const _$RecipeItemDTOImpl(
      {required this.name,
      required this.image,
      required this.sku,
      @JsonKey(name: 'product_link') required this.productLink});

  factory _$RecipeItemDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$RecipeItemDTOImplFromJson(json);

  @override
  final String name;
  @override
  final String image;
  @override
  final String sku;
  @override
  @JsonKey(name: 'product_link')
  final String productLink;

  @override
  String toString() {
    return 'RecipeItemDTO(name: $name, image: $image, sku: $sku, productLink: $productLink)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecipeItemDTOImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.sku, sku) || other.sku == sku) &&
            (identical(other.productLink, productLink) ||
                other.productLink == productLink));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, image, sku, productLink);

  /// Create a copy of RecipeItemDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RecipeItemDTOImplCopyWith<_$RecipeItemDTOImpl> get copyWith =>
      __$$RecipeItemDTOImplCopyWithImpl<_$RecipeItemDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RecipeItemDTOImplToJson(
      this,
    );
  }
}

abstract class _RecipeItemDTO implements RecipeItemDTO {
  const factory _RecipeItemDTO(
          {required final String name,
          required final String image,
          required final String sku,
          @JsonKey(name: 'product_link') required final String productLink}) =
      _$RecipeItemDTOImpl;

  factory _RecipeItemDTO.fromJson(Map<String, dynamic> json) =
      _$RecipeItemDTOImpl.fromJson;

  @override
  String get name;
  @override
  String get image;
  @override
  String get sku;
  @override
  @JsonKey(name: 'product_link')
  String get productLink;

  /// Create a copy of RecipeItemDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RecipeItemDTOImplCopyWith<_$RecipeItemDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
