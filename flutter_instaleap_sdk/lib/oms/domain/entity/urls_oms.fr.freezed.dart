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

UrlsOms _$UrlsOmsFromJson(Map<String, dynamic> json) {
  return _UrlsOms.fromJson(json);
}

/// @nodoc
mixin _$UrlsOms {
  String get urlBase => throw _privateConstructorUsedError;
  String get urlResourceAvailability => throw _privateConstructorUsedError;

  /// Serializes this UrlsOms to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UrlsOms
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UrlsOmsCopyWith<UrlsOms> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UrlsOmsCopyWith<$Res> {
  factory $UrlsOmsCopyWith(UrlsOms value, $Res Function(UrlsOms) then) =
      _$UrlsOmsCopyWithImpl<$Res, UrlsOms>;
  @useResult
  $Res call({String urlBase, String urlResourceAvailability});
}

/// @nodoc
class _$UrlsOmsCopyWithImpl<$Res, $Val extends UrlsOms>
    implements $UrlsOmsCopyWith<$Res> {
  _$UrlsOmsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UrlsOms
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? urlBase = null, Object? urlResourceAvailability = null}) {
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
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$UrlsOmsImplCopyWith<$Res> implements $UrlsOmsCopyWith<$Res> {
  factory _$$UrlsOmsImplCopyWith(
    _$UrlsOmsImpl value,
    $Res Function(_$UrlsOmsImpl) then,
  ) = __$$UrlsOmsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String urlBase, String urlResourceAvailability});
}

/// @nodoc
class __$$UrlsOmsImplCopyWithImpl<$Res>
    extends _$UrlsOmsCopyWithImpl<$Res, _$UrlsOmsImpl>
    implements _$$UrlsOmsImplCopyWith<$Res> {
  __$$UrlsOmsImplCopyWithImpl(
    _$UrlsOmsImpl _value,
    $Res Function(_$UrlsOmsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UrlsOms
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? urlBase = null, Object? urlResourceAvailability = null}) {
    return _then(
      _$UrlsOmsImpl(
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
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$UrlsOmsImpl implements _UrlsOms {
  const _$UrlsOmsImpl({
    required this.urlBase,
    required this.urlResourceAvailability,
  });

  factory _$UrlsOmsImpl.fromJson(Map<String, dynamic> json) =>
      _$$UrlsOmsImplFromJson(json);

  @override
  final String urlBase;
  @override
  final String urlResourceAvailability;

  @override
  String toString() {
    return 'UrlsOms(urlBase: $urlBase, urlResourceAvailability: $urlResourceAvailability)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UrlsOmsImpl &&
            (identical(other.urlBase, urlBase) || other.urlBase == urlBase) &&
            (identical(
                  other.urlResourceAvailability,
                  urlResourceAvailability,
                ) ||
                other.urlResourceAvailability == urlResourceAvailability));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, urlBase, urlResourceAvailability);

  /// Create a copy of UrlsOms
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UrlsOmsImplCopyWith<_$UrlsOmsImpl> get copyWith =>
      __$$UrlsOmsImplCopyWithImpl<_$UrlsOmsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UrlsOmsImplToJson(this);
  }
}

abstract class _UrlsOms implements UrlsOms {
  const factory _UrlsOms({
    required final String urlBase,
    required final String urlResourceAvailability,
  }) = _$UrlsOmsImpl;

  factory _UrlsOms.fromJson(Map<String, dynamic> json) = _$UrlsOmsImpl.fromJson;

  @override
  String get urlBase;
  @override
  String get urlResourceAvailability;

  /// Create a copy of UrlsOms
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UrlsOmsImplCopyWith<_$UrlsOmsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
