// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'last_store_in_compute_entity.fr.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

LastStoreInComputeEntity _$LastStoreInComputeEntityFromJson(
  Map<String, dynamic> json,
) {
  return _LastStoreInComputeEntity.fromJson(json);
}

/// @nodoc
mixin _$LastStoreInComputeEntity {
  String get code => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  /// Serializes this LastStoreInComputeEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LastStoreInComputeEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LastStoreInComputeEntityCopyWith<LastStoreInComputeEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LastStoreInComputeEntityCopyWith<$Res> {
  factory $LastStoreInComputeEntityCopyWith(
    LastStoreInComputeEntity value,
    $Res Function(LastStoreInComputeEntity) then,
  ) = _$LastStoreInComputeEntityCopyWithImpl<$Res, LastStoreInComputeEntity>;
  @useResult
  $Res call({String code, String name});
}

/// @nodoc
class _$LastStoreInComputeEntityCopyWithImpl<
  $Res,
  $Val extends LastStoreInComputeEntity
>
    implements $LastStoreInComputeEntityCopyWith<$Res> {
  _$LastStoreInComputeEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LastStoreInComputeEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? code = null, Object? name = null}) {
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
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$LastStoreInComputeEntityImplCopyWith<$Res>
    implements $LastStoreInComputeEntityCopyWith<$Res> {
  factory _$$LastStoreInComputeEntityImplCopyWith(
    _$LastStoreInComputeEntityImpl value,
    $Res Function(_$LastStoreInComputeEntityImpl) then,
  ) = __$$LastStoreInComputeEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String code, String name});
}

/// @nodoc
class __$$LastStoreInComputeEntityImplCopyWithImpl<$Res>
    extends
        _$LastStoreInComputeEntityCopyWithImpl<
          $Res,
          _$LastStoreInComputeEntityImpl
        >
    implements _$$LastStoreInComputeEntityImplCopyWith<$Res> {
  __$$LastStoreInComputeEntityImplCopyWithImpl(
    _$LastStoreInComputeEntityImpl _value,
    $Res Function(_$LastStoreInComputeEntityImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LastStoreInComputeEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? code = null, Object? name = null}) {
    return _then(
      _$LastStoreInComputeEntityImpl(
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
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$LastStoreInComputeEntityImpl implements _LastStoreInComputeEntity {
  const _$LastStoreInComputeEntityImpl({
    required this.code,
    required this.name,
  });

  factory _$LastStoreInComputeEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$LastStoreInComputeEntityImplFromJson(json);

  @override
  final String code;
  @override
  final String name;

  @override
  String toString() {
    return 'LastStoreInComputeEntity(code: $code, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LastStoreInComputeEntityImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, code, name);

  /// Create a copy of LastStoreInComputeEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LastStoreInComputeEntityImplCopyWith<_$LastStoreInComputeEntityImpl>
  get copyWith => __$$LastStoreInComputeEntityImplCopyWithImpl<
    _$LastStoreInComputeEntityImpl
  >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LastStoreInComputeEntityImplToJson(this);
  }
}

abstract class _LastStoreInComputeEntity implements LastStoreInComputeEntity {
  const factory _LastStoreInComputeEntity({
    required final String code,
    required final String name,
  }) = _$LastStoreInComputeEntityImpl;

  factory _LastStoreInComputeEntity.fromJson(Map<String, dynamic> json) =
      _$LastStoreInComputeEntityImpl.fromJson;

  @override
  String get code;
  @override
  String get name;

  /// Create a copy of LastStoreInComputeEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LastStoreInComputeEntityImplCopyWith<_$LastStoreInComputeEntityImpl>
  get copyWith => throw _privateConstructorUsedError;
}
