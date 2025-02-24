// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dropdown_option_dto.fr.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

DropdownOptionDTO _$DropdownOptionDTOFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'standard':
      return StandardDropdownOptionDTO.fromJson(json);
    case 'withShortName':
      return WithShortNameDropdownOptionDTO.fromJson(json);
    case 'countryCode':
      return CountryCodeDropdownOptionDTO.fromJson(json);
    case 'child':
      return ChildDropdownOptionDTO.fromJson(json);

    default:
      throw CheckedFromJsonException(
        json,
        'runtimeType',
        'DropdownOptionDTO',
        'Invalid union type "${json['runtimeType']}"!',
      );
  }
}

/// @nodoc
mixin _$DropdownOptionDTO {
  String get code => throw _privateConstructorUsedError;
  String get nameEn => throw _privateConstructorUsedError;
  String get nameEs => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String code, String nameEn, String nameEs)
    standard,
    required TResult Function(
      String code,
      String nameEn,
      String nameEs,
      String shortNameEn,
      String shortNameEs,
    )
    withShortName,
    required TResult Function(
      String code,
      String nameEn,
      String nameEs,
      String countryCode,
    )
    countryCode,
    required TResult Function(
      String code,
      String nameEn,
      String nameEs,
      String parentCode,
    )
    child,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String code, String nameEn, String nameEs)? standard,
    TResult? Function(
      String code,
      String nameEn,
      String nameEs,
      String shortNameEn,
      String shortNameEs,
    )?
    withShortName,
    TResult? Function(
      String code,
      String nameEn,
      String nameEs,
      String countryCode,
    )?
    countryCode,
    TResult? Function(
      String code,
      String nameEn,
      String nameEs,
      String parentCode,
    )?
    child,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String code, String nameEn, String nameEs)? standard,
    TResult Function(
      String code,
      String nameEn,
      String nameEs,
      String shortNameEn,
      String shortNameEs,
    )?
    withShortName,
    TResult Function(
      String code,
      String nameEn,
      String nameEs,
      String countryCode,
    )?
    countryCode,
    TResult Function(
      String code,
      String nameEn,
      String nameEs,
      String parentCode,
    )?
    child,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StandardDropdownOptionDTO value) standard,
    required TResult Function(WithShortNameDropdownOptionDTO value)
    withShortName,
    required TResult Function(CountryCodeDropdownOptionDTO value) countryCode,
    required TResult Function(ChildDropdownOptionDTO value) child,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StandardDropdownOptionDTO value)? standard,
    TResult? Function(WithShortNameDropdownOptionDTO value)? withShortName,
    TResult? Function(CountryCodeDropdownOptionDTO value)? countryCode,
    TResult? Function(ChildDropdownOptionDTO value)? child,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StandardDropdownOptionDTO value)? standard,
    TResult Function(WithShortNameDropdownOptionDTO value)? withShortName,
    TResult Function(CountryCodeDropdownOptionDTO value)? countryCode,
    TResult Function(ChildDropdownOptionDTO value)? child,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;

  /// Serializes this DropdownOptionDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DropdownOptionDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DropdownOptionDTOCopyWith<DropdownOptionDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DropdownOptionDTOCopyWith<$Res> {
  factory $DropdownOptionDTOCopyWith(
    DropdownOptionDTO value,
    $Res Function(DropdownOptionDTO) then,
  ) = _$DropdownOptionDTOCopyWithImpl<$Res, DropdownOptionDTO>;
  @useResult
  $Res call({String code, String nameEn, String nameEs});
}

