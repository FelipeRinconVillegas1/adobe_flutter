// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'urls_oms.fr.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

UrlsOmsGRAPHQL _$UrlsOmsGRAPHQLFromJson(Map<String, dynamic> json) {
  return _UrlsOmsGRAPHQL.fromJson(json);
}

/// @nodoc
mixin _$UrlsOmsGRAPHQL {
  String get urlBase => throw _privateConstructorUsedError;
  String get urlResourceCheckSlot => throw _privateConstructorUsedError;

  /// Serializes this UrlsOmsGRAPHQL to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UrlsOmsGRAPHQL
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UrlsOmsGRAPHQLCopyWith<UrlsOmsGRAPHQL> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UrlsOmsGRAPHQLCopyWith<$Res> {
  factory $UrlsOmsGRAPHQLCopyWith(
    UrlsOmsGRAPHQL value,
    $Res Function(UrlsOmsGRAPHQL) then,
  ) = _$UrlsOmsGRAPHQLCopyWithImpl<$Res, UrlsOmsGRAPHQL>;
  @useResult
  $Res call({String urlBase, String urlResourceCheckSlot});
}

/// @nodoc
class _$UrlsOmsGRAPHQLCopyWithImpl<$Res, $Val extends UrlsOmsGRAPHQL>
    implements $UrlsOmsGRAPHQLCopyWith<$Res> {
  _$UrlsOmsGRAPHQLCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UrlsOmsGRAPHQL
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? urlBase = null, Object? urlResourceCheckSlot = null}) {
    return _then(
      _value.copyWith(
            urlBase:
                null == urlBase
                    ? _value.urlBase
                    : urlBase // ignore: cast_nullable_to_non_nullable
                        as String,
            urlResourceCheckSlot:
                null == urlResourceCheckSlot
                    ? _value.urlResourceCheckSlot
                    : urlResourceCheckSlot // ignore: cast_nullable_to_non_nullable
                        as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$UrlsOmsGRAPHQLImplCopyWith<$Res>
    implements $UrlsOmsGRAPHQLCopyWith<$Res> {
  factory _$$UrlsOmsGRAPHQLImplCopyWith(
    _$UrlsOmsGRAPHQLImpl value,
    $Res Function(_$UrlsOmsGRAPHQLImpl) then,
  ) = __$$UrlsOmsGRAPHQLImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String urlBase, String urlResourceCheckSlot});
}

/// @nodoc
class __$$UrlsOmsGRAPHQLImplCopyWithImpl<$Res>
    extends _$UrlsOmsGRAPHQLCopyWithImpl<$Res, _$UrlsOmsGRAPHQLImpl>
    implements _$$UrlsOmsGRAPHQLImplCopyWith<$Res> {
  __$$UrlsOmsGRAPHQLImplCopyWithImpl(
    _$UrlsOmsGRAPHQLImpl _value,
    $Res Function(_$UrlsOmsGRAPHQLImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UrlsOmsGRAPHQL
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? urlBase = null, Object? urlResourceCheckSlot = null}) {
    return _then(
      _$UrlsOmsGRAPHQLImpl(
        urlBase:
            null == urlBase
                ? _value.urlBase
                : urlBase // ignore: cast_nullable_to_non_nullable
                    as String,
        urlResourceCheckSlot:
            null == urlResourceCheckSlot
                ? _value.urlResourceCheckSlot
                : urlResourceCheckSlot // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$UrlsOmsGRAPHQLImpl implements _UrlsOmsGRAPHQL {
  const _$UrlsOmsGRAPHQLImpl({
    required this.urlBase,
    required this.urlResourceCheckSlot,
  });

  factory _$UrlsOmsGRAPHQLImpl.fromJson(Map<String, dynamic> json) =>
      _$$UrlsOmsGRAPHQLImplFromJson(json);

  @override
  final String urlBase;
  @override
  final String urlResourceCheckSlot;

  @override
  String toString() {
    return 'UrlsOmsGRAPHQL(urlBase: $urlBase, urlResourceCheckSlot: $urlResourceCheckSlot)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UrlsOmsGRAPHQLImpl &&
            (identical(other.urlBase, urlBase) || other.urlBase == urlBase) &&
            (identical(other.urlResourceCheckSlot, urlResourceCheckSlot) ||
                other.urlResourceCheckSlot == urlResourceCheckSlot));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, urlBase, urlResourceCheckSlot);

  /// Create a copy of UrlsOmsGRAPHQL
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UrlsOmsGRAPHQLImplCopyWith<_$UrlsOmsGRAPHQLImpl> get copyWith =>
      __$$UrlsOmsGRAPHQLImplCopyWithImpl<_$UrlsOmsGRAPHQLImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$UrlsOmsGRAPHQLImplToJson(this);
  }
}

abstract class _UrlsOmsGRAPHQL implements UrlsOmsGRAPHQL {
  const factory _UrlsOmsGRAPHQL({
    required final String urlBase,
    required final String urlResourceCheckSlot,
  }) = _$UrlsOmsGRAPHQLImpl;

  factory _UrlsOmsGRAPHQL.fromJson(Map<String, dynamic> json) =
      _$UrlsOmsGRAPHQLImpl.fromJson;

  @override
  String get urlBase;
  @override
  String get urlResourceCheckSlot;

  /// Create a copy of UrlsOmsGRAPHQL
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UrlsOmsGRAPHQLImplCopyWith<_$UrlsOmsGRAPHQLImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UrlsOmsREST _$UrlsOmsRESTFromJson(Map<String, dynamic> json) {
  return _UrlsOmsREST.fromJson(json);
}

/// @nodoc
mixin _$UrlsOmsREST {
  String get urlBase => throw _privateConstructorUsedError;
  String get urlResourceAvailability => throw _privateConstructorUsedError;
  String get urlResourceCheckSlot_1 => throw _privateConstructorUsedError;
  String get urlResourceCheckSlot_2 => throw _privateConstructorUsedError;
  String get urlResourceGetJob => throw _privateConstructorUsedError;

  /// Serializes this UrlsOmsREST to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UrlsOmsREST
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UrlsOmsRESTCopyWith<UrlsOmsREST> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UrlsOmsRESTCopyWith<$Res> {
  factory $UrlsOmsRESTCopyWith(
    UrlsOmsREST value,
    $Res Function(UrlsOmsREST) then,
  ) = _$UrlsOmsRESTCopyWithImpl<$Res, UrlsOmsREST>;
  @useResult
  $Res call({
    String urlBase,
    String urlResourceAvailability,
    String urlResourceCheckSlot_1,
    String urlResourceCheckSlot_2,
    String urlResourceGetJob,
  });
}

/// @nodoc
class _$UrlsOmsRESTCopyWithImpl<$Res, $Val extends UrlsOmsREST>
    implements $UrlsOmsRESTCopyWith<$Res> {
  _$UrlsOmsRESTCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UrlsOmsREST
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? urlBase = null,
    Object? urlResourceAvailability = null,
    Object? urlResourceCheckSlot_1 = null,
    Object? urlResourceCheckSlot_2 = null,
    Object? urlResourceGetJob = null,
  }) {
    return _then(
      _value.copyWith(
            urlBase:
                null == urlBase
                    ? _value.urlBase
                    : urlBase // ignore: cast_nullable_to_non_nullable
                        as String,
            urlResourceAvailability:
                null == urlResourceAvailability
                    ? _value.urlResourceAvailability
                    : urlResourceAvailability // ignore: cast_nullable_to_non_nullable
                        as String,
            urlResourceCheckSlot_1:
                null == urlResourceCheckSlot_1
                    ? _value.urlResourceCheckSlot_1
                    : urlResourceCheckSlot_1 // ignore: cast_nullable_to_non_nullable
                        as String,
            urlResourceCheckSlot_2:
                null == urlResourceCheckSlot_2
                    ? _value.urlResourceCheckSlot_2
                    : urlResourceCheckSlot_2 // ignore: cast_nullable_to_non_nullable
                        as String,
            urlResourceGetJob:
                null == urlResourceGetJob
                    ? _value.urlResourceGetJob
                    : urlResourceGetJob // ignore: cast_nullable_to_non_nullable
                        as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$UrlsOmsRESTImplCopyWith<$Res>
    implements $UrlsOmsRESTCopyWith<$Res> {
  factory _$$UrlsOmsRESTImplCopyWith(
    _$UrlsOmsRESTImpl value,
    $Res Function(_$UrlsOmsRESTImpl) then,
  ) = __$$UrlsOmsRESTImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String urlBase,
    String urlResourceAvailability,
    String urlResourceCheckSlot_1,
    String urlResourceCheckSlot_2,
    String urlResourceGetJob,
  });
}

/// @nodoc
class __$$UrlsOmsRESTImplCopyWithImpl<$Res>
    extends _$UrlsOmsRESTCopyWithImpl<$Res, _$UrlsOmsRESTImpl>
    implements _$$UrlsOmsRESTImplCopyWith<$Res> {
  __$$UrlsOmsRESTImplCopyWithImpl(
    _$UrlsOmsRESTImpl _value,
    $Res Function(_$UrlsOmsRESTImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UrlsOmsREST
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? urlBase = null,
    Object? urlResourceAvailability = null,
    Object? urlResourceCheckSlot_1 = null,
    Object? urlResourceCheckSlot_2 = null,
    Object? urlResourceGetJob = null,
  }) {
    return _then(
      _$UrlsOmsRESTImpl(
        urlBase:
            null == urlBase
                ? _value.urlBase
                : urlBase // ignore: cast_nullable_to_non_nullable
                    as String,
        urlResourceAvailability:
            null == urlResourceAvailability
                ? _value.urlResourceAvailability
                : urlResourceAvailability // ignore: cast_nullable_to_non_nullable
                    as String,
        urlResourceCheckSlot_1:
            null == urlResourceCheckSlot_1
                ? _value.urlResourceCheckSlot_1
                : urlResourceCheckSlot_1 // ignore: cast_nullable_to_non_nullable
                    as String,
        urlResourceCheckSlot_2:
            null == urlResourceCheckSlot_2
                ? _value.urlResourceCheckSlot_2
                : urlResourceCheckSlot_2 // ignore: cast_nullable_to_non_nullable
                    as String,
        urlResourceGetJob:
            null == urlResourceGetJob
                ? _value.urlResourceGetJob
                : urlResourceGetJob // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$UrlsOmsRESTImpl implements _UrlsOmsREST {
  const _$UrlsOmsRESTImpl({
    required this.urlBase,
    required this.urlResourceAvailability,
    required this.urlResourceCheckSlot_1,
    required this.urlResourceCheckSlot_2,
    required this.urlResourceGetJob,
  });

  factory _$UrlsOmsRESTImpl.fromJson(Map<String, dynamic> json) =>
      _$$UrlsOmsRESTImplFromJson(json);

  @override
  final String urlBase;
  @override
  final String urlResourceAvailability;
  @override
  final String urlResourceCheckSlot_1;
  @override
  final String urlResourceCheckSlot_2;
  @override
  final String urlResourceGetJob;

  @override
  String toString() {
    return 'UrlsOmsREST(urlBase: $urlBase, urlResourceAvailability: $urlResourceAvailability, urlResourceCheckSlot_1: $urlResourceCheckSlot_1, urlResourceCheckSlot_2: $urlResourceCheckSlot_2, urlResourceGetJob: $urlResourceGetJob)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UrlsOmsRESTImpl &&
            (identical(other.urlBase, urlBase) || other.urlBase == urlBase) &&
            (identical(
                  other.urlResourceAvailability,
                  urlResourceAvailability,
                ) ||
                other.urlResourceAvailability == urlResourceAvailability) &&
            (identical(other.urlResourceCheckSlot_1, urlResourceCheckSlot_1) ||
                other.urlResourceCheckSlot_1 == urlResourceCheckSlot_1) &&
            (identical(other.urlResourceCheckSlot_2, urlResourceCheckSlot_2) ||
                other.urlResourceCheckSlot_2 == urlResourceCheckSlot_2) &&
            (identical(other.urlResourceGetJob, urlResourceGetJob) ||
                other.urlResourceGetJob == urlResourceGetJob));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    urlBase,
    urlResourceAvailability,
    urlResourceCheckSlot_1,
    urlResourceCheckSlot_2,
    urlResourceGetJob,
  );

  /// Create a copy of UrlsOmsREST
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UrlsOmsRESTImplCopyWith<_$UrlsOmsRESTImpl> get copyWith =>
      __$$UrlsOmsRESTImplCopyWithImpl<_$UrlsOmsRESTImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UrlsOmsRESTImplToJson(this);
  }
}

abstract class _UrlsOmsREST implements UrlsOmsREST {
  const factory _UrlsOmsREST({
    required final String urlBase,
    required final String urlResourceAvailability,
    required final String urlResourceCheckSlot_1,
    required final String urlResourceCheckSlot_2,
    required final String urlResourceGetJob,
  }) = _$UrlsOmsRESTImpl;

  factory _UrlsOmsREST.fromJson(Map<String, dynamic> json) =
      _$UrlsOmsRESTImpl.fromJson;

  @override
  String get urlBase;
  @override
  String get urlResourceAvailability;
  @override
  String get urlResourceCheckSlot_1;
  @override
  String get urlResourceCheckSlot_2;
  @override
  String get urlResourceGetJob;

  /// Create a copy of UrlsOmsREST
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UrlsOmsRESTImplCopyWith<_$UrlsOmsRESTImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
