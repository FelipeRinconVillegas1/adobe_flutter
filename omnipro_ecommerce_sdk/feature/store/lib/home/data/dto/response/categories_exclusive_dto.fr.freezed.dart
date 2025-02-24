// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'categories_exclusive_dto.fr.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CategoriesExclusiveDTO _$CategoriesExclusiveDTOFromJson(
    Map<String, dynamic> json) {
  return _CategoriesExclusiveDTO.fromJson(json);
}

/// @nodoc
mixin _$CategoriesExclusiveDTO {
  @JsonKey(name: 'image_url')
  String get imageUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;

  /// Serializes this CategoriesExclusiveDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CategoriesExclusiveDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CategoriesExclusiveDTOCopyWith<CategoriesExclusiveDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoriesExclusiveDTOCopyWith<$Res> {
  factory $CategoriesExclusiveDTOCopyWith(CategoriesExclusiveDTO value,
          $Res Function(CategoriesExclusiveDTO) then) =
      _$CategoriesExclusiveDTOCopyWithImpl<$Res, CategoriesExclusiveDTO>;
  @useResult
  $Res call(
      {@JsonKey(name: 'image_url') String imageUrl,
      @JsonKey(name: 'name') String name});
}

/// @nodoc
class _$CategoriesExclusiveDTOCopyWithImpl<$Res,
        $Val extends CategoriesExclusiveDTO>
    implements $CategoriesExclusiveDTOCopyWith<$Res> {
  _$CategoriesExclusiveDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CategoriesExclusiveDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imageUrl = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CategoriesExclusiveDTOImplCopyWith<$Res>
    implements $CategoriesExclusiveDTOCopyWith<$Res> {
  factory _$$CategoriesExclusiveDTOImplCopyWith(
          _$CategoriesExclusiveDTOImpl value,
          $Res Function(_$CategoriesExclusiveDTOImpl) then) =
      __$$CategoriesExclusiveDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'image_url') String imageUrl,
      @JsonKey(name: 'name') String name});
}

/// @nodoc
class __$$CategoriesExclusiveDTOImplCopyWithImpl<$Res>
    extends _$CategoriesExclusiveDTOCopyWithImpl<$Res,
        _$CategoriesExclusiveDTOImpl>
    implements _$$CategoriesExclusiveDTOImplCopyWith<$Res> {
  __$$CategoriesExclusiveDTOImplCopyWithImpl(
      _$CategoriesExclusiveDTOImpl _value,
      $Res Function(_$CategoriesExclusiveDTOImpl) _then)
      : super(_value, _then);

  /// Create a copy of CategoriesExclusiveDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imageUrl = null,
    Object? name = null,
  }) {
    return _then(_$CategoriesExclusiveDTOImpl(
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CategoriesExclusiveDTOImpl implements _CategoriesExclusiveDTO {
  const _$CategoriesExclusiveDTOImpl(
      {@JsonKey(name: 'image_url') required this.imageUrl,
      @JsonKey(name: 'name') required this.name});

  factory _$CategoriesExclusiveDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$CategoriesExclusiveDTOImplFromJson(json);

  @override
  @JsonKey(name: 'image_url')
  final String imageUrl;
  @override
  @JsonKey(name: 'name')
  final String name;

  @override
  String toString() {
    return 'CategoriesExclusiveDTO(imageUrl: $imageUrl, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoriesExclusiveDTOImpl &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, imageUrl, name);

  /// Create a copy of CategoriesExclusiveDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoriesExclusiveDTOImplCopyWith<_$CategoriesExclusiveDTOImpl>
      get copyWith => __$$CategoriesExclusiveDTOImplCopyWithImpl<
          _$CategoriesExclusiveDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CategoriesExclusiveDTOImplToJson(
      this,
    );
  }
}

abstract class _CategoriesExclusiveDTO implements CategoriesExclusiveDTO {
  const factory _CategoriesExclusiveDTO(
          {@JsonKey(name: 'image_url') required final String imageUrl,
          @JsonKey(name: 'name') required final String name}) =
      _$CategoriesExclusiveDTOImpl;

  factory _CategoriesExclusiveDTO.fromJson(Map<String, dynamic> json) =
      _$CategoriesExclusiveDTOImpl.fromJson;

  @override
  @JsonKey(name: 'image_url')
  String get imageUrl;
  @override
  @JsonKey(name: 'name')
  String get name;

  /// Create a copy of CategoriesExclusiveDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CategoriesExclusiveDTOImplCopyWith<_$CategoriesExclusiveDTOImpl>
      get copyWith => throw _privateConstructorUsedError;
}
