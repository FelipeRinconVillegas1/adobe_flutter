// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'purse_info_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$PurseInfoEntity {
  String get purseId => throw _privateConstructorUsedError;
  double get balance => throw _privateConstructorUsedError;

  /// Create a copy of PurseInfoEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PurseInfoEntityCopyWith<PurseInfoEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PurseInfoEntityCopyWith<$Res> {
  factory $PurseInfoEntityCopyWith(
    PurseInfoEntity value,
    $Res Function(PurseInfoEntity) then,
  ) = _$PurseInfoEntityCopyWithImpl<$Res, PurseInfoEntity>;
  @useResult
  $Res call({String purseId, double balance});
}

/// @nodoc
class _$PurseInfoEntityCopyWithImpl<$Res, $Val extends PurseInfoEntity>
    implements $PurseInfoEntityCopyWith<$Res> {
  _$PurseInfoEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PurseInfoEntity
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
abstract class _$$PurseInfoEntityImplCopyWith<$Res>
    implements $PurseInfoEntityCopyWith<$Res> {
  factory _$$PurseInfoEntityImplCopyWith(
    _$PurseInfoEntityImpl value,
    $Res Function(_$PurseInfoEntityImpl) then,
  ) = __$$PurseInfoEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String purseId, double balance});
}

/// @nodoc
class __$$PurseInfoEntityImplCopyWithImpl<$Res>
    extends _$PurseInfoEntityCopyWithImpl<$Res, _$PurseInfoEntityImpl>
    implements _$$PurseInfoEntityImplCopyWith<$Res> {
  __$$PurseInfoEntityImplCopyWithImpl(
    _$PurseInfoEntityImpl _value,
    $Res Function(_$PurseInfoEntityImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PurseInfoEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? purseId = null, Object? balance = null}) {
    return _then(
      _$PurseInfoEntityImpl(
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

class _$PurseInfoEntityImpl implements _PurseInfoEntity {
  const _$PurseInfoEntityImpl({required this.purseId, required this.balance});

  @override
  final String purseId;
  @override
  final double balance;

  @override
  String toString() {
    return 'PurseInfoEntity(purseId: $purseId, balance: $balance)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PurseInfoEntityImpl &&
            (identical(other.purseId, purseId) || other.purseId == purseId) &&
            (identical(other.balance, balance) || other.balance == balance));
  }

  @override
  int get hashCode => Object.hash(runtimeType, purseId, balance);

  /// Create a copy of PurseInfoEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PurseInfoEntityImplCopyWith<_$PurseInfoEntityImpl> get copyWith =>
      __$$PurseInfoEntityImplCopyWithImpl<_$PurseInfoEntityImpl>(
        this,
        _$identity,
      );
}

abstract class _PurseInfoEntity implements PurseInfoEntity {
  const factory _PurseInfoEntity({
    required final String purseId,
    required final double balance,
  }) = _$PurseInfoEntityImpl;

  @override
  String get purseId;
  @override
  double get balance;

  /// Create a copy of PurseInfoEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PurseInfoEntityImplCopyWith<_$PurseInfoEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PurseInfoEntityList {
  List<PurseInfoEntity> get purseInfoList => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;

  /// Create a copy of PurseInfoEntityList
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PurseInfoEntityListCopyWith<PurseInfoEntityList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PurseInfoEntityListCopyWith<$Res> {
  factory $PurseInfoEntityListCopyWith(
    PurseInfoEntityList value,
    $Res Function(PurseInfoEntityList) then,
  ) = _$PurseInfoEntityListCopyWithImpl<$Res, PurseInfoEntityList>;
  @useResult
  $Res call({List<PurseInfoEntity> purseInfoList, String userId});
}

/// @nodoc
class _$PurseInfoEntityListCopyWithImpl<$Res, $Val extends PurseInfoEntityList>
    implements $PurseInfoEntityListCopyWith<$Res> {
  _$PurseInfoEntityListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PurseInfoEntityList
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
                        as List<PurseInfoEntity>,
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
abstract class _$$PurseInfoEntityListImplCopyWith<$Res>
    implements $PurseInfoEntityListCopyWith<$Res> {
  factory _$$PurseInfoEntityListImplCopyWith(
    _$PurseInfoEntityListImpl value,
    $Res Function(_$PurseInfoEntityListImpl) then,
  ) = __$$PurseInfoEntityListImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<PurseInfoEntity> purseInfoList, String userId});
}

/// @nodoc
class __$$PurseInfoEntityListImplCopyWithImpl<$Res>
    extends _$PurseInfoEntityListCopyWithImpl<$Res, _$PurseInfoEntityListImpl>
    implements _$$PurseInfoEntityListImplCopyWith<$Res> {
  __$$PurseInfoEntityListImplCopyWithImpl(
    _$PurseInfoEntityListImpl _value,
    $Res Function(_$PurseInfoEntityListImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PurseInfoEntityList
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? purseInfoList = null, Object? userId = null}) {
    return _then(
      _$PurseInfoEntityListImpl(
        purseInfoList:
            null == purseInfoList
                ? _value._purseInfoList
                : purseInfoList // ignore: cast_nullable_to_non_nullable
                    as List<PurseInfoEntity>,
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

class _$PurseInfoEntityListImpl implements _PurseInfoEntityList {
  const _$PurseInfoEntityListImpl({
    required final List<PurseInfoEntity> purseInfoList,
    required this.userId,
  }) : _purseInfoList = purseInfoList;

  final List<PurseInfoEntity> _purseInfoList;
  @override
  List<PurseInfoEntity> get purseInfoList {
    if (_purseInfoList is EqualUnmodifiableListView) return _purseInfoList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_purseInfoList);
  }

  @override
  final String userId;

  @override
  String toString() {
    return 'PurseInfoEntityList(purseInfoList: $purseInfoList, userId: $userId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PurseInfoEntityListImpl &&
            const DeepCollectionEquality().equals(
              other._purseInfoList,
              _purseInfoList,
            ) &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_purseInfoList),
    userId,
  );

  /// Create a copy of PurseInfoEntityList
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PurseInfoEntityListImplCopyWith<_$PurseInfoEntityListImpl> get copyWith =>
      __$$PurseInfoEntityListImplCopyWithImpl<_$PurseInfoEntityListImpl>(
        this,
        _$identity,
      );
}

abstract class _PurseInfoEntityList implements PurseInfoEntityList {
  const factory _PurseInfoEntityList({
    required final List<PurseInfoEntity> purseInfoList,
    required final String userId,
  }) = _$PurseInfoEntityListImpl;

  @override
  List<PurseInfoEntity> get purseInfoList;
  @override
  String get userId;

  /// Create a copy of PurseInfoEntityList
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PurseInfoEntityListImplCopyWith<_$PurseInfoEntityListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