/// @nodoc
class _$DropdownOptionDTOCopyWithImpl<$Res, $Val extends DropdownOptionDTO>
    implements $DropdownOptionDTOCopyWith<$Res> {
  _$DropdownOptionDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DropdownOptionDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? nameEn = null,
    Object? nameEs = null,
  }) {
    return _then(
      _value.copyWith(
            code:
                null == code
                    ? _value.code
                    : code // ignore: cast_nullable_to_non_nullable
                        as String,
            nameEn:
                null == nameEn
                    ? _value.nameEn
                    : nameEn // ignore: cast_nullable_to_non_nullable
                        as String,
            nameEs:
                null == nameEs
                    ? _value.nameEs
                    : nameEs // ignore: cast_nullable_to_non_nullable
                        as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$StandardDropdownOptionDTOImplCopyWith<$Res>
    implements $DropdownOptionDTOCopyWith<$Res> {
  factory _$$StandardDropdownOptionDTOImplCopyWith(
    _$StandardDropdownOptionDTOImpl value,
    $Res Function(_$StandardDropdownOptionDTOImpl) then,
  ) = __$$StandardDropdownOptionDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String code, String nameEn, String nameEs});
}

/// @nodoc
class __$$StandardDropdownOptionDTOImplCopyWithImpl<$Res>
    extends
        _$DropdownOptionDTOCopyWithImpl<$Res, _$StandardDropdownOptionDTOImpl>
    implements _$$StandardDropdownOptionDTOImplCopyWith<$Res> {
  __$$StandardDropdownOptionDTOImplCopyWithImpl(
    _$StandardDropdownOptionDTOImpl _value,
    $Res Function(_$StandardDropdownOptionDTOImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DropdownOptionDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? nameEn = null,
    Object? nameEs = null,
  }) {
    return _then(
      _$StandardDropdownOptionDTOImpl(
        code:
            null == code
                ? _value.code
                : code // ignore: cast_nullable_to_non_nullable
                    as String,
        nameEn:
            null == nameEn
                ? _value.nameEn
                : nameEn // ignore: cast_nullable_to_non_nullable
                    as String,
        nameEs:
            null == nameEs
                ? _value.nameEs
                : nameEs // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$StandardDropdownOptionDTOImpl extends StandardDropdownOptionDTO {
  const _$StandardDropdownOptionDTOImpl({
    required this.code,
    required this.nameEn,
    required this.nameEs,
    final String? $type,
  }) : $type = $type ?? 'standard',
       super._();

  factory _$StandardDropdownOptionDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$StandardDropdownOptionDTOImplFromJson(json);

  @override
  final String code;
  @override
  final String nameEn;
  @override
  final String nameEs;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'DropdownOptionDTO.standard(code: $code, nameEn: $nameEn, nameEs: $nameEs)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StandardDropdownOptionDTOImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.nameEn, nameEn) || other.nameEn == nameEn) &&
            (identical(other.nameEs, nameEs) || other.nameEs == nameEs));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, code, nameEn, nameEs);

  /// Create a copy of DropdownOptionDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StandardDropdownOptionDTOImplCopyWith<_$StandardDropdownOptionDTOImpl>
  get copyWith => __$$StandardDropdownOptionDTOImplCopyWithImpl<
    _$StandardDropdownOptionDTOImpl
  >(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String code, String nameEn, String nameEs)
    standard,
    required TResult Function(
      String code,
      String nameEn,
      String nameEs,
      String shortNameEn,
      String shortNameEs,
    )
    withShortName,
    required TResult Function(
      String code,
      String nameEn,
      String nameEs,
      String countryCode,
    )
    countryCode,
    required TResult Function(
      String code,
      String nameEn,
      String nameEs,
      String parentCode,
    )
    child,
  }) {
    return standard(code, nameEn, nameEs);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String code, String nameEn, String nameEs)? standard,
    TResult? Function(
      String code,
      String nameEn,
      String nameEs,
      String shortNameEn,
      String shortNameEs,
    )?
    withShortName,
    TResult? Function(
      String code,
      String nameEn,
      String nameEs,
      String countryCode,
    )?
    countryCode,
    TResult? Function(
      String code,
      String nameEn,
      String nameEs,
      String parentCode,
    )?
    child,
  }) {
    return standard?.call(code, nameEn, nameEs);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String code, String nameEn, String nameEs)? standard,
    TResult Function(
      String code,
      String nameEn,
      String nameEs,
      String shortNameEn,
      String shortNameEs,
    )?
    withShortName,
    TResult Function(
      String code,
      String nameEn,
      String nameEs,
      String countryCode,
    )?
    countryCode,
    TResult Function(
      String code,
      String nameEn,
      String nameEs,
      String parentCode,
    )?
    child,
    required TResult orElse(),
  }) {
    if (standard != null) {
      return standard(code, nameEn, nameEs);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StandardDropdownOptionDTO value) standard,
    required TResult Function(WithShortNameDropdownOptionDTO value)
    withShortName,
    required TResult Function(CountryCodeDropdownOptionDTO value) countryCode,
    required TResult Function(ChildDropdownOptionDTO value) child,
  }) {
    return standard(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StandardDropdownOptionDTO value)? standard,
    TResult? Function(WithShortNameDropdownOptionDTO value)? withShortName,
    TResult? Function(CountryCodeDropdownOptionDTO value)? countryCode,
    TResult? Function(ChildDropdownOptionDTO value)? child,
  }) {
    return standard?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StandardDropdownOptionDTO value)? standard,
    TResult Function(WithShortNameDropdownOptionDTO value)? withShortName,
    TResult Function(CountryCodeDropdownOptionDTO value)? countryCode,
    TResult Function(ChildDropdownOptionDTO value)? child,
    required TResult orElse(),
  }) {
    if (standard != null) {
      return standard(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$StandardDropdownOptionDTOImplToJson(this);
  }
}

abstract class StandardDropdownOptionDTO extends DropdownOptionDTO {
  const factory StandardDropdownOptionDTO({
    required final String code,
    required final String nameEn,
    required final String nameEs,
  }) = _$StandardDropdownOptionDTOImpl;
  const StandardDropdownOptionDTO._() : super._();

  factory StandardDropdownOptionDTO.fromJson(Map<String, dynamic> json) =
      _$StandardDropdownOptionDTOImpl.fromJson;

  @override
  String get code;
  @override
  String get nameEn;
  @override
  String get nameEs;

  /// Create a copy of DropdownOptionDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StandardDropdownOptionDTOImplCopyWith<_$StandardDropdownOptionDTOImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$WithShortNameDropdownOptionDTOImplCopyWith<$Res>
    implements $DropdownOptionDTOCopyWith<$Res> {
  factory _$$WithShortNameDropdownOptionDTOImplCopyWith(
    _$WithShortNameDropdownOptionDTOImpl value,
    $Res Function(_$WithShortNameDropdownOptionDTOImpl) then,
  ) = __$$WithShortNameDropdownOptionDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String code,
    String nameEn,
    String nameEs,
    String shortNameEn,
    String shortNameEs,
  });
}

