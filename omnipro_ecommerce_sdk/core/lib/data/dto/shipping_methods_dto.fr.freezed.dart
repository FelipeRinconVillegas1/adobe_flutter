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
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ShippingMethodsDTO _$ShippingMethodsDTOFromJson(Map<String, dynamic> json) {
  return _ShippingMethodsDTO.fromJson(json);
}

/// @nodoc
mixin _$ShippingMethodsDTO {
  List<ShippingMethodItemDTO> get items => throw _privateConstructorUsedError;

  /// Serializes this ShippingMethodsDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ShippingMethodsDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ShippingMethodsDTOCopyWith<ShippingMethodsDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShippingMethodsDTOCopyWith<$Res> {
  factory $ShippingMethodsDTOCopyWith(
    ShippingMethodsDTO value,
    $Res Function(ShippingMethodsDTO) then,
  ) = _$ShippingMethodsDTOCopyWithImpl<$Res, ShippingMethodsDTO>;
  @useResult
  $Res call({List<ShippingMethodItemDTO> items});
}

/// @nodoc
class _$ShippingMethodsDTOCopyWithImpl<$Res, $Val extends ShippingMethodsDTO>
    implements $ShippingMethodsDTOCopyWith<$Res> {
  _$ShippingMethodsDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ShippingMethodsDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? items = null}) {
    return _then(
      _value.copyWith(
            items:
                null == items
                    ? _value.items
                    : items // ignore: cast_nullable_to_non_nullable
                        as List<ShippingMethodItemDTO>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ShippingMethodsDTOImplCopyWith<$Res>
    implements $ShippingMethodsDTOCopyWith<$Res> {
  factory _$$ShippingMethodsDTOImplCopyWith(
    _$ShippingMethodsDTOImpl value,
    $Res Function(_$ShippingMethodsDTOImpl) then,
  ) = __$$ShippingMethodsDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<ShippingMethodItemDTO> items});
}

/// @nodoc
class __$$ShippingMethodsDTOImplCopyWithImpl<$Res>
    extends _$ShippingMethodsDTOCopyWithImpl<$Res, _$ShippingMethodsDTOImpl>
    implements _$$ShippingMethodsDTOImplCopyWith<$Res> {
  __$$ShippingMethodsDTOImplCopyWithImpl(
    _$ShippingMethodsDTOImpl _value,
    $Res Function(_$ShippingMethodsDTOImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ShippingMethodsDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? items = null}) {
    return _then(
      _$ShippingMethodsDTOImpl(
        items:
            null == items
                ? _value._items
                : items // ignore: cast_nullable_to_non_nullable
                    as List<ShippingMethodItemDTO>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ShippingMethodsDTOImpl implements _ShippingMethodsDTO {
  const _$ShippingMethodsDTOImpl({
    required final List<ShippingMethodItemDTO> items,
  }) : _items = items;

  factory _$ShippingMethodsDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$ShippingMethodsDTOImplFromJson(json);

  final List<ShippingMethodItemDTO> _items;
  @override
  List<ShippingMethodItemDTO> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  String toString() {
    return 'ShippingMethodsDTO(items: $items)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShippingMethodsDTOImpl &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_items));

  /// Create a copy of ShippingMethodsDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ShippingMethodsDTOImplCopyWith<_$ShippingMethodsDTOImpl> get copyWith =>
      __$$ShippingMethodsDTOImplCopyWithImpl<_$ShippingMethodsDTOImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ShippingMethodsDTOImplToJson(this);
  }
}

abstract class _ShippingMethodsDTO implements ShippingMethodsDTO {
  const factory _ShippingMethodsDTO({
    required final List<ShippingMethodItemDTO> items,
  }) = _$ShippingMethodsDTOImpl;

  factory _ShippingMethodsDTO.fromJson(Map<String, dynamic> json) =
      _$ShippingMethodsDTOImpl.fromJson;

  @override
  List<ShippingMethodItemDTO> get items;

  /// Create a copy of ShippingMethodsDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ShippingMethodsDTOImplCopyWith<_$ShippingMethodsDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ShippingMethodItemDTO _$ShippingMethodItemDTOFromJson(
  Map<String, dynamic> json,
) {
  return _ShippingMethodIemDTO.fromJson(json);
}

/// @nodoc
mixin _$ShippingMethodItemDTO {
  String get code => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;

  /// Serializes this ShippingMethodItemDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ShippingMethodItemDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ShippingMethodItemDTOCopyWith<ShippingMethodItemDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShippingMethodItemDTOCopyWith<$Res> {
  factory $ShippingMethodItemDTOCopyWith(
    ShippingMethodItemDTO value,
    $Res Function(ShippingMethodItemDTO) then,
  ) = _$ShippingMethodItemDTOCopyWithImpl<$Res, ShippingMethodItemDTO>;
  @useResult
  $Res call({String code, String name, String message});
}

/// @nodoc
class _$ShippingMethodItemDTOCopyWithImpl<
  $Res,
  $Val extends ShippingMethodItemDTO
>
    implements $ShippingMethodItemDTOCopyWith<$Res> {
  _$ShippingMethodItemDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ShippingMethodItemDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? name = null,
    Object? message = null,
  }) {
    return _then(
      _value.copyWith(
            code:
                null == code
                    ? _value.code
                    : code // ignore: cast_nullable_to_non_nullable
                        as String,
            name:
                null == name
                    ? _value.name
                    : name // ignore: cast_nullable_to_non_nullable
                        as String,
            message:
                null == message
                    ? _value.message
                    : message // ignore: cast_nullable_to_non_nullable
                        as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ShippingMethodIemDTOImplCopyWith<$Res>
    implements $ShippingMethodItemDTOCopyWith<$Res> {
  factory _$$ShippingMethodIemDTOImplCopyWith(
    _$ShippingMethodIemDTOImpl value,
    $Res Function(_$ShippingMethodIemDTOImpl) then,
  ) = __$$ShippingMethodIemDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String code, String name, String message});
}

/// @nodoc
class __$$ShippingMethodIemDTOImplCopyWithImpl<$Res>
    extends
        _$ShippingMethodItemDTOCopyWithImpl<$Res, _$ShippingMethodIemDTOImpl>
    implements _$$ShippingMethodIemDTOImplCopyWith<$Res> {
  __$$ShippingMethodIemDTOImplCopyWithImpl(
    _$ShippingMethodIemDTOImpl _value,
    $Res Function(_$ShippingMethodIemDTOImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ShippingMethodItemDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? name = null,
    Object? message = null,
  }) {
    return _then(
      _$ShippingMethodIemDTOImpl(
        code:
            null == code
                ? _value.code
                : code // ignore: cast_nullable_to_non_nullable
                    as String,
        name:
            null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                    as String,
        message:
            null == message
                ? _value.message
                : message // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ShippingMethodIemDTOImpl implements _ShippingMethodIemDTO {
  const _$ShippingMethodIemDTOImpl({
    required this.code,
    required this.name,
    required this.message,
  });

  factory _$ShippingMethodIemDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$ShippingMethodIemDTOImplFromJson(json);

  @override
  final String code;
  @override
  final String name;
  @override
  final String message;

  @override
  String toString() {
    return 'ShippingMethodItemDTO(code: $code, name: $name, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShippingMethodIemDTOImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, code, name, message);

  /// Create a copy of ShippingMethodItemDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ShippingMethodIemDTOImplCopyWith<_$ShippingMethodIemDTOImpl>
  get copyWith =>
      __$$ShippingMethodIemDTOImplCopyWithImpl<_$ShippingMethodIemDTOImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ShippingMethodIemDTOImplToJson(this);
  }
}

abstract class _ShippingMethodIemDTO implements ShippingMethodItemDTO {
  const factory _ShippingMethodIemDTO({
    required final String code,
    required final String name,
    required final String message,
  }) = _$ShippingMethodIemDTOImpl;

  factory _ShippingMethodIemDTO.fromJson(Map<String, dynamic> json) =
      _$ShippingMethodIemDTOImpl.fromJson;

  @override
  String get code;
  @override
  String get name;
  @override
  String get message;

  /// Create a copy of ShippingMethodItemDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ShippingMethodIemDTOImplCopyWith<_$ShippingMethodIemDTOImpl>
  get copyWith => throw _privateConstructorUsedError;
}
