// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'complement_share_product_dto.fr.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ComplementShareProductDTO _$ComplementShareProductDTOFromJson(
  Map<String, dynamic> json,
) {
  return _ComplementShareProductDTO.fromJson(json);
}

/// @nodoc
mixin _$ComplementShareProductDTO {
  String get url => throw _privateConstructorUsedError;
  @JsonKey(name: 'message')
  LocalizationMessageDTO get initialMessage =>
      throw _privateConstructorUsedError;

  /// Serializes this ComplementShareProductDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ComplementShareProductDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ComplementShareProductDTOCopyWith<ComplementShareProductDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ComplementShareProductDTOCopyWith<$Res> {
  factory $ComplementShareProductDTOCopyWith(
    ComplementShareProductDTO value,
    $Res Function(ComplementShareProductDTO) then,
  ) = _$ComplementShareProductDTOCopyWithImpl<$Res, ComplementShareProductDTO>;
  @useResult
  $Res call({
    String url,
    @JsonKey(name: 'message') LocalizationMessageDTO initialMessage,
  });

  $LocalizationMessageDTOCopyWith<$Res> get initialMessage;
}

/// @nodoc
class _$ComplementShareProductDTOCopyWithImpl<
  $Res,
  $Val extends ComplementShareProductDTO
>
    implements $ComplementShareProductDTOCopyWith<$Res> {
  _$ComplementShareProductDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ComplementShareProductDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? url = null, Object? initialMessage = null}) {
    return _then(
      _value.copyWith(
            url:
                null == url
                    ? _value.url
                    : url // ignore: cast_nullable_to_non_nullable
                        as String,
            initialMessage:
                null == initialMessage
                    ? _value.initialMessage
                    : initialMessage // ignore: cast_nullable_to_non_nullable
                        as LocalizationMessageDTO,
          )
          as $Val,
    );
  }

  /// Create a copy of ComplementShareProductDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LocalizationMessageDTOCopyWith<$Res> get initialMessage {
    return $LocalizationMessageDTOCopyWith<$Res>(_value.initialMessage, (
      value,
    ) {
      return _then(_value.copyWith(initialMessage: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ComplementShareProductDTOImplCopyWith<$Res>
    implements $ComplementShareProductDTOCopyWith<$Res> {
  factory _$$ComplementShareProductDTOImplCopyWith(
    _$ComplementShareProductDTOImpl value,
    $Res Function(_$ComplementShareProductDTOImpl) then,
  ) = __$$ComplementShareProductDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String url,
    @JsonKey(name: 'message') LocalizationMessageDTO initialMessage,
  });

  @override
  $LocalizationMessageDTOCopyWith<$Res> get initialMessage;
}

/// @nodoc
class __$$ComplementShareProductDTOImplCopyWithImpl<$Res>
    extends
        _$ComplementShareProductDTOCopyWithImpl<
          $Res,
          _$ComplementShareProductDTOImpl
        >
    implements _$$ComplementShareProductDTOImplCopyWith<$Res> {
  __$$ComplementShareProductDTOImplCopyWithImpl(
    _$ComplementShareProductDTOImpl _value,
    $Res Function(_$ComplementShareProductDTOImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ComplementShareProductDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? url = null, Object? initialMessage = null}) {
    return _then(
      _$ComplementShareProductDTOImpl(
        url:
            null == url
                ? _value.url
                : url // ignore: cast_nullable_to_non_nullable
                    as String,
        initialMessage:
            null == initialMessage
                ? _value.initialMessage
                : initialMessage // ignore: cast_nullable_to_non_nullable
                    as LocalizationMessageDTO,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ComplementShareProductDTOImpl implements _ComplementShareProductDTO {
  const _$ComplementShareProductDTOImpl({
    required this.url,
    @JsonKey(name: 'message') required this.initialMessage,
  });

  factory _$ComplementShareProductDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$ComplementShareProductDTOImplFromJson(json);

  @override
  final String url;
  @override
  @JsonKey(name: 'message')
  final LocalizationMessageDTO initialMessage;

  @override
  String toString() {
    return 'ComplementShareProductDTO(url: $url, initialMessage: $initialMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ComplementShareProductDTOImpl &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.initialMessage, initialMessage) ||
                other.initialMessage == initialMessage));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, url, initialMessage);

  /// Create a copy of ComplementShareProductDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ComplementShareProductDTOImplCopyWith<_$ComplementShareProductDTOImpl>
  get copyWith => __$$ComplementShareProductDTOImplCopyWithImpl<
    _$ComplementShareProductDTOImpl
  >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ComplementShareProductDTOImplToJson(this);
  }
}

abstract class _ComplementShareProductDTO implements ComplementShareProductDTO {
  const factory _ComplementShareProductDTO({
    required final String url,
    @JsonKey(name: 'message')
    required final LocalizationMessageDTO initialMessage,
  }) = _$ComplementShareProductDTOImpl;

  factory _ComplementShareProductDTO.fromJson(Map<String, dynamic> json) =
      _$ComplementShareProductDTOImpl.fromJson;

  @override
  String get url;
  @override
  @JsonKey(name: 'message')
  LocalizationMessageDTO get initialMessage;

  /// Create a copy of ComplementShareProductDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ComplementShareProductDTOImplCopyWith<_$ComplementShareProductDTOImpl>
  get copyWith => throw _privateConstructorUsedError;
}