/// @nodoc
class __$$WithShortNameDropdownOptionDTOImplCopyWithImpl<$Res>
    extends
        _$DropdownOptionDTOCopyWithImpl<
          $Res,
          _$WithShortNameDropdownOptionDTOImpl
        >
    implements _$$WithShortNameDropdownOptionDTOImplCopyWith<$Res> {
  __$$WithShortNameDropdownOptionDTOImplCopyWithImpl(
    _$WithShortNameDropdownOptionDTOImpl _value,
    $Res Function(_$WithShortNameDropdownOptionDTOImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DropdownOptionDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? nameEn = null,
    Object? nameEs = null,
    Object? shortNameEn = null,
    Object? shortNameEs = null,
  }) {
    return _then(
      _$WithShortNameDropdownOptionDTOImpl(
        code:
            null == code
                ? _value.code
                : code // ignore: cast_nullable_to_non_nullable
                    as String,
        nameEn:
            null == nameEn
                ? _value.nameEn
                : nameEn // ignore: cast_nullable_to_non_nullable
                    as String,
        nameEs:
            null == nameEs
                ? _value.nameEs
                : nameEs // ignore: cast_nullable_to_non_nullable
                    as String,
        shortNameEn:
            null == shortNameEn
                ? _value.shortNameEn
                : shortNameEn // ignore: cast_nullable_to_non_nullable
                    as String,
        shortNameEs:
            null == shortNameEs
                ? _value.shortNameEs
                : shortNameEs // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$WithShortNameDropdownOptionDTOImpl
    extends WithShortNameDropdownOptionDTO {
  const _$WithShortNameDropdownOptionDTOImpl({
    required this.code,
    required this.nameEn,
    required this.nameEs,
    required this.shortNameEn,
    required this.shortNameEs,
    final String? $type,
  }) : $type = $type ?? 'withShortName',
       super._();

  factory _$WithShortNameDropdownOptionDTOImpl.fromJson(
    Map<String, dynamic> json,
  ) => _$$WithShortNameDropdownOptionDTOImplFromJson(json);

  @override
  final String code;
  @override
  final String nameEn;
  @override
  final String nameEs;
  @override
  final String shortNameEn;
  @override
  final String shortNameEs;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'DropdownOptionDTO.withShortName(code: $code, nameEn: $nameEn, nameEs: $nameEs, shortNameEn: $shortNameEn, shortNameEs: $shortNameEs)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WithShortNameDropdownOptionDTOImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.nameEn, nameEn) || other.nameEn == nameEn) &&
            (identical(other.nameEs, nameEs) || other.nameEs == nameEs) &&
            (identical(other.shortNameEn, shortNameEn) ||
                other.shortNameEn == shortNameEn) &&
            (identical(other.shortNameEs, shortNameEs) ||
                other.shortNameEs == shortNameEs));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, code, nameEn, nameEs, shortNameEn, shortNameEs);

  /// Create a copy of DropdownOptionDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WithShortNameDropdownOptionDTOImplCopyWith<
    _$WithShortNameDropdownOptionDTOImpl
  >
  get copyWith => __$$WithShortNameDropdownOptionDTOImplCopyWithImpl<
    _$WithShortNameDropdownOptionDTOImpl
  >(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String code, String nameEn, String nameEs)
    standard,
    required TResult Function(
      String code,
      String nameEn,
      String nameEs,
      String shortNameEn,
      String shortNameEs,
    )
    withShortName,
    required TResult Function(
      String code,
      String nameEn,
      String nameEs,
      String countryCode,
    )
    countryCode,
    required TResult Function(
      String code,
      String nameEn,
      String nameEs,
      String parentCode,
    )
    child,
  }) {
    return withShortName(code, nameEn, nameEs, shortNameEn, shortNameEs);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String code, String nameEn, String nameEs)? standard,
    TResult? Function(
      String code,
      String nameEn,
      String nameEs,
      String shortNameEn,
      String shortNameEs,
    )?
    withShortName,
    TResult? Function(
      String code,
      String nameEn,
      String nameEs,
      String countryCode,
    )?
    countryCode,
    TResult? Function(
      String code,
      String nameEn,
      String nameEs,
      String parentCode,
    )?
    child,
  }) {
    return withShortName?.call(code, nameEn, nameEs, shortNameEn, shortNameEs);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String code, String nameEn, String nameEs)? standard,
    TResult Function(
      String code,
      String nameEn,
      String nameEs,
      String shortNameEn,
      String shortNameEs,
    )?
    withShortName,
    TResult Function(
      String code,
      String nameEn,
      String nameEs,
      String countryCode,
    )?
    countryCode,
    TResult Function(
      String code,
      String nameEn,
      String nameEs,
      String parentCode,
    )?
    child,
    required TResult orElse(),
  }) {
    if (withShortName != null) {
      return withShortName(code, nameEn, nameEs, shortNameEn, shortNameEs);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StandardDropdownOptionDTO value) standard,
    required TResult Function(WithShortNameDropdownOptionDTO value)
    withShortName,
    required TResult Function(CountryCodeDropdownOptionDTO value) countryCode,
    required TResult Function(ChildDropdownOptionDTO value) child,
  }) {
    return withShortName(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StandardDropdownOptionDTO value)? standard,
    TResult? Function(WithShortNameDropdownOptionDTO value)? withShortName,
    TResult? Function(CountryCodeDropdownOptionDTO value)? countryCode,
    TResult? Function(ChildDropdownOptionDTO value)? child,
  }) {
    return withShortName?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StandardDropdownOptionDTO value)? standard,
    TResult Function(WithShortNameDropdownOptionDTO value)? withShortName,
    TResult Function(CountryCodeDropdownOptionDTO value)? countryCode,
    TResult Function(ChildDropdownOptionDTO value)? child,
    required TResult orElse(),
  }) {
    if (withShortName != null) {
      return withShortName(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$WithShortNameDropdownOptionDTOImplToJson(this);
  }
}

abstract class WithShortNameDropdownOptionDTO extends DropdownOptionDTO {
  const factory WithShortNameDropdownOptionDTO({
    required final String code,
    required final String nameEn,
    required final String nameEs,
    required final String shortNameEn,
    required final String shortNameEs,
  }) = _$WithShortNameDropdownOptionDTOImpl;
  const WithShortNameDropdownOptionDTO._() : super._();

  factory WithShortNameDropdownOptionDTO.fromJson(Map<String, dynamic> json) =
      _$WithShortNameDropdownOptionDTOImpl.fromJson;

  @override
  String get code;
  @override
  String get nameEn;
  @override
  String get nameEs;
  String get shortNameEn;
  String get shortNameEs;

  /// Create a copy of DropdownOptionDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WithShortNameDropdownOptionDTOImplCopyWith<
    _$WithShortNameDropdownOptionDTOImpl
  >
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CountryCodeDropdownOptionDTOImplCopyWith<$Res>
    implements $DropdownOptionDTOCopyWith<$Res> {
  factory _$$CountryCodeDropdownOptionDTOImplCopyWith(
    _$CountryCodeDropdownOptionDTOImpl value,
    $Res Function(_$CountryCodeDropdownOptionDTOImpl) then,
  ) = __$$CountryCodeDropdownOptionDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String code, String nameEn, String nameEs, String countryCode});
}

