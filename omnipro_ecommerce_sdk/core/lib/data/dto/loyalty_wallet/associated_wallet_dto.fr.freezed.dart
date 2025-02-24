// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'associated_wallet_dto.fr.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

AssociatedWalletDTO _$AssociatedWalletDTOFromJson(Map<String, dynamic> json) {
  return _AssociatedWalletDTO.fromJson(json);
}

/// @nodoc
mixin _$AssociatedWalletDTO {
  @JsonKey(name: 'card_number')
  String get cardNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'card_last_name')
  String get cardLastName => throw _privateConstructorUsedError;
  @JsonKey(name: 'card_first_name')
  String get cardFirstName => throw _privateConstructorUsedError;
  @JsonKey(name: 'card_birth_date')
  String get cardBirthDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'customer_email')
  String get customerEmail => throw _privateConstructorUsedError;

  /// Serializes this AssociatedWalletDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AssociatedWalletDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AssociatedWalletDTOCopyWith<AssociatedWalletDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AssociatedWalletDTOCopyWith<$Res> {
  factory $AssociatedWalletDTOCopyWith(
    AssociatedWalletDTO value,
    $Res Function(AssociatedWalletDTO) then,
  ) = _$AssociatedWalletDTOCopyWithImpl<$Res, AssociatedWalletDTO>;
  @useResult
  $Res call({
    @JsonKey(name: 'card_number') String cardNumber,
    @JsonKey(name: 'card_last_name') String cardLastName,
    @JsonKey(name: 'card_first_name') String cardFirstName,
    @JsonKey(name: 'card_birth_date') String cardBirthDate,
    @JsonKey(name: 'customer_email') String customerEmail,
  });
}

/// @nodoc
class _$AssociatedWalletDTOCopyWithImpl<$Res, $Val extends AssociatedWalletDTO>
    implements $AssociatedWalletDTOCopyWith<$Res> {
  _$AssociatedWalletDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AssociatedWalletDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cardNumber = null,
    Object? cardLastName = null,
    Object? cardFirstName = null,
    Object? cardBirthDate = null,
    Object? customerEmail = null,
  }) {
    return _then(
      _value.copyWith(
            cardNumber:
                null == cardNumber
                    ? _value.cardNumber
                    : cardNumber // ignore: cast_nullable_to_non_nullable
                        as String,
            cardLastName:
                null == cardLastName
                    ? _value.cardLastName
                    : cardLastName // ignore: cast_nullable_to_non_nullable
                        as String,
            cardFirstName:
                null == cardFirstName
                    ? _value.cardFirstName
                    : cardFirstName // ignore: cast_nullable_to_non_nullable
                        as String,
            cardBirthDate:
                null == cardBirthDate
                    ? _value.cardBirthDate
                    : cardBirthDate // ignore: cast_nullable_to_non_nullable
                        as String,
            customerEmail:
                null == customerEmail
                    ? _value.customerEmail
                    : customerEmail // ignore: cast_nullable_to_non_nullable
                        as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$AssociatedWalletDTOImplCopyWith<$Res>
    implements $AssociatedWalletDTOCopyWith<$Res> {
  factory _$$AssociatedWalletDTOImplCopyWith(
    _$AssociatedWalletDTOImpl value,
    $Res Function(_$AssociatedWalletDTOImpl) then,
  ) = __$$AssociatedWalletDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'card_number') String cardNumber,
    @JsonKey(name: 'card_last_name') String cardLastName,
    @JsonKey(name: 'card_first_name') String cardFirstName,
    @JsonKey(name: 'card_birth_date') String cardBirthDate,
    @JsonKey(name: 'customer_email') String customerEmail,
  });
}

