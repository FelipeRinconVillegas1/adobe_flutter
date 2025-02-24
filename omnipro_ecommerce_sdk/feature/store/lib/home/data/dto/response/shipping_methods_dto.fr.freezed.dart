// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'shipping_methods_dto.fr.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ShippingMethodsDTO _$ShippingMethodsDTOFromJson(Map<String, dynamic> json) {
  return _ShippingMethodsDTO.fromJson(json);
}

/// @nodoc
mixin _$ShippingMethodsDTO {
  List<ShippingMethodIemDTO> get getEnabledShippingMethods =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ShippingMethodsDTOCopyWith<ShippingMethodsDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShippingMethodsDTOCopyWith<$Res> {
  factory $ShippingMethodsDTOCopyWith(
          ShippingMethodsDTO value, $Res Function(ShippingMethodsDTO) then) =
      _$ShippingMethodsDTOCopyWithImpl<$Res, ShippingMethodsDTO>;
  @useResult
  $Res call({List<ShippingMethodIemDTO> getEnabledShippingMethods});
}

/// @nodoc
class _$ShippingMethodsDTOCopyWithImpl<$Res, $Val extends ShippingMethodsDTO>
    implements $ShippingMethodsDTOCopyWith<$Res> {
  _$ShippingMethodsDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? getEnabledShippingMethods = null,
  }) {
    return _then(_value.copyWith(
      getEnabledShippingMethods: null == getEnabledShippingMethods
          ? _value.getEnabledShippingMethods
          : getEnabledShippingMethods // ignore: cast_nullable_to_non_nullable
              as List<ShippingMethodIemDTO>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ShippingMethodsDTOImplCopyWith<$Res>
    implements $ShippingMethodsDTOCopyWith<$Res> {
  factory _$$ShippingMethodsDTOImplCopyWith(_$ShippingMethodsDTOImpl value,
          $Res Function(_$ShippingMethodsDTOImpl) then) =
      __$$ShippingMethodsDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<ShippingMethodIemDTO> getEnabledShippingMethods});
}

/// @nodoc
class __$$ShippingMethodsDTOImplCopyWithImpl<$Res>
    extends _$ShippingMethodsDTOCopyWithImpl<$Res, _$ShippingMethodsDTOImpl>
    implements _$$ShippingMethodsDTOImplCopyWith<$Res> {
  __$$ShippingMethodsDTOImplCopyWithImpl(_$ShippingMethodsDTOImpl _value,
      $Res Function(_$ShippingMethodsDTOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? getEnabledShippingMethods = null,
  }) {
    return _then(_$ShippingMethodsDTOImpl(
      getEnabledShippingMethods: null == getEnabledShippingMethods
          ? _value._getEnabledShippingMethods
          : getEnabledShippingMethods // ignore: cast_nullable_to_non_nullable
              as List<ShippingMethodIemDTO>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ShippingMethodsDTOImpl implements _ShippingMethodsDTO {
  const _$ShippingMethodsDTOImpl(
      {required final List<ShippingMethodIemDTO> getEnabledShippingMethods})
      : _getEnabledShippingMethods = getEnabledShippingMethods;

  factory _$ShippingMethodsDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$ShippingMethodsDTOImplFromJson(json);

  final List<ShippingMethodIemDTO> _getEnabledShippingMethods;
  @override
  List<ShippingMethodIemDTO> get getEnabledShippingMethods {
    if (_getEnabledShippingMethods is EqualUnmodifiableListView)
      return _getEnabledShippingMethods;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_getEnabledShippingMethods);
  }

  @override
  String toString() {
    return 'ShippingMethodsDTO(getEnabledShippingMethods: $getEnabledShippingMethods)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShippingMethodsDTOImpl &&
            const DeepCollectionEquality().equals(
                other._getEnabledShippingMethods, _getEnabledShippingMethods));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_getEnabledShippingMethods));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ShippingMethodsDTOImplCopyWith<_$ShippingMethodsDTOImpl> get copyWith =>
      __$$ShippingMethodsDTOImplCopyWithImpl<_$ShippingMethodsDTOImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ShippingMethodsDTOImplToJson(
      this,
    );
  }
}

abstract class _ShippingMethodsDTO implements ShippingMethodsDTO {
  const factory _ShippingMethodsDTO(
      {required final List<ShippingMethodIemDTO>
          getEnabledShippingMethods}) = _$ShippingMethodsDTOImpl;

  factory _ShippingMethodsDTO.fromJson(Map<String, dynamic> json) =
      _$ShippingMethodsDTOImpl.fromJson;

  @override
  List<ShippingMethodIemDTO> get getEnabledShippingMethods;
  @override
  @JsonKey(ignore: true)
  _$$ShippingMethodsDTOImplCopyWith<_$ShippingMethodsDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ShippingMethodIemDTO _$ShippingMethodIemDTOFromJson(Map<String, dynamic> json) {
  return _ShippingMethodIemDTO.fromJson(json);
}

/// @nodoc
mixin _$ShippingMethodIemDTO {
  @JsonKey(name: 'method_code')
  String get methodCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'method_label')
  String get methodLabel => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ShippingMethodIemDTOCopyWith<ShippingMethodIemDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShippingMethodIemDTOCopyWith<$Res> {
  factory $ShippingMethodIemDTOCopyWith(ShippingMethodIemDTO value,
          $Res Function(ShippingMethodIemDTO) then) =
      _$ShippingMethodIemDTOCopyWithImpl<$Res, ShippingMethodIemDTO>;
  @useResult
  $Res call(
      {@JsonKey(name: 'method_code') String methodCode,
      @JsonKey(name: 'method_label') String methodLabel,
      String? image});
}

/// @nodoc
class _$ShippingMethodIemDTOCopyWithImpl<$Res,
        $Val extends ShippingMethodIemDTO>
    implements $ShippingMethodIemDTOCopyWith<$Res> {
  _$ShippingMethodIemDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? methodCode = null,
    Object? methodLabel = null,
    Object? image = freezed,
  }) {
    return _then(_value.copyWith(
      methodCode: null == methodCode
          ? _value.methodCode
          : methodCode // ignore: cast_nullable_to_non_nullable
              as String,
      methodLabel: null == methodLabel
          ? _value.methodLabel
          : methodLabel // ignore: cast_nullable_to_non_nullable
              as String,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ShippingMethodIemDTOImplCopyWith<$Res>
    implements $ShippingMethodIemDTOCopyWith<$Res> {
  factory _$$ShippingMethodIemDTOImplCopyWith(_$ShippingMethodIemDTOImpl value,
          $Res Function(_$ShippingMethodIemDTOImpl) then) =
      __$$ShippingMethodIemDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'method_code') String methodCode,
      @JsonKey(name: 'method_label') String methodLabel,
      String? image});
}

/// @nodoc
class __$$ShippingMethodIemDTOImplCopyWithImpl<$Res>
    extends _$ShippingMethodIemDTOCopyWithImpl<$Res, _$ShippingMethodIemDTOImpl>
    implements _$$ShippingMethodIemDTOImplCopyWith<$Res> {
  __$$ShippingMethodIemDTOImplCopyWithImpl(_$ShippingMethodIemDTOImpl _value,
      $Res Function(_$ShippingMethodIemDTOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? methodCode = null,
    Object? methodLabel = null,
    Object? image = freezed,
  }) {
    return _then(_$ShippingMethodIemDTOImpl(
      methodCode: null == methodCode
          ? _value.methodCode
          : methodCode // ignore: cast_nullable_to_non_nullable
              as String,
      methodLabel: null == methodLabel
          ? _value.methodLabel
          : methodLabel // ignore: cast_nullable_to_non_nullable
              as String,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ShippingMethodIemDTOImpl implements _ShippingMethodIemDTO {
  const _$ShippingMethodIemDTOImpl(
      {@JsonKey(name: 'method_code') required this.methodCode,
      @JsonKey(name: 'method_label') required this.methodLabel,
      this.image});

  factory _$ShippingMethodIemDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$ShippingMethodIemDTOImplFromJson(json);

  @override
  @JsonKey(name: 'method_code')
  final String methodCode;
  @override
  @JsonKey(name: 'method_label')
  final String methodLabel;
  @override
  final String? image;

  @override
  String toString() {
    return 'ShippingMethodIemDTO(methodCode: $methodCode, methodLabel: $methodLabel, image: $image)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShippingMethodIemDTOImpl &&
            (identical(other.methodCode, methodCode) ||
                other.methodCode == methodCode) &&
            (identical(other.methodLabel, methodLabel) ||
                other.methodLabel == methodLabel) &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, methodCode, methodLabel, image);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ShippingMethodIemDTOImplCopyWith<_$ShippingMethodIemDTOImpl>
      get copyWith =>
          __$$ShippingMethodIemDTOImplCopyWithImpl<_$ShippingMethodIemDTOImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ShippingMethodIemDTOImplToJson(
      this,
    );
  }
}

abstract class _ShippingMethodIemDTO implements ShippingMethodIemDTO {
  const factory _ShippingMethodIemDTO(
      {@JsonKey(name: 'method_code') required final String methodCode,
      @JsonKey(name: 'method_label') required final String methodLabel,
      final String? image}) = _$ShippingMethodIemDTOImpl;

  factory _ShippingMethodIemDTO.fromJson(Map<String, dynamic> json) =
      _$ShippingMethodIemDTOImpl.fromJson;

  @override
  @JsonKey(name: 'method_code')
  String get methodCode;
  @override
  @JsonKey(name: 'method_label')
  String get methodLabel;
  @override
  String? get image;
  @override
  @JsonKey(ignore: true)
  _$$ShippingMethodIemDTOImplCopyWith<_$ShippingMethodIemDTOImpl>
      get copyWith => throw _privateConstructorUsedError;
}
