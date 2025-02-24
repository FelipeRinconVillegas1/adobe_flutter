// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'delete_customer_input_dto.fr.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

DeleteCustomerInputDTO _$DeleteCustomerInputDTOFromJson(
  Map<String, dynamic> json,
) {
  return _DeleteCustomerInputDTO.fromJson(json);
}

/// @nodoc
mixin _$DeleteCustomerInputDTO {
  String get password => throw _privateConstructorUsedError;

  /// Serializes this DeleteCustomerInputDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DeleteCustomerInputDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DeleteCustomerInputDTOCopyWith<DeleteCustomerInputDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeleteCustomerInputDTOCopyWith<$Res> {
  factory $DeleteCustomerInputDTOCopyWith(
    DeleteCustomerInputDTO value,
    $Res Function(DeleteCustomerInputDTO) then,
  ) = _$DeleteCustomerInputDTOCopyWithImpl<$Res, DeleteCustomerInputDTO>;
  @useResult
  $Res call({String password});
}

/// @nodoc
class _$DeleteCustomerInputDTOCopyWithImpl<
  $Res,
  $Val extends DeleteCustomerInputDTO
>
    implements $DeleteCustomerInputDTOCopyWith<$Res> {
  _$DeleteCustomerInputDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DeleteCustomerInputDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? password = null}) {
    return _then(
      _value.copyWith(
            password:
                null == password
                    ? _value.password
                    : password // ignore: cast_nullable_to_non_nullable
                        as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$DeleteCustomerInputDTOImplCopyWith<$Res>
    implements $DeleteCustomerInputDTOCopyWith<$Res> {
  factory _$$DeleteCustomerInputDTOImplCopyWith(
    _$DeleteCustomerInputDTOImpl value,
    $Res Function(_$DeleteCustomerInputDTOImpl) then,
  ) = __$$DeleteCustomerInputDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String password});
}

/// @nodoc
class __$$DeleteCustomerInputDTOImplCopyWithImpl<$Res>
    extends
        _$DeleteCustomerInputDTOCopyWithImpl<$Res, _$DeleteCustomerInputDTOImpl>
    implements _$$DeleteCustomerInputDTOImplCopyWith<$Res> {
  __$$DeleteCustomerInputDTOImplCopyWithImpl(
    _$DeleteCustomerInputDTOImpl _value,
    $Res Function(_$DeleteCustomerInputDTOImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DeleteCustomerInputDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? password = null}) {
    return _then(
      _$DeleteCustomerInputDTOImpl(
        password:
            null == password
                ? _value.password
                : password // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$DeleteCustomerInputDTOImpl implements _DeleteCustomerInputDTO {
  const _$DeleteCustomerInputDTOImpl({required this.password});

  factory _$DeleteCustomerInputDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$DeleteCustomerInputDTOImplFromJson(json);

  @override
  final String password;

  @override
  String toString() {
    return 'DeleteCustomerInputDTO(password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteCustomerInputDTOImpl &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, password);

  /// Create a copy of DeleteCustomerInputDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteCustomerInputDTOImplCopyWith<_$DeleteCustomerInputDTOImpl>
  get copyWith =>
      __$$DeleteCustomerInputDTOImplCopyWithImpl<_$DeleteCustomerInputDTOImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$DeleteCustomerInputDTOImplToJson(this);
  }
}

abstract class _DeleteCustomerInputDTO implements DeleteCustomerInputDTO {
  const factory _DeleteCustomerInputDTO({required final String password}) =
      _$DeleteCustomerInputDTOImpl;

  factory _DeleteCustomerInputDTO.fromJson(Map<String, dynamic> json) =
      _$DeleteCustomerInputDTOImpl.fromJson;

  @override
  String get password;

  /// Create a copy of DeleteCustomerInputDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeleteCustomerInputDTOImplCopyWith<_$DeleteCustomerInputDTOImpl>
  get copyWith => throw _privateConstructorUsedError;
}
