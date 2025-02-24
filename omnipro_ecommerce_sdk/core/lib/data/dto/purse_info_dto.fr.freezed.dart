// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'purse_info_dto.fr.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

PurseInfoListDto _$PurseInfoListDtoFromJson(Map<String, dynamic> json) {
  return _PurseInfoListDto.fromJson(json);
}

/// @nodoc
mixin _$PurseInfoListDto {
  @JsonKey(name: 'purse_info_list')
  List<PurseInfoDto> get purseInfoList => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  String get userId => throw _privateConstructorUsedError;

  /// Serializes this PurseInfoListDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PurseInfoListDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PurseInfoListDtoCopyWith<PurseInfoListDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PurseInfoListDtoCopyWith<$Res> {
  factory $PurseInfoListDtoCopyWith(
    PurseInfoListDto value,
    $Res Function(PurseInfoListDto) then,
  ) = _$PurseInfoListDtoCopyWithImpl<$Res, PurseInfoListDto>;
  @useResult
  $Res call({
    @JsonKey(name: 'purse_info_list') List<PurseInfoDto> purseInfoList,
    @JsonKey(name: 'user_id') String userId,
  });
}

/// @nodoc
class _$PurseInfoListDtoCopyWithImpl<$Res, $Val extends PurseInfoListDto>
    implements $PurseInfoListDtoCopyWith<$Res> {
  _$PurseInfoListDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PurseInfoListDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? purseInfoList = null, Object? userId = null}) {
    return _then(
      _value.copyWith(
            purseInfoList:
                null == purseInfoList
                    ? _value.purseInfoList
                    : purseInfoList // ignore: cast_nullable_to_non_nullable
                        as List<PurseInfoDto>,
            userId:
                null == userId
                    ? _value.userId
                    : userId // ignore: cast_nullable_to_non_nullable
                        as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$PurseInfoListDtoImplCopyWith<$Res>
    implements $PurseInfoListDtoCopyWith<$Res> {
  factory _$$PurseInfoListDtoImplCopyWith(
    _$PurseInfoListDtoImpl value,
    $Res Function(_$PurseInfoListDtoImpl) then,
  ) = __$$PurseInfoListDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'purse_info_list') List<PurseInfoDto> purseInfoList,
    @JsonKey(name: 'user_id') String userId,
  });
}

/// @nodoc
class __$$PurseInfoListDtoImplCopyWithImpl<$Res>
    extends _$PurseInfoListDtoCopyWithImpl<$Res, _$PurseInfoListDtoImpl>
    implements _$$PurseInfoListDtoImplCopyWith<$Res> {
  __$$PurseInfoListDtoImplCopyWithImpl(
    _$PurseInfoListDtoImpl _value,
    $Res Function(_$PurseInfoListDtoImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PurseInfoListDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? purseInfoList = null, Object? userId = null}) {
    return _then(
      _$PurseInfoListDtoImpl(
        purseInfoList:
            null == purseInfoList
                ? _value._purseInfoList
                : purseInfoList // ignore: cast_nullable_to_non_nullable
                    as List<PurseInfoDto>,
        userId:
            null == userId
                ? _value.userId
                : userId // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$PurseInfoListDtoImpl implements _PurseInfoListDto {
  const _$PurseInfoListDtoImpl({
    @JsonKey(name: 'purse_info_list')
    required final List<PurseInfoDto> purseInfoList,
    @JsonKey(name: 'user_id') required this.userId,
  }) : _purseInfoList = purseInfoList;

  factory _$PurseInfoListDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$PurseInfoListDtoImplFromJson(json);

  final List<PurseInfoDto> _purseInfoList;
  @override
  @JsonKey(name: 'purse_info_list')
  List<PurseInfoDto> get purseInfoList {
    if (_purseInfoList is EqualUnmodifiableListView) return _purseInfoList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_purseInfoList);
  }

  @override
  @JsonKey(name: 'user_id')
  final String userId;

  @override
  String toString() {
    return 'PurseInfoListDto(purseInfoList: $purseInfoList, userId: $userId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PurseInfoListDtoImpl &&
            const DeepCollectionEquality().equals(
              other._purseInfoList,
              _purseInfoList,
            ) &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_purseInfoList),
    userId,
  );

  /// Create a copy of PurseInfoListDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PurseInfoListDtoImplCopyWith<_$PurseInfoListDtoImpl> get copyWith =>
      __$$PurseInfoListDtoImplCopyWithImpl<_$PurseInfoListDtoImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$PurseInfoListDtoImplToJson(this);
  }
}

abstract class _PurseInfoListDto implements PurseInfoListDto {
  const factory _PurseInfoListDto({
    @JsonKey(name: 'purse_info_list')
    required final List<PurseInfoDto> purseInfoList,
    @JsonKey(name: 'user_id') required final String userId,
  }) = _$PurseInfoListDtoImpl;

