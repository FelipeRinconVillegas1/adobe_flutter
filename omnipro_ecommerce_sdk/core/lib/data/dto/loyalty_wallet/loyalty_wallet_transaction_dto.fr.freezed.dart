// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'loyalty_wallet_transaction_dto.fr.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

LoyaltyWalletTransactionDTO _$LoyaltyWalletTransactionDTOFromJson(
  Map<String, dynamic> json,
) {
  return _LoyaltyWalletTransactionDTO.fromJson(json);
}

/// @nodoc
mixin _$LoyaltyWalletTransactionDTO {
  String get date => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get spent => throw _privateConstructorUsedError;
  String get earned => throw _privateConstructorUsedError;

  /// Serializes this LoyaltyWalletTransactionDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LoyaltyWalletTransactionDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LoyaltyWalletTransactionDTOCopyWith<LoyaltyWalletTransactionDTO>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoyaltyWalletTransactionDTOCopyWith<$Res> {
  factory $LoyaltyWalletTransactionDTOCopyWith(
    LoyaltyWalletTransactionDTO value,
    $Res Function(LoyaltyWalletTransactionDTO) then,
  ) =
      _$LoyaltyWalletTransactionDTOCopyWithImpl<
        $Res,
        LoyaltyWalletTransactionDTO
      >;
  @useResult
  $Res call({String date, String name, String spent, String earned});
}

/// @nodoc
class _$LoyaltyWalletTransactionDTOCopyWithImpl<
  $Res,
  $Val extends LoyaltyWalletTransactionDTO
>
    implements $LoyaltyWalletTransactionDTOCopyWith<$Res> {
  _$LoyaltyWalletTransactionDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LoyaltyWalletTransactionDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? name = null,
    Object? spent = null,
    Object? earned = null,
  }) {
    return _then(
      _value.copyWith(
            date:
                null == date
                    ? _value.date
                    : date // ignore: cast_nullable_to_non_nullable
                        as String,
            name:
                null == name
                    ? _value.name
                    : name // ignore: cast_nullable_to_non_nullable
                        as String,
            spent:
                null == spent
                    ? _value.spent
                    : spent // ignore: cast_nullable_to_non_nullable
                        as String,
            earned:
                null == earned
                    ? _value.earned
                    : earned // ignore: cast_nullable_to_non_nullable
                        as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$LoyaltyWalletTransactionDTOImplCopyWith<$Res>
    implements $LoyaltyWalletTransactionDTOCopyWith<$Res> {
  factory _$$LoyaltyWalletTransactionDTOImplCopyWith(
    _$LoyaltyWalletTransactionDTOImpl value,
    $Res Function(_$LoyaltyWalletTransactionDTOImpl) then,
  ) = __$$LoyaltyWalletTransactionDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String date, String name, String spent, String earned});
}

/// @nodoc
class __$$LoyaltyWalletTransactionDTOImplCopyWithImpl<$Res>
    extends
        _$LoyaltyWalletTransactionDTOCopyWithImpl<
          $Res,
          _$LoyaltyWalletTransactionDTOImpl
        >
    implements _$$LoyaltyWalletTransactionDTOImplCopyWith<$Res> {
  __$$LoyaltyWalletTransactionDTOImplCopyWithImpl(
    _$LoyaltyWalletTransactionDTOImpl _value,
    $Res Function(_$LoyaltyWalletTransactionDTOImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LoyaltyWalletTransactionDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? name = null,
    Object? spent = null,
    Object? earned = null,
  }) {
    return _then(
      _$LoyaltyWalletTransactionDTOImpl(
        date:
            null == date
                ? _value.date
                : date // ignore: cast_nullable_to_non_nullable
                    as String,
        name:
            null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                    as String,
        spent:
            null == spent
                ? _value.spent
                : spent // ignore: cast_nullable_to_non_nullable
                    as String,
        earned:
            null == earned
                ? _value.earned
                : earned // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$LoyaltyWalletTransactionDTOImpl
    implements _LoyaltyWalletTransactionDTO {
  const _$LoyaltyWalletTransactionDTOImpl({
    required this.date,
    required this.name,
    required this.spent,
    required this.earned,
  });

  factory _$LoyaltyWalletTransactionDTOImpl.fromJson(
    Map<String, dynamic> json,
  ) => _$$LoyaltyWalletTransactionDTOImplFromJson(json);

  @override
  final String date;
  @override
  final String name;
  @override
  final String spent;
  @override
  final String earned;

  @override
  String toString() {
    return 'LoyaltyWalletTransactionDTO(date: $date, name: $name, spent: $spent, earned: $earned)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoyaltyWalletTransactionDTOImpl &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.spent, spent) || other.spent == spent) &&
            (identical(other.earned, earned) || other.earned == earned));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, date, name, spent, earned);

  /// Create a copy of LoyaltyWalletTransactionDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoyaltyWalletTransactionDTOImplCopyWith<_$LoyaltyWalletTransactionDTOImpl>
  get copyWith => __$$LoyaltyWalletTransactionDTOImplCopyWithImpl<
    _$LoyaltyWalletTransactionDTOImpl
  >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LoyaltyWalletTransactionDTOImplToJson(this);
  }
}

abstract class _LoyaltyWalletTransactionDTO
    implements LoyaltyWalletTransactionDTO {
  const factory _LoyaltyWalletTransactionDTO({
    required final String date,
    required final String name,
    required final String spent,
    required final String earned,
  }) = _$LoyaltyWalletTransactionDTOImpl;

  factory _LoyaltyWalletTransactionDTO.fromJson(Map<String, dynamic> json) =
      _$LoyaltyWalletTransactionDTOImpl.fromJson;

  @override
  String get date;
  @override
  String get name;
  @override
  String get spent;
  @override
  String get earned;

  /// Create a copy of LoyaltyWalletTransactionDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoyaltyWalletTransactionDTOImplCopyWith<_$LoyaltyWalletTransactionDTOImpl>
  get copyWith => throw _privateConstructorUsedError;
}