/// @nodoc
class __$$CountryCodeDropdownOptionDTOImplCopyWithImpl<$Res>
    extends
        _$DropdownOptionDTOCopyWithImpl<
          $Res,
          _$CountryCodeDropdownOptionDTOImpl
        >
    implements _$$CountryCodeDropdownOptionDTOImplCopyWith<$Res> {
  __$$CountryCodeDropdownOptionDTOImplCopyWithImpl(
    _$CountryCodeDropdownOptionDTOImpl _value,
    $Res Function(_$CountryCodeDropdownOptionDTOImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DropdownOptionDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? nameEn = null,
    Object? nameEs = null,
    Object? countryCode = null,
  }) {
    return _then(
      _$CountryCodeDropdownOptionDTOImpl(
        code:
            null == code
                ? _value.code
                : code // ignore: cast_nullable_to_non_nullable
                    as String,
        nameEn:
            null == nameEn
                ? _value.nameEn
                : nameEn // ignore: cast_nullable_to_non_nullable
                    as String,
        nameEs:
            null == nameEs
                ? _value.nameEs
                : nameEs // ignore: cast_nullable_to_non_nullable
                    as String,
        countryCode:
            null == countryCode
                ? _value.countryCode
                : countryCode // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$CountryCodeDropdownOptionDTOImpl extends CountryCodeDropdownOptionDTO {
  const _$CountryCodeDropdownOptionDTOImpl({
    required this.code,
    required this.nameEn,
    required this.nameEs,
    required this.countryCode,
    final String? $type,
  }) : $type = $type ?? 'countryCode',
       super._();

  factory _$CountryCodeDropdownOptionDTOImpl.fromJson(
    Map<String, dynamic> json,
  ) => _$$CountryCodeDropdownOptionDTOImplFromJson(json);

  @override
  final String code;
  @override
  final String nameEn;
  @override
  final String nameEs;
  @override
  final String countryCode;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'DropdownOptionDTO.countryCode(code: $code, nameEn: $nameEn, nameEs: $nameEs, countryCode: $countryCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CountryCodeDropdownOptionDTOImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.nameEn, nameEn) || other.nameEn == nameEn) &&
            (identical(other.nameEs, nameEs) || other.nameEs == nameEs) &&
            (identical(other.countryCode, countryCode) ||
                other.countryCode == countryCode));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, code, nameEn, nameEs, countryCode);

  /// Create a copy of DropdownOptionDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CountryCodeDropdownOptionDTOImplCopyWith<
    _$CountryCodeDropdownOptionDTOImpl
  >
  get copyWith => __$$CountryCodeDropdownOptionDTOImplCopyWithImpl<
    _$CountryCodeDropdownOptionDTOImpl
  >(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String code, String nameEn, String nameEs)
    standard,
    required TResult Function(
      String code,
      String nameEn,
      String nameEs,
      String shortNameEn,
      String shortNameEs,
    )
    withShortName,
    required TResult Function(
      String code,
      String nameEn,
      String nameEs,
      String countryCode,
    )
    countryCode,
    required TResult Function(
      String code,
      String nameEn,
      String nameEs,
      String parentCode,
    )
    child,
  }) {
    return countryCode(code, nameEn, nameEs, this.countryCode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String code, String nameEn, String nameEs)? standard,
    TResult? Function(
      String code,
      String nameEn,
      String nameEs,
      String shortNameEn,
      String shortNameEs,
    )?
    withShortName,
    TResult? Function(
      String code,
      String nameEn,
      String nameEs,
      String countryCode,
    )?
    countryCode,
    TResult? Function(
      String code,
      String nameEn,
      String nameEs,
      String parentCode,
    )?
    child,
  }) {
    return countryCode?.call(code, nameEn, nameEs, this.countryCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String code, String nameEn, String nameEs)? standard,
    TResult Function(
      String code,
      String nameEn,
      String nameEs,
      String shortNameEn,
      String shortNameEs,
    )?
    withShortName,
    TResult Function(
      String code,
      String nameEn,
      String nameEs,
      String countryCode,
    )?
    countryCode,
    TResult Function(
      String code,
      String nameEn,
      String nameEs,
      String parentCode,
    )?
    child,
    required TResult orElse(),
  }) {
    if (countryCode != null) {
      return countryCode(code, nameEn, nameEs, this.countryCode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StandardDropdownOptionDTO value) standard,
    required TResult Function(WithShortNameDropdownOptionDTO value)
    withShortName,
    required TResult Function(CountryCodeDropdownOptionDTO value) countryCode,
    required TResult Function(ChildDropdownOptionDTO value) child,
  }) {
    return countryCode(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StandardDropdownOptionDTO value)? standard,
    TResult? Function(WithShortNameDropdownOptionDTO value)? withShortName,
    TResult? Function(CountryCodeDropdownOptionDTO value)? countryCode,
    TResult? Function(ChildDropdownOptionDTO value)? child,
  }) {
    return countryCode?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StandardDropdownOptionDTO value)? standard,
    TResult Function(WithShortNameDropdownOptionDTO value)? withShortName,
    TResult Function(CountryCodeDropdownOptionDTO value)? countryCode,
    TResult Function(ChildDropdownOptionDTO value)? child,
    required TResult orElse(),
  }) {
    if (countryCode != null) {
      return countryCode(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$CountryCodeDropdownOptionDTOImplToJson(this);
  }
}

abstract class CountryCodeDropdownOptionDTO extends DropdownOptionDTO {
  const factory CountryCodeDropdownOptionDTO({
    required final String code,
    required final String nameEn,
    required final String nameEs,
    required final String countryCode,
  }) = _$CountryCodeDropdownOptionDTOImpl;
  const CountryCodeDropdownOptionDTO._() : super._();

  factory CountryCodeDropdownOptionDTO.fromJson(Map<String, dynamic> json) =
      _$CountryCodeDropdownOptionDTOImpl.fromJson;

  @override
  String get code;
  @override
  String get nameEn;
  @override
  String get nameEs;
  String get countryCode;

  /// Create a copy of DropdownOptionDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CountryCodeDropdownOptionDTOImplCopyWith<
    _$CountryCodeDropdownOptionDTOImpl
  >
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChildDropdownOptionDTOImplCopyWith<$Res>
    implements $DropdownOptionDTOCopyWith<$Res> {
  factory _$$ChildDropdownOptionDTOImplCopyWith(
    _$ChildDropdownOptionDTOImpl value,
    $Res Function(_$ChildDropdownOptionDTOImpl) then,
  ) = __$$ChildDropdownOptionDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String code, String nameEn, String nameEs, String parentCode});
}

