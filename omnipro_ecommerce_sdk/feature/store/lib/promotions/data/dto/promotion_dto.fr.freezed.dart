// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'promotion_dto.fr.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PromotionDTO _$PromotionDTOFromJson(Map<String, dynamic> json) {
  return _PromotionDTO.fromJson(json);
}

/// @nodoc
mixin _$PromotionDTO {
  String get name => throw _privateConstructorUsedError;
  String get urlImage => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PromotionDTOCopyWith<PromotionDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PromotionDTOCopyWith<$Res> {
  factory $PromotionDTOCopyWith(
          PromotionDTO value, $Res Function(PromotionDTO) then) =
      _$PromotionDTOCopyWithImpl<$Res, PromotionDTO>;
  @useResult
  $Res call({String name, String urlImage, int id});
}

/// @nodoc
class _$PromotionDTOCopyWithImpl<$Res, $Val extends PromotionDTO>
    implements $PromotionDTOCopyWith<$Res> {
  _$PromotionDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? urlImage = null,
    Object? id = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      urlImage: null == urlImage
          ? _value.urlImage
          : urlImage // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PromotionDTOImplCopyWith<$Res>
    implements $PromotionDTOCopyWith<$Res> {
  factory _$$PromotionDTOImplCopyWith(
          _$PromotionDTOImpl value, $Res Function(_$PromotionDTOImpl) then) =
      __$$PromotionDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String urlImage, int id});
}

/// @nodoc
class __$$PromotionDTOImplCopyWithImpl<$Res>
    extends _$PromotionDTOCopyWithImpl<$Res, _$PromotionDTOImpl>
    implements _$$PromotionDTOImplCopyWith<$Res> {
  __$$PromotionDTOImplCopyWithImpl(
      _$PromotionDTOImpl _value, $Res Function(_$PromotionDTOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? urlImage = null,
    Object? id = null,
  }) {
    return _then(_$PromotionDTOImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      urlImage: null == urlImage
          ? _value.urlImage
          : urlImage // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PromotionDTOImpl implements _PromotionDTO {
  const _$PromotionDTOImpl(
      {required this.name, required this.urlImage, required this.id});

  factory _$PromotionDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$PromotionDTOImplFromJson(json);

  @override
  final String name;
  @override
  final String urlImage;
  @override
  final int id;

  @override
  String toString() {
    return 'PromotionDTO(name: $name, urlImage: $urlImage, id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PromotionDTOImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.urlImage, urlImage) ||
                other.urlImage == urlImage) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, urlImage, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PromotionDTOImplCopyWith<_$PromotionDTOImpl> get copyWith =>
      __$$PromotionDTOImplCopyWithImpl<_$PromotionDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PromotionDTOImplToJson(
      this,
    );
  }
}

abstract class _PromotionDTO implements PromotionDTO {
  const factory _PromotionDTO(
      {required final String name,
      required final String urlImage,
      required final int id}) = _$PromotionDTOImpl;

  factory _PromotionDTO.fromJson(Map<String, dynamic> json) =
      _$PromotionDTOImpl.fromJson;

  @override
  String get name;
  @override
  String get urlImage;
  @override
  int get id;
  @override
  @JsonKey(ignore: true)
  _$$PromotionDTOImplCopyWith<_$PromotionDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
