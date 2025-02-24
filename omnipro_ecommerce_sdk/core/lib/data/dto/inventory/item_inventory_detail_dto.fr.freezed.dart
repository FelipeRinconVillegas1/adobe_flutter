// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'item_inventory_detail_dto.fr.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ItemInventoryDetailDTO _$ItemInventoryDetailDTOFromJson(
  Map<String, dynamic> json,
) {
  return _ItemInventoryDetailDTO.fromJson(json);
}

/// @nodoc
mixin _$ItemInventoryDetailDTO {
  String get sku => throw _privateConstructorUsedError;
  int get qty => throw _privateConstructorUsedError;

  /// Serializes this ItemInventoryDetailDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ItemInventoryDetailDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ItemInventoryDetailDTOCopyWith<ItemInventoryDetailDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemInventoryDetailDTOCopyWith<$Res> {
  factory $ItemInventoryDetailDTOCopyWith(
    ItemInventoryDetailDTO value,
    $Res Function(ItemInventoryDetailDTO) then,
  ) = _$ItemInventoryDetailDTOCopyWithImpl<$Res, ItemInventoryDetailDTO>;
  @useResult
  $Res call({String sku, int qty});
}

/// @nodoc
class _$ItemInventoryDetailDTOCopyWithImpl<
  $Res,
  $Val extends ItemInventoryDetailDTO
>
    implements $ItemInventoryDetailDTOCopyWith<$Res> {
  _$ItemInventoryDetailDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ItemInventoryDetailDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? sku = null, Object? qty = null}) {
    return _then(
      _value.copyWith(
            sku:
                null == sku
                    ? _value.sku
                    : sku // ignore: cast_nullable_to_non_nullable
                        as String,
            qty:
                null == qty
                    ? _value.qty
                    : qty // ignore: cast_nullable_to_non_nullable
                        as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ItemInventoryDetailDTOImplCopyWith<$Res>
    implements $ItemInventoryDetailDTOCopyWith<$Res> {
  factory _$$ItemInventoryDetailDTOImplCopyWith(
    _$ItemInventoryDetailDTOImpl value,
    $Res Function(_$ItemInventoryDetailDTOImpl) then,
  ) = __$$ItemInventoryDetailDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String sku, int qty});
}

/// @nodoc
class __$$ItemInventoryDetailDTOImplCopyWithImpl<$Res>
    extends
        _$ItemInventoryDetailDTOCopyWithImpl<$Res, _$ItemInventoryDetailDTOImpl>
    implements _$$ItemInventoryDetailDTOImplCopyWith<$Res> {
  __$$ItemInventoryDetailDTOImplCopyWithImpl(
    _$ItemInventoryDetailDTOImpl _value,
    $Res Function(_$ItemInventoryDetailDTOImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ItemInventoryDetailDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? sku = null, Object? qty = null}) {
    return _then(
      _$ItemInventoryDetailDTOImpl(
        sku:
            null == sku
                ? _value.sku
                : sku // ignore: cast_nullable_to_non_nullable
                    as String,
        qty:
            null == qty
                ? _value.qty
                : qty // ignore: cast_nullable_to_non_nullable
                    as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ItemInventoryDetailDTOImpl implements _ItemInventoryDetailDTO {
  const _$ItemInventoryDetailDTOImpl({required this.sku, required this.qty});

  factory _$ItemInventoryDetailDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$ItemInventoryDetailDTOImplFromJson(json);

  @override
  final String sku;
  @override
  final int qty;

  @override
  String toString() {
    return 'ItemInventoryDetailDTO(sku: $sku, qty: $qty)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ItemInventoryDetailDTOImpl &&
            (identical(other.sku, sku) || other.sku == sku) &&
            (identical(other.qty, qty) || other.qty == qty));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, sku, qty);

  /// Create a copy of ItemInventoryDetailDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ItemInventoryDetailDTOImplCopyWith<_$ItemInventoryDetailDTOImpl>
  get copyWith =>
      __$$ItemInventoryDetailDTOImplCopyWithImpl<_$ItemInventoryDetailDTOImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ItemInventoryDetailDTOImplToJson(this);
  }
}

abstract class _ItemInventoryDetailDTO implements ItemInventoryDetailDTO {
  const factory _ItemInventoryDetailDTO({
    required final String sku,
    required final int qty,
  }) = _$ItemInventoryDetailDTOImpl;

  factory _ItemInventoryDetailDTO.fromJson(Map<String, dynamic> json) =
      _$ItemInventoryDetailDTOImpl.fromJson;

  @override
  String get sku;
  @override
  int get qty;

  /// Create a copy of ItemInventoryDetailDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ItemInventoryDetailDTOImplCopyWith<_$ItemInventoryDetailDTOImpl>
  get copyWith => throw _privateConstructorUsedError;
}