/// @nodoc
class __$$ChildDropdownOptionDTOImplCopyWithImpl<$Res>
    extends _$DropdownOptionDTOCopyWithImpl<$Res, _$ChildDropdownOptionDTOImpl>
    implements _$$ChildDropdownOptionDTOImplCopyWith<$Res> {
  __$$ChildDropdownOptionDTOImplCopyWithImpl(
    _$ChildDropdownOptionDTOImpl _value,
    $Res Function(_$ChildDropdownOptionDTOImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DropdownOptionDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? nameEn = null,
    Object? nameEs = null,
    Object? parentCode = null,
  }) {
    return _then(
      _$ChildDropdownOptionDTOImpl(
        code:
            null == code
                ? _value.code
                : code // ignore: cast_nullable_to_non_nullable
                    as String,
        nameEn:
            null == nameEn
                ? _value.nameEn
                : nameEn // ignore: cast_nullable_to_non_nullable
                    as String,
        nameEs:
            null == nameEs
                ? _value.nameEs
                : nameEs // ignore: cast_nullable_to_non_nullable
                    as String,
        parentCode:
            null == parentCode
                ? _value.parentCode
                : parentCode // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ChildDropdownOptionDTOImpl extends ChildDropdownOptionDTO {
  const _$ChildDropdownOptionDTOImpl({
    required this.code,
    required this.nameEn,
    required this.nameEs,
    required this.parentCode,
    final String? $type,
  }) : $type = $type ?? 'child',
       super._();

  factory _$ChildDropdownOptionDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChildDropdownOptionDTOImplFromJson(json);

  @override
  final String code;
  @override
  final String nameEn;
  @override
  final String nameEs;
  @override
  final String parentCode;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'DropdownOptionDTO.child(code: $code, nameEn: $nameEn, nameEs: $nameEs, parentCode: $parentCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChildDropdownOptionDTOImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.nameEn, nameEn) || other.nameEn == nameEn) &&
            (identical(other.nameEs, nameEs) || other.nameEs == nameEs) &&
            (identical(other.parentCode, parentCode) ||
                other.parentCode == parentCode));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, code, nameEn, nameEs, parentCode);

  /// Create a copy of DropdownOptionDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChildDropdownOptionDTOImplCopyWith<_$ChildDropdownOptionDTOImpl>
  get copyWith =>
      __$$ChildDropdownOptionDTOImplCopyWithImpl<_$ChildDropdownOptionDTOImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String code, String nameEn, String nameEs)
    standard,
    required TResult Function(
      String code,
      String nameEn,
      String nameEs,
      String shortNameEn,
      String shortNameEs,
    )
    withShortName,
    required TResult Function(
      String code,
      String nameEn,
      String nameEs,
      String countryCode,
    )
    countryCode,
    required TResult Function(
      String code,
      String nameEn,
      String nameEs,
      String parentCode,
    )
    child,
  }) {
    return child(code, nameEn, nameEs, parentCode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String code, String nameEn, String nameEs)? standard,
    TResult? Function(
      String code,
      String nameEn,
      String nameEs,
      String shortNameEn,
      String shortNameEs,
    )?
    withShortName,
    TResult? Function(
      String code,
      String nameEn,
      String nameEs,
      String countryCode,
    )?
    countryCode,
    TResult? Function(
      String code,
      String nameEn,
      String nameEs,
      String parentCode,
    )?
    child,
  }) {
    return child?.call(code, nameEn, nameEs, parentCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String code, String nameEn, String nameEs)? standard,
    TResult Function(
      String code,
      String nameEn,
      String nameEs,
      String shortNameEn,
      String shortNameEs,
    )?
    withShortName,
    TResult Function(
      String code,
      String nameEn,
      String nameEs,
      String countryCode,
    )?
    countryCode,
    TResult Function(
      String code,
      String nameEn,
      String nameEs,
      String parentCode,
    )?
    child,
    required TResult orElse(),
  }) {
    if (child != null) {
      return child(code, nameEn, nameEs, parentCode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StandardDropdownOptionDTO value) standard,
    required TResult Function(WithShortNameDropdownOptionDTO value)
    withShortName,
    required TResult Function(CountryCodeDropdownOptionDTO value) countryCode,
    required TResult Function(ChildDropdownOptionDTO value) child,
  }) {
    return child(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StandardDropdownOptionDTO value)? standard,
    TResult? Function(WithShortNameDropdownOptionDTO value)? withShortName,
    TResult? Function(CountryCodeDropdownOptionDTO value)? countryCode,
    TResult? Function(ChildDropdownOptionDTO value)? child,
  }) {
    return child?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StandardDropdownOptionDTO value)? standard,
    TResult Function(WithShortNameDropdownOptionDTO value)? withShortName,
    TResult Function(CountryCodeDropdownOptionDTO value)? countryCode,
    TResult Function(ChildDropdownOptionDTO value)? child,
    required TResult orElse(),
  }) {
    if (child != null) {
      return child(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ChildDropdownOptionDTOImplToJson(this);
  }
}

abstract class ChildDropdownOptionDTO extends DropdownOptionDTO {
  const factory ChildDropdownOptionDTO({
    required final String code,
    required final String nameEn,
    required final String nameEs,
    required final String parentCode,
  }) = _$ChildDropdownOptionDTOImpl;
  const ChildDropdownOptionDTO._() : super._();

  factory ChildDropdownOptionDTO.fromJson(Map<String, dynamic> json) =
      _$ChildDropdownOptionDTOImpl.fromJson;

  @override
  String get code;
  @override
  String get nameEn;
  @override
  String get nameEs;
  String get parentCode;

  /// Create a copy of DropdownOptionDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChildDropdownOptionDTOImplCopyWith<_$ChildDropdownOptionDTOImpl>
  get copyWith => throw _privateConstructorUsedError;
}
