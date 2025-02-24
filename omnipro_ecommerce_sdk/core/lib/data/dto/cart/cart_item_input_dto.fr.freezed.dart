// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cart_item_input_dto.fr.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

CartItemInputDTO _$CartItemInputDTOFromJson(Map<String, dynamic> json) {
  return _CartItemInputDTO.fromJson(json);
}

/// @nodoc
mixin _$CartItemInputDTO {
  double get quantity => throw _privateConstructorUsedError;
  String get sku =>
      throw _privateConstructorUsedError; // ignore: invalid_annotation_target
  @JsonKey(name: 'entered_options')
  List<EnteredOptionInputDTO>? get enteredOptions =>
      throw _privateConstructorUsedError; // ignore: invalid_annotation_target
  @JsonKey(name: 'parent_sku')
  String? get parentSku => throw _privateConstructorUsedError; // ignore: invalid_annotation_target
  @JsonKey(name: 'selected_options')
  List<String>? get selectedOptions => throw _privateConstructorUsedError;

  /// Serializes this CartItemInputDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CartItemInputDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CartItemInputDTOCopyWith<CartItemInputDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartItemInputDTOCopyWith<$Res> {
  factory $CartItemInputDTOCopyWith(
    CartItemInputDTO value,
    $Res Function(CartItemInputDTO) then,
  ) = _$CartItemInputDTOCopyWithImpl<$Res, CartItemInputDTO>;
  @useResult
  $Res call({
    double quantity,
    String sku,
    @JsonKey(name: 'entered_options')
    List<EnteredOptionInputDTO>? enteredOptions,
    @JsonKey(name: 'parent_sku') String? parentSku,
    @JsonKey(name: 'selected_options') List<String>? selectedOptions,
  });
}