/// @nodoc
class __$$AssociatedWalletDTOImplCopyWithImpl<$Res>
    extends _$AssociatedWalletDTOCopyWithImpl<$Res, _$AssociatedWalletDTOImpl>
    implements _$$AssociatedWalletDTOImplCopyWith<$Res> {
  __$$AssociatedWalletDTOImplCopyWithImpl(
    _$AssociatedWalletDTOImpl _value,
    $Res Function(_$AssociatedWalletDTOImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AssociatedWalletDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cardNumber = null,
    Object? cardLastName = null,
    Object? cardFirstName = null,
    Object? cardBirthDate = null,
    Object? customerEmail = null,
  }) {
    return _then(
      _$AssociatedWalletDTOImpl(
        cardNumber:
            null == cardNumber
                ? _value.cardNumber
                : cardNumber // ignore: cast_nullable_to_non_nullable
                    as String,
        cardLastName:
            null == cardLastName
                ? _value.cardLastName
                : cardLastName // ignore: cast_nullable_to_non_nullable
                    as String,
        cardFirstName:
            null == cardFirstName
                ? _value.cardFirstName
                : cardFirstName // ignore: cast_nullable_to_non_nullable
                    as String,
        cardBirthDate:
            null == cardBirthDate
                ? _value.cardBirthDate
                : cardBirthDate // ignore: cast_nullable_to_non_nullable
                    as String,
        customerEmail:
            null == customerEmail
                ? _value.customerEmail
                : customerEmail // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$AssociatedWalletDTOImpl implements _AssociatedWalletDTO {
  const _$AssociatedWalletDTOImpl({
    @JsonKey(name: 'card_number') required this.cardNumber,
    @JsonKey(name: 'card_last_name') required this.cardLastName,
    @JsonKey(name: 'card_first_name') required this.cardFirstName,
    @JsonKey(name: 'card_birth_date') required this.cardBirthDate,
    @JsonKey(name: 'customer_email') required this.customerEmail,
  });

  factory _$AssociatedWalletDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$AssociatedWalletDTOImplFromJson(json);

  @override
  @JsonKey(name: 'card_number')
  final String cardNumber;
  @override
  @JsonKey(name: 'card_last_name')
  final String cardLastName;
  @override
  @JsonKey(name: 'card_first_name')
  final String cardFirstName;
  @override
  @JsonKey(name: 'card_birth_date')
  final String cardBirthDate;
  @override
  @JsonKey(name: 'customer_email')
  final String customerEmail;

  @override
  String toString() {
    return 'AssociatedWalletDTO(cardNumber: $cardNumber, cardLastName: $cardLastName, cardFirstName: $cardFirstName, cardBirthDate: $cardBirthDate, customerEmail: $customerEmail)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AssociatedWalletDTOImpl &&
            (identical(other.cardNumber, cardNumber) ||
                other.cardNumber == cardNumber) &&
            (identical(other.cardLastName, cardLastName) ||
                other.cardLastName == cardLastName) &&
            (identical(other.cardFirstName, cardFirstName) ||
                other.cardFirstName == cardFirstName) &&
            (identical(other.cardBirthDate, cardBirthDate) ||
                other.cardBirthDate == cardBirthDate) &&
            (identical(other.customerEmail, customerEmail) ||
                other.customerEmail == customerEmail));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    cardNumber,
    cardLastName,
    cardFirstName,
    cardBirthDate,
    customerEmail,
  );

  /// Create a copy of AssociatedWalletDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AssociatedWalletDTOImplCopyWith<_$AssociatedWalletDTOImpl> get copyWith =>
      __$$AssociatedWalletDTOImplCopyWithImpl<_$AssociatedWalletDTOImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$AssociatedWalletDTOImplToJson(this);
  }
}

abstract class _AssociatedWalletDTO implements AssociatedWalletDTO {
  const factory _AssociatedWalletDTO({
    @JsonKey(name: 'card_number') required final String cardNumber,
    @JsonKey(name: 'card_last_name') required final String cardLastName,
    @JsonKey(name: 'card_first_name') required final String cardFirstName,
    @JsonKey(name: 'card_birth_date') required final String cardBirthDate,
    @JsonKey(name: 'customer_email') required final String customerEmail,
  }) = _$AssociatedWalletDTOImpl;

  factory _AssociatedWalletDTO.fromJson(Map<String, dynamic> json) =
      _$AssociatedWalletDTOImpl.fromJson;

  @override
  @JsonKey(name: 'card_number')
  String get cardNumber;
  @override
  @JsonKey(name: 'card_last_name')
  String get cardLastName;
  @override
  @JsonKey(name: 'card_first_name')
  String get cardFirstName;
  @override
  @JsonKey(name: 'card_birth_date')
  String get cardBirthDate;
  @override
  @JsonKey(name: 'customer_email')
  String get customerEmail;

  /// Create a copy of AssociatedWalletDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AssociatedWalletDTOImplCopyWith<_$AssociatedWalletDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
