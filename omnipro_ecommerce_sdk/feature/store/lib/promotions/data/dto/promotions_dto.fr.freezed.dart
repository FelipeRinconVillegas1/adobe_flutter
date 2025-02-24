// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'promotions_dto.fr.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PromotionsDTO _$PromotionsDTOFromJson(Map<String, dynamic> json) {
  return _PromotionsDTO.fromJson(json);
}

/// @nodoc
mixin _$PromotionsDTO {
  List<PromotionDTO> get promotions => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PromotionsDTOCopyWith<PromotionsDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PromotionsDTOCopyWith<$Res> {
  factory $PromotionsDTOCopyWith(
          PromotionsDTO value, $Res Function(PromotionsDTO) then) =
      _$PromotionsDTOCopyWithImpl<$Res, PromotionsDTO>;
  @useResult
  $Res call({List<PromotionDTO> promotions});
}

/// @nodoc
class _$PromotionsDTOCopyWithImpl<$Res, $Val extends PromotionsDTO>
    implements $PromotionsDTOCopyWith<$Res> {
  _$PromotionsDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? promotions = null,
  }) {
    return _then(_value.copyWith(
      promotions: null == promotions
          ? _value.promotions
          : promotions // ignore: cast_nullable_to_non_nullable
              as List<PromotionDTO>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PromotionsDTOImplCopyWith<$Res>
    implements $PromotionsDTOCopyWith<$Res> {
  factory _$$PromotionsDTOImplCopyWith(
          _$PromotionsDTOImpl value, $Res Function(_$PromotionsDTOImpl) then) =
      __$$PromotionsDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<PromotionDTO> promotions});
}

/// @nodoc
class __$$PromotionsDTOImplCopyWithImpl<$Res>
    extends _$PromotionsDTOCopyWithImpl<$Res, _$PromotionsDTOImpl>
    implements _$$PromotionsDTOImplCopyWith<$Res> {
  __$$PromotionsDTOImplCopyWithImpl(
      _$PromotionsDTOImpl _value, $Res Function(_$PromotionsDTOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? promotions = null,
  }) {
    return _then(_$PromotionsDTOImpl(
      promotions: null == promotions
          ? _value._promotions
          : promotions // ignore: cast_nullable_to_non_nullable
              as List<PromotionDTO>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PromotionsDTOImpl implements _PromotionsDTO {
  const _$PromotionsDTOImpl({required final List<PromotionDTO> promotions})
      : _promotions = promotions;

  factory _$PromotionsDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$PromotionsDTOImplFromJson(json);

  final List<PromotionDTO> _promotions;
  @override
  List<PromotionDTO> get promotions {
    if (_promotions is EqualUnmodifiableListView) return _promotions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_promotions);
  }

  @override
  String toString() {
    return 'PromotionsDTO(promotions: $promotions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PromotionsDTOImpl &&
            const DeepCollectionEquality()
                .equals(other._promotions, _promotions));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_promotions));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PromotionsDTOImplCopyWith<_$PromotionsDTOImpl> get copyWith =>
      __$$PromotionsDTOImplCopyWithImpl<_$PromotionsDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PromotionsDTOImplToJson(
      this,
    );
  }
}

abstract class _PromotionsDTO implements PromotionsDTO {
  const factory _PromotionsDTO({required final List<PromotionDTO> promotions}) =
      _$PromotionsDTOImpl;

  factory _PromotionsDTO.fromJson(Map<String, dynamic> json) =
      _$PromotionsDTOImpl.fromJson;

  @override
  List<PromotionDTO> get promotions;
  @override
  @JsonKey(ignore: true)
  _$$PromotionsDTOImplCopyWith<_$PromotionsDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
