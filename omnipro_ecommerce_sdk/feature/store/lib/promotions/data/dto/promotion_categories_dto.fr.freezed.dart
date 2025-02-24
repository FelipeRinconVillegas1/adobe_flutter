// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'promotion_categories_dto.fr.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PromotionCategoriesDTO _$PromotionCategoriesDTOFromJson(
    Map<String, dynamic> json) {
  return _PromotionCategoriesDTO.fromJson(json);
}

/// @nodoc
mixin _$PromotionCategoriesDTO {
  String get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String get urlImag => throw _privateConstructorUsedError;
  int get categoryId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PromotionCategoriesDTOCopyWith<PromotionCategoriesDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PromotionCategoriesDTOCopyWith<$Res> {
  factory $PromotionCategoriesDTOCopyWith(PromotionCategoriesDTO value,
          $Res Function(PromotionCategoriesDTO) then) =
      _$PromotionCategoriesDTOCopyWithImpl<$Res, PromotionCategoriesDTO>;
  @useResult
  $Res call({String name, String? description, String urlImag, int categoryId});
}

/// @nodoc
class _$PromotionCategoriesDTOCopyWithImpl<$Res,
        $Val extends PromotionCategoriesDTO>
    implements $PromotionCategoriesDTOCopyWith<$Res> {
  _$PromotionCategoriesDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? description = freezed,
    Object? urlImag = null,
    Object? categoryId = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      urlImag: null == urlImag
          ? _value.urlImag
          : urlImag // ignore: cast_nullable_to_non_nullable
              as String,
      categoryId: null == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PromotionCategoriesDTOImplCopyWith<$Res>
    implements $PromotionCategoriesDTOCopyWith<$Res> {
  factory _$$PromotionCategoriesDTOImplCopyWith(
          _$PromotionCategoriesDTOImpl value,
          $Res Function(_$PromotionCategoriesDTOImpl) then) =
      __$$PromotionCategoriesDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String? description, String urlImag, int categoryId});
}

/// @nodoc
class __$$PromotionCategoriesDTOImplCopyWithImpl<$Res>
    extends _$PromotionCategoriesDTOCopyWithImpl<$Res,
        _$PromotionCategoriesDTOImpl>
    implements _$$PromotionCategoriesDTOImplCopyWith<$Res> {
  __$$PromotionCategoriesDTOImplCopyWithImpl(
      _$PromotionCategoriesDTOImpl _value,
      $Res Function(_$PromotionCategoriesDTOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? description = freezed,
    Object? urlImag = null,
    Object? categoryId = null,
  }) {
    return _then(_$PromotionCategoriesDTOImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      urlImag: null == urlImag
          ? _value.urlImag
          : urlImag // ignore: cast_nullable_to_non_nullable
              as String,
      categoryId: null == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PromotionCategoriesDTOImpl implements _PromotionCategoriesDTO {
  const _$PromotionCategoriesDTOImpl(
      {required this.name,
      this.description,
      required this.urlImag,
      required this.categoryId});

  factory _$PromotionCategoriesDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$PromotionCategoriesDTOImplFromJson(json);

  @override
  final String name;
  @override
  final String? description;
  @override
  final String urlImag;
  @override
  final int categoryId;

  @override
  String toString() {
    return 'PromotionCategoriesDTO(name: $name, description: $description, urlImag: $urlImag, categoryId: $categoryId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PromotionCategoriesDTOImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.urlImag, urlImag) || other.urlImag == urlImag) &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, name, description, urlImag, categoryId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PromotionCategoriesDTOImplCopyWith<_$PromotionCategoriesDTOImpl>
      get copyWith => __$$PromotionCategoriesDTOImplCopyWithImpl<
          _$PromotionCategoriesDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PromotionCategoriesDTOImplToJson(
      this,
    );
  }
}

abstract class _PromotionCategoriesDTO implements PromotionCategoriesDTO {
  const factory _PromotionCategoriesDTO(
      {required final String name,
      final String? description,
      required final String urlImag,
      required final int categoryId}) = _$PromotionCategoriesDTOImpl;

  factory _PromotionCategoriesDTO.fromJson(Map<String, dynamic> json) =
      _$PromotionCategoriesDTOImpl.fromJson;

  @override
  String get name;
  @override
  String? get description;
  @override
  String get urlImag;
  @override
  int get categoryId;
  @override
  @JsonKey(ignore: true)
  _$$PromotionCategoriesDTOImplCopyWith<_$PromotionCategoriesDTOImpl>
      get copyWith => throw _privateConstructorUsedError;
}