  factory _PurseInfoListDto.fromJson(Map<String, dynamic> json) =
      _$PurseInfoListDtoImpl.fromJson;

  @override
  @JsonKey(name: 'purse_info_list')
  List<PurseInfoDto> get purseInfoList;
  @override
  @JsonKey(name: 'user_id')
  String get userId;

  /// Create a copy of PurseInfoListDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PurseInfoListDtoImplCopyWith<_$PurseInfoListDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PurseInfoDto _$PurseInfoDtoFromJson(Map<String, dynamic> json) {
  return _PurseInfoDto.fromJson(json);
}

/// @nodoc
mixin _$PurseInfoDto {
  @JsonKey(name: 'purse_id')
  String get purseId => throw _privateConstructorUsedError;
  double get balance => throw _privateConstructorUsedError;

  /// Serializes this PurseInfoDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PurseInfoDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PurseInfoDtoCopyWith<PurseInfoDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PurseInfoDtoCopyWith<$Res> {
  factory $PurseInfoDtoCopyWith(
    PurseInfoDto value,
    $Res Function(PurseInfoDto) then,
  ) = _$PurseInfoDtoCopyWithImpl<$Res, PurseInfoDto>;
  @useResult
  $Res call({@JsonKey(name: 'purse_id') String purseId, double balance});
}

/// @nodoc
class _$PurseInfoDtoCopyWithImpl<$Res, $Val extends PurseInfoDto>
    implements $PurseInfoDtoCopyWith<$Res> {
  _$PurseInfoDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PurseInfoDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? purseId = null, Object? balance = null}) {
    return _then(
      _value.copyWith(
            purseId:
                null == purseId
                    ? _value.purseId
                    : purseId // ignore: cast_nullable_to_non_nullable
                        as String,
            balance:
                null == balance
                    ? _value.balance
                    : balance // ignore: cast_nullable_to_non_nullable
                        as double,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$PurseInfoDtoImplCopyWith<$Res>
    implements $PurseInfoDtoCopyWith<$Res> {
  factory _$$PurseInfoDtoImplCopyWith(
    _$PurseInfoDtoImpl value,
    $Res Function(_$PurseInfoDtoImpl) then,
  ) = __$$PurseInfoDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'purse_id') String purseId, double balance});
}

/// @nodoc
class __$$PurseInfoDtoImplCopyWithImpl<$Res>
    extends _$PurseInfoDtoCopyWithImpl<$Res, _$PurseInfoDtoImpl>
    implements _$$PurseInfoDtoImplCopyWith<$Res> {
  __$$PurseInfoDtoImplCopyWithImpl(
    _$PurseInfoDtoImpl _value,
    $Res Function(_$PurseInfoDtoImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PurseInfoDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? purseId = null, Object? balance = null}) {
    return _then(
      _$PurseInfoDtoImpl(
        purseId:
            null == purseId
                ? _value.purseId
                : purseId // ignore: cast_nullable_to_non_nullable
                    as String,
        balance:
            null == balance
                ? _value.balance
                : balance // ignore: cast_nullable_to_non_nullable
                    as double,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$PurseInfoDtoImpl implements _PurseInfoDto {
  const _$PurseInfoDtoImpl({
    @JsonKey(name: 'purse_id') required this.purseId,
    required this.balance,
  });

  factory _$PurseInfoDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$PurseInfoDtoImplFromJson(json);

  @override
  @JsonKey(name: 'purse_id')
  final String purseId;
  @override
  final double balance;

  @override
  String toString() {
    return 'PurseInfoDto(purseId: $purseId, balance: $balance)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PurseInfoDtoImpl &&
            (identical(other.purseId, purseId) || other.purseId == purseId) &&
            (identical(other.balance, balance) || other.balance == balance));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, purseId, balance);

  /// Create a copy of PurseInfoDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PurseInfoDtoImplCopyWith<_$PurseInfoDtoImpl> get copyWith =>
      __$$PurseInfoDtoImplCopyWithImpl<_$PurseInfoDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PurseInfoDtoImplToJson(this);
  }
}

abstract class _PurseInfoDto implements PurseInfoDto {
  const factory _PurseInfoDto({
    @JsonKey(name: 'purse_id') required final String purseId,
    required final double balance,
  }) = _$PurseInfoDtoImpl;

  factory _PurseInfoDto.fromJson(Map<String, dynamic> json) =
      _$PurseInfoDtoImpl.fromJson;

  @override
  @JsonKey(name: 'purse_id')
  String get purseId;
  @override
  double get balance;

  /// Create a copy of PurseInfoDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PurseInfoDtoImplCopyWith<_$PurseInfoDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
