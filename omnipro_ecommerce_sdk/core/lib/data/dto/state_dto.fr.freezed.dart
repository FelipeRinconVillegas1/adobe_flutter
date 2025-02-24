// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'state_dto.fr.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

StateDTO _$StateDTOFromJson(Map<String, dynamic> json) {
  return _StateDTO.fromJson(json);
}

/// @nodoc
mixin _$StateDTO {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get code => throw _privateConstructorUsedError;

  /// Serializes this StateDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StateDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StateDTOCopyWith<StateDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StateDTOCopyWith<$Res> {
  factory $StateDTOCopyWith(StateDTO value, $Res Function(StateDTO) then) =
      _$StateDTOCopyWithImpl<$Res, StateDTO>;
  @useResult
  $Res call({int id, String name, String code});
}

/// @nodoc
class _$StateDTOCopyWithImpl<$Res, $Val extends StateDTO>
    implements $StateDTOCopyWith<$Res> {
  _$StateDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StateDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? id = null, Object? name = null, Object? code = null}) {
    return _then(
      _value.copyWith(
            id:
                null == id
                    ? _value.id
                    : id // ignore: cast_nullable_to_non_nullable
                        as int,
            name:
                null == name
                    ? _value.name
                    : name // ignore: cast_nullable_to_non_nullable
                        as String,
            code:
                null == code
                    ? _value.code
                    : code // ignore: cast_nullable_to_non_nullable
                        as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$StateDTOImplCopyWith<$Res>
    implements $StateDTOCopyWith<$Res> {
  factory _$$StateDTOImplCopyWith(
    _$StateDTOImpl value,
    $Res Function(_$StateDTOImpl) then,
  ) = __$$StateDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name, String code});
}

/// @nodoc
class __$$StateDTOImplCopyWithImpl<$Res>
    extends _$StateDTOCopyWithImpl<$Res, _$StateDTOImpl>
    implements _$$StateDTOImplCopyWith<$Res> {
  __$$StateDTOImplCopyWithImpl(
    _$StateDTOImpl _value,
    $Res Function(_$StateDTOImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of StateDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? id = null, Object? name = null, Object? code = null}) {
    return _then(
      _$StateDTOImpl(
        id:
            null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                    as int,
        name:
            null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                    as String,
        code:
            null == code
                ? _value.code
                : code // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$StateDTOImpl implements _StateDTO {
  const _$StateDTOImpl({
    required this.id,
    required this.name,
    required this.code,
  });

  factory _$StateDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$StateDTOImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String code;

  @override
  String toString() {
    return 'StateDTO(id: $id, name: $name, code: $code)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StateDTOImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.code, code) || other.code == code));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, code);

  /// Create a copy of StateDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StateDTOImplCopyWith<_$StateDTOImpl> get copyWith =>
      __$$StateDTOImplCopyWithImpl<_$StateDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StateDTOImplToJson(this);
  }
}

abstract class _StateDTO implements StateDTO {
  const factory _StateDTO({
    required final int id,
    required final String name,
    required final String code,
  }) = _$StateDTOImpl;

  factory _StateDTO.fromJson(Map<String, dynamic> json) =
      _$StateDTOImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get code;

  /// Create a copy of StateDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StateDTOImplCopyWith<_$StateDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
