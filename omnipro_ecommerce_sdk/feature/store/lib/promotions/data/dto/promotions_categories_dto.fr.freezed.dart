// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'promotions_categories_dto.fr.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PromotionsCategoriesDTO _$PromotionsCategoriesDTOFromJson(
    Map<String, dynamic> json) {
  return _PromotionsCategoriesDTO.fromJson(json);
}

/// @nodoc
mixin _$PromotionsCategoriesDTO {
  List<PromotionCategoriesDTO> get promotionsCategories =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PromotionsCategoriesDTOCopyWith<PromotionsCategoriesDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PromotionsCategoriesDTOCopyWith<$Res> {
  factory $PromotionsCategoriesDTOCopyWith(PromotionsCategoriesDTO value,
          $Res Function(PromotionsCategoriesDTO) then) =
      _$PromotionsCategoriesDTOCopyWithImpl<$Res, PromotionsCategoriesDTO>;
  @useResult
  $Res call({List<PromotionCategoriesDTO> promotionsCategories});
}

/// @nodoc
class _$PromotionsCategoriesDTOCopyWithImpl<$Res,
        $Val extends PromotionsCategoriesDTO>
    implements $PromotionsCategoriesDTOCopyWith<$Res> {
  _$PromotionsCategoriesDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? promotionsCategories = null,
  }) {
    return _then(_value.copyWith(
      promotionsCategories: null == promotionsCategories
          ? _value.promotionsCategories
          : promotionsCategories // ignore: cast_nullable_to_non_nullable
              as List<PromotionCategoriesDTO>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PromotionsCategoriesDTOImplCopyWith<$Res>
    implements $PromotionsCategoriesDTOCopyWith<$Res> {
  factory _$$PromotionsCategoriesDTOImplCopyWith(
          _$PromotionsCategoriesDTOImpl value,
          $Res Function(_$PromotionsCategoriesDTOImpl) then) =
      __$$PromotionsCategoriesDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<PromotionCategoriesDTO> promotionsCategories});
}

/// @nodoc
class __$$PromotionsCategoriesDTOImplCopyWithImpl<$Res>
    extends _$PromotionsCategoriesDTOCopyWithImpl<$Res,
        _$PromotionsCategoriesDTOImpl>
    implements _$$PromotionsCategoriesDTOImplCopyWith<$Res> {
  __$$PromotionsCategoriesDTOImplCopyWithImpl(
      _$PromotionsCategoriesDTOImpl _value,
      $Res Function(_$PromotionsCategoriesDTOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? promotionsCategories = null,
  }) {
    return _then(_$PromotionsCategoriesDTOImpl(
      promotionsCategories: null == promotionsCategories
          ? _value._promotionsCategories
          : promotionsCategories // ignore: cast_nullable_to_non_nullable
              as List<PromotionCategoriesDTO>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PromotionsCategoriesDTOImpl implements _PromotionsCategoriesDTO {
  const _$PromotionsCategoriesDTOImpl(
      {required final List<PromotionCategoriesDTO> promotionsCategories})
      : _promotionsCategories = promotionsCategories;

  factory _$PromotionsCategoriesDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$PromotionsCategoriesDTOImplFromJson(json);

  final List<PromotionCategoriesDTO> _promotionsCategories;
  @override
  List<PromotionCategoriesDTO> get promotionsCategories {
    if (_promotionsCategories is EqualUnmodifiableListView)
      return _promotionsCategories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_promotionsCategories);
  }

  @override
  String toString() {
    return 'PromotionsCategoriesDTO(promotionsCategories: $promotionsCategories)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PromotionsCategoriesDTOImpl &&
            const DeepCollectionEquality()
                .equals(other._promotionsCategories, _promotionsCategories));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_promotionsCategories));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PromotionsCategoriesDTOImplCopyWith<_$PromotionsCategoriesDTOImpl>
      get copyWith => __$$PromotionsCategoriesDTOImplCopyWithImpl<
          _$PromotionsCategoriesDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PromotionsCategoriesDTOImplToJson(
      this,
    );
  }
}

abstract class _PromotionsCategoriesDTO implements PromotionsCategoriesDTO {
  const factory _PromotionsCategoriesDTO(
          {required final List<PromotionCategoriesDTO> promotionsCategories}) =
      _$PromotionsCategoriesDTOImpl;

  factory _PromotionsCategoriesDTO.fromJson(Map<String, dynamic> json) =
      _$PromotionsCategoriesDTOImpl.fromJson;

  @override
  List<PromotionCategoriesDTO> get promotionsCategories;
  @override
  @JsonKey(ignore: true)
  _$$PromotionsCategoriesDTOImplCopyWith<_$PromotionsCategoriesDTOImpl>
      get copyWith => throw _privateConstructorUsedError;
}