/// @nodoc
class _$CartItemInputDTOCopyWithImpl<$Res, $Val extends CartItemInputDTO>
    implements $CartItemInputDTOCopyWith<$Res> {
  _$CartItemInputDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CartItemInputDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? quantity = null,
    Object? sku = null,
    Object? enteredOptions = freezed,
    Object? parentSku = freezed,
    Object? selectedOptions = freezed,
  }) {
    return _then(
      _value.copyWith(
            quantity:
                null == quantity
                    ? _value.quantity
                    : quantity // ignore: cast_nullable_to_non_nullable
                        as double,
            sku:
                null == sku
                    ? _value.sku
                    : sku // ignore: cast_nullable_to_non_nullable
                        as String,
            enteredOptions:
                freezed == enteredOptions
                    ? _value.enteredOptions
                    : enteredOptions // ignore: cast_nullable_to_non_nullable
                        as List<EnteredOptionInputDTO>?,
            parentSku:
                freezed == parentSku
                    ? _value.parentSku
                    : parentSku // ignore: cast_nullable_to_non_nullable
                        as String?,
            selectedOptions:
                freezed == selectedOptions
                    ? _value.selectedOptions
                    : selectedOptions // ignore: cast_nullable_to_non_nullable
                        as List<String>?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$CartItemInputDTOImplCopyWith<$Res>
    implements $CartItemInputDTOCopyWith<$Res> {
  factory _$$CartItemInputDTOImplCopyWith(
    _$CartItemInputDTOImpl value,
    $Res Function(_$CartItemInputDTOImpl) then,
  ) = __$$CartItemInputDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    double quantity,
    String sku,
    @JsonKey(name: 'entered_options')
    List<EnteredOptionInputDTO>? enteredOptions,
    @JsonKey(name: 'parent_sku') String? parentSku,
    @JsonKey(name: 'selected_options') List<String>? selectedOptions,
  });
}

/// @nodoc
class __$$CartItemInputDTOImplCopyWithImpl<$Res>
    extends _$CartItemInputDTOCopyWithImpl<$Res, _$CartItemInputDTOImpl>
    implements _$$CartItemInputDTOImplCopyWith<$Res> {
  __$$CartItemInputDTOImplCopyWithImpl(
    _$CartItemInputDTOImpl _value,
    $Res Function(_$CartItemInputDTOImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CartItemInputDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? quantity = null,
    Object? sku = null,
    Object? enteredOptions = freezed,
    Object? parentSku = freezed,
    Object? selectedOptions = freezed,
  }) {
    return _then(
      _$CartItemInputDTOImpl(
        quantity:
            null == quantity
                ? _value.quantity
                : quantity // ignore: cast_nullable_to_non_nullable
                    as double,
        sku:
            null == sku
                ? _value.sku
                : sku // ignore: cast_nullable_to_non_nullable
                    as String,
        enteredOptions:
            freezed == enteredOptions
                ? _value._enteredOptions
                : enteredOptions // ignore: cast_nullable_to_non_nullable
                    as List<EnteredOptionInputDTO>?,
        parentSku:
            freezed == parentSku
                ? _value.parentSku
                : parentSku // ignore: cast_nullable_to_non_nullable
                    as String?,
        selectedOptions:
            freezed == selectedOptions
                ? _value._selectedOptions
                : selectedOptions // ignore: cast_nullable_to_non_nullable
                    as List<String>?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$CartItemInputDTOImpl implements _CartItemInputDTO {
  const _$CartItemInputDTOImpl({
    required this.quantity,
    required this.sku,
    @JsonKey(name: 'entered_options')
    final List<EnteredOptionInputDTO>? enteredOptions,
    @JsonKey(name: 'parent_sku') this.parentSku,
    @JsonKey(name: 'selected_options') final List<String>? selectedOptions,
  }) : _enteredOptions = enteredOptions,
       _selectedOptions = selectedOptions;

  factory _$CartItemInputDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$CartItemInputDTOImplFromJson(json);

  @override
  final double quantity;
  @override
  final String sku;
  // ignore: invalid_annotation_target
  final List<EnteredOptionInputDTO>? _enteredOptions;
  // ignore: invalid_annotation_target
  @override
  @JsonKey(name: 'entered_options')
  List<EnteredOptionInputDTO>? get enteredOptions {
    final value = _enteredOptions;
    if (value == null) return null;
    if (_enteredOptions is EqualUnmodifiableListView) return _enteredOptions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  // ignore: invalid_annotation_target
  @override
  @JsonKey(name: 'parent_sku')
  final String? parentSku;
  // ignore: invalid_annotation_target
  final List<String>? _selectedOptions;
  // ignore: invalid_annotation_target
  @override
  @JsonKey(name: 'selected_options')
  List<String>? get selectedOptions {
    final value = _selectedOptions;
    if (value == null) return null;
    if (_selectedOptions is EqualUnmodifiableListView) return _selectedOptions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'CartItemInputDTO(quantity: $quantity, sku: $sku, enteredOptions: $enteredOptions, parentSku: $parentSku, selectedOptions: $selectedOptions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CartItemInputDTOImpl &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.sku, sku) || other.sku == sku) &&
            const DeepCollectionEquality().equals(
              other._enteredOptions,
              _enteredOptions,
            ) &&
            (identical(other.parentSku, parentSku) ||
                other.parentSku == parentSku) &&
            const DeepCollectionEquality().equals(
              other._selectedOptions,
              _selectedOptions,
            ));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    quantity,
    sku,
    const DeepCollectionEquality().hash(_enteredOptions),
    parentSku,
    const DeepCollectionEquality().hash(_selectedOptions),
  );

  /// Create a copy of CartItemInputDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CartItemInputDTOImplCopyWith<_$CartItemInputDTOImpl> get copyWith =>
      __$$CartItemInputDTOImplCopyWithImpl<_$CartItemInputDTOImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$CartItemInputDTOImplToJson(this);
  }
}

abstract class _CartItemInputDTO implements CartItemInputDTO {
  const factory _CartItemInputDTO({
    required final double quantity,
    required final String sku,
    @JsonKey(name: 'entered_options')
    final List<EnteredOptionInputDTO>? enteredOptions,
    @JsonKey(name: 'parent_sku') final String? parentSku,
    @JsonKey(name: 'selected_options') final List<String>? selectedOptions,
  }) = _$CartItemInputDTOImpl;

  factory _CartItemInputDTO.fromJson(Map<String, dynamic> json) =
      _$CartItemInputDTOImpl.fromJson;

  @override
  double get quantity;
  @override
  String get sku; // ignore: invalid_annotation_target
  @override
  @JsonKey(name: 'entered_options')
  List<EnteredOptionInputDTO>? get enteredOptions; // ignore: invalid_annotation_target
  @override
  @JsonKey(name: 'parent_sku')
  String? get parentSku; // ignore: invalid_annotation_target
  @override
  @JsonKey(name: 'selected_options')
  List<String>? get selectedOptions;

  /// Create a copy of CartItemInputDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CartItemInputDTOImplCopyWith<_$CartItemInputDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

EnteredOptionInputDTO _$EnteredOptionInputDTOFromJson(
  Map<String, dynamic> json,
) {
  return _EnteredOptionInputDTO.fromJson(json);
}

/// @nodoc
mixin _$EnteredOptionInputDTO {
  String get uid => throw _privateConstructorUsedError;
  String get value => throw _privateConstructorUsedError;

  /// Serializes this EnteredOptionInputDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of EnteredOptionInputDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EnteredOptionInputDTOCopyWith<EnteredOptionInputDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EnteredOptionInputDTOCopyWith<$Res> {
  factory $EnteredOptionInputDTOCopyWith(
    EnteredOptionInputDTO value,
    $Res Function(EnteredOptionInputDTO) then,
  ) = _$EnteredOptionInputDTOCopyWithImpl<$Res, EnteredOptionInputDTO>;
  @useResult
  $Res call({String uid, String value});
}

/// @nodoc
class _$EnteredOptionInputDTOCopyWithImpl<
  $Res,
  $Val extends EnteredOptionInputDTO
>
    implements $EnteredOptionInputDTOCopyWith<$Res> {
  _$EnteredOptionInputDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EnteredOptionInputDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? uid = null, Object? value = null}) {
    return _then(
      _value.copyWith(
            uid:
                null == uid
                    ? _value.uid
                    : uid // ignore: cast_nullable_to_non_nullable
                        as String,
            value:
                null == value
                    ? _value.value
                    : value // ignore: cast_nullable_to_non_nullable
                        as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$EnteredOptionInputDTOImplCopyWith<$Res>
    implements $EnteredOptionInputDTOCopyWith<$Res> {
  factory _$$EnteredOptionInputDTOImplCopyWith(
    _$EnteredOptionInputDTOImpl value,
    $Res Function(_$EnteredOptionInputDTOImpl) then,
  ) = __$$EnteredOptionInputDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String uid, String value});
}

/// @nodoc
class __$$EnteredOptionInputDTOImplCopyWithImpl<$Res>
    extends
        _$EnteredOptionInputDTOCopyWithImpl<$Res, _$EnteredOptionInputDTOImpl>
    implements _$$EnteredOptionInputDTOImplCopyWith<$Res> {
  __$$EnteredOptionInputDTOImplCopyWithImpl(
    _$EnteredOptionInputDTOImpl _value,
    $Res Function(_$EnteredOptionInputDTOImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of EnteredOptionInputDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? uid = null, Object? value = null}) {
    return _then(
      _$EnteredOptionInputDTOImpl(
        uid:
            null == uid
                ? _value.uid
                : uid // ignore: cast_nullable_to_non_nullable
                    as String,
        value:
            null == value
                ? _value.value
                : value // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$EnteredOptionInputDTOImpl implements _EnteredOptionInputDTO {
  const _$EnteredOptionInputDTOImpl({required this.uid, required this.value});

  factory _$EnteredOptionInputDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$EnteredOptionInputDTOImplFromJson(json);

  @override
  final String uid;
  @override
  final String value;

  @override
  String toString() {
    return 'EnteredOptionInputDTO(uid: $uid, value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EnteredOptionInputDTOImpl &&
            (identical(other.uid, uid) || other.uid == uid) &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, uid, value);

  /// Create a copy of EnteredOptionInputDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EnteredOptionInputDTOImplCopyWith<_$EnteredOptionInputDTOImpl>
  get copyWith =>
      __$$EnteredOptionInputDTOImplCopyWithImpl<_$EnteredOptionInputDTOImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$EnteredOptionInputDTOImplToJson(this);
  }
}

abstract class _EnteredOptionInputDTO implements EnteredOptionInputDTO {
  const factory _EnteredOptionInputDTO({
    required final String uid,
    required final String value,
  }) = _$EnteredOptionInputDTOImpl;

  factory _EnteredOptionInputDTO.fromJson(Map<String, dynamic> json) =
      _$EnteredOptionInputDTOImpl.fromJson;

  @override
  String get uid;
  @override
  String get value;

  /// Create a copy of EnteredOptionInputDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EnteredOptionInputDTOImplCopyWith<_$EnteredOptionInputDTOImpl>
  get copyWith => throw _privateConstructorUsedError;
}
