// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'charity_event_dto.fr.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CharityEventDTO _$CharityEventDTOFromJson(Map<String, dynamic> json) {
  return _CharityEventDTO.fromJson(json);
}

/// @nodoc
mixin _$CharityEventDTO {
  String get urlImage => throw _privateConstructorUsedError;
  String get urlPage => throw _privateConstructorUsedError;
  bool get isEnabled => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CharityEventDTOCopyWith<CharityEventDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CharityEventDTOCopyWith<$Res> {
  factory $CharityEventDTOCopyWith(
          CharityEventDTO value, $Res Function(CharityEventDTO) then) =
      _$CharityEventDTOCopyWithImpl<$Res, CharityEventDTO>;
  @useResult
  $Res call({String urlImage, String urlPage, bool isEnabled});
}

/// @nodoc
class _$CharityEventDTOCopyWithImpl<$Res, $Val extends CharityEventDTO>
    implements $CharityEventDTOCopyWith<$Res> {
  _$CharityEventDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? urlImage = null,
    Object? urlPage = null,
    Object? isEnabled = null,
  }) {
    return _then(_value.copyWith(
      urlImage: null == urlImage
          ? _value.urlImage
          : urlImage // ignore: cast_nullable_to_non_nullable
              as String,
      urlPage: null == urlPage
          ? _value.urlPage
          : urlPage // ignore: cast_nullable_to_non_nullable
              as String,
      isEnabled: null == isEnabled
          ? _value.isEnabled
          : isEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CharityEventDTOImplCopyWith<$Res>
    implements $CharityEventDTOCopyWith<$Res> {
  factory _$$CharityEventDTOImplCopyWith(_$CharityEventDTOImpl value,
          $Res Function(_$CharityEventDTOImpl) then) =
      __$$CharityEventDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String urlImage, String urlPage, bool isEnabled});
}

/// @nodoc
class __$$CharityEventDTOImplCopyWithImpl<$Res>
    extends _$CharityEventDTOCopyWithImpl<$Res, _$CharityEventDTOImpl>
    implements _$$CharityEventDTOImplCopyWith<$Res> {
  __$$CharityEventDTOImplCopyWithImpl(
      _$CharityEventDTOImpl _value, $Res Function(_$CharityEventDTOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? urlImage = null,
    Object? urlPage = null,
    Object? isEnabled = null,
  }) {
    return _then(_$CharityEventDTOImpl(
      urlImage: null == urlImage
          ? _value.urlImage
          : urlImage // ignore: cast_nullable_to_non_nullable
              as String,
      urlPage: null == urlPage
          ? _value.urlPage
          : urlPage // ignore: cast_nullable_to_non_nullable
              as String,
      isEnabled: null == isEnabled
          ? _value.isEnabled
          : isEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CharityEventDTOImpl implements _CharityEventDTO {
  const _$CharityEventDTOImpl(
      {required this.urlImage, required this.urlPage, required this.isEnabled});

  factory _$CharityEventDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$CharityEventDTOImplFromJson(json);

  @override
  final String urlImage;
  @override
  final String urlPage;
  @override
  final bool isEnabled;

  @override
  String toString() {
    return 'CharityEventDTO(urlImage: $urlImage, urlPage: $urlPage, isEnabled: $isEnabled)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CharityEventDTOImpl &&
            (identical(other.urlImage, urlImage) ||
                other.urlImage == urlImage) &&
            (identical(other.urlPage, urlPage) || other.urlPage == urlPage) &&
            (identical(other.isEnabled, isEnabled) ||
                other.isEnabled == isEnabled));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, urlImage, urlPage, isEnabled);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CharityEventDTOImplCopyWith<_$CharityEventDTOImpl> get copyWith =>
      __$$CharityEventDTOImplCopyWithImpl<_$CharityEventDTOImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CharityEventDTOImplToJson(
      this,
    );
  }
}

abstract class _CharityEventDTO implements CharityEventDTO {
  const factory _CharityEventDTO(
      {required final String urlImage,
      required final String urlPage,
      required final bool isEnabled}) = _$CharityEventDTOImpl;

  factory _CharityEventDTO.fromJson(Map<String, dynamic> json) =
      _$CharityEventDTOImpl.fromJson;

  @override
  String get urlImage;
  @override
  String get urlPage;
  @override
  bool get isEnabled;
  @override
  @JsonKey(ignore: true)
  _$$CharityEventDTOImplCopyWith<_$CharityEventDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
