// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'popular_search.fr.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

PopularSearchDTO _$PopularSearchDTOFromJson(Map<String, dynamic> json) {
  return _PopularSearchDTO.fromJson(json);
}

/// @nodoc
mixin _$PopularSearchDTO {
  List<ItemPopularSearchDTO> get items => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_count')
  int get totalCount => throw _privateConstructorUsedError;

  /// Serializes this PopularSearchDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PopularSearchDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PopularSearchDTOCopyWith<PopularSearchDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PopularSearchDTOCopyWith<$Res> {
  factory $PopularSearchDTOCopyWith(
    PopularSearchDTO value,
    $Res Function(PopularSearchDTO) then,
  ) = _$PopularSearchDTOCopyWithImpl<$Res, PopularSearchDTO>;
  @useResult
  $Res call({
    List<ItemPopularSearchDTO> items,
    @JsonKey(name: 'total_count') int totalCount,
  });
}

/// @nodoc
class _$PopularSearchDTOCopyWithImpl<$Res, $Val extends PopularSearchDTO>
    implements $PopularSearchDTOCopyWith<$Res> {
  _$PopularSearchDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PopularSearchDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? items = null, Object? totalCount = null}) {
    return _then(
      _value.copyWith(
            items:
                null == items
                    ? _value.items
                    : items // ignore: cast_nullable_to_non_nullable
                        as List<ItemPopularSearchDTO>,
            totalCount:
                null == totalCount
                    ? _value.totalCount
                    : totalCount // ignore: cast_nullable_to_non_nullable
                        as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$PopularSearchDTOImplCopyWith<$Res>
    implements $PopularSearchDTOCopyWith<$Res> {
  factory _$$PopularSearchDTOImplCopyWith(
    _$PopularSearchDTOImpl value,
    $Res Function(_$PopularSearchDTOImpl) then,
  ) = __$$PopularSearchDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    List<ItemPopularSearchDTO> items,
    @JsonKey(name: 'total_count') int totalCount,
  });
}

/// @nodoc
class __$$PopularSearchDTOImplCopyWithImpl<$Res>
    extends _$PopularSearchDTOCopyWithImpl<$Res, _$PopularSearchDTOImpl>
    implements _$$PopularSearchDTOImplCopyWith<$Res> {
  __$$PopularSearchDTOImplCopyWithImpl(
    _$PopularSearchDTOImpl _value,
    $Res Function(_$PopularSearchDTOImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PopularSearchDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? items = null, Object? totalCount = null}) {
    return _then(
      _$PopularSearchDTOImpl(
        items:
            null == items
                ? _value._items
                : items // ignore: cast_nullable_to_non_nullable
                    as List<ItemPopularSearchDTO>,
        totalCount:
            null == totalCount
                ? _value.totalCount
                : totalCount // ignore: cast_nullable_to_non_nullable
                    as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$PopularSearchDTOImpl implements _PopularSearchDTO {
  const _$PopularSearchDTOImpl({
    required final List<ItemPopularSearchDTO> items,
    @JsonKey(name: 'total_count') required this.totalCount,
  }) : _items = items;

  factory _$PopularSearchDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$PopularSearchDTOImplFromJson(json);

  final List<ItemPopularSearchDTO> _items;
  @override
  List<ItemPopularSearchDTO> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  @JsonKey(name: 'total_count')
  final int totalCount;

  @override
  String toString() {
    return 'PopularSearchDTO(items: $items, totalCount: $totalCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PopularSearchDTOImpl &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            (identical(other.totalCount, totalCount) ||
                other.totalCount == totalCount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_items),
    totalCount,
  );

  /// Create a copy of PopularSearchDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PopularSearchDTOImplCopyWith<_$PopularSearchDTOImpl> get copyWith =>
      __$$PopularSearchDTOImplCopyWithImpl<_$PopularSearchDTOImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$PopularSearchDTOImplToJson(this);
  }
}

abstract class _PopularSearchDTO implements PopularSearchDTO {
  const factory _PopularSearchDTO({
    required final List<ItemPopularSearchDTO> items,
    @JsonKey(name: 'total_count') required final int totalCount,
  }) = _$PopularSearchDTOImpl;

  factory _PopularSearchDTO.fromJson(Map<String, dynamic> json) =
      _$PopularSearchDTOImpl.fromJson;

  @override
  List<ItemPopularSearchDTO> get items;
  @override
  @JsonKey(name: 'total_count')
  int get totalCount;

  /// Create a copy of PopularSearchDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PopularSearchDTOImplCopyWith<_$PopularSearchDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ItemPopularSearchDTO _$ItemPopularSearchDTOFromJson(Map<String, dynamic> json) {
  return _ItemPopularSearchDTO.fromJson(json);
}

/// @nodoc
mixin _$ItemPopularSearchDTO {
  @JsonKey(name: 'num_results')
  String get numResults => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;

  /// Serializes this ItemPopularSearchDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ItemPopularSearchDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ItemPopularSearchDTOCopyWith<ItemPopularSearchDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemPopularSearchDTOCopyWith<$Res> {
  factory $ItemPopularSearchDTOCopyWith(
    ItemPopularSearchDTO value,
    $Res Function(ItemPopularSearchDTO) then,
  ) = _$ItemPopularSearchDTOCopyWithImpl<$Res, ItemPopularSearchDTO>;
  @useResult
  $Res call({
    @JsonKey(name: 'num_results') String numResults,
    String name,
    String url,
  });
}

/// @nodoc
class _$ItemPopularSearchDTOCopyWithImpl<
  $Res,
  $Val extends ItemPopularSearchDTO
>
    implements $ItemPopularSearchDTOCopyWith<$Res> {
  _$ItemPopularSearchDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ItemPopularSearchDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? numResults = null,
    Object? name = null,
    Object? url = null,
  }) {
    return _then(
      _value.copyWith(
            numResults:
                null == numResults
                    ? _value.numResults
                    : numResults // ignore: cast_nullable_to_non_nullable
                        as String,
            name:
                null == name
                    ? _value.name
                    : name // ignore: cast_nullable_to_non_nullable
                        as String,
            url:
                null == url
                    ? _value.url
                    : url // ignore: cast_nullable_to_non_nullable
                        as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ItemPopularSearchDTOImplCopyWith<$Res>
    implements $ItemPopularSearchDTOCopyWith<$Res> {
  factory _$$ItemPopularSearchDTOImplCopyWith(
    _$ItemPopularSearchDTOImpl value,
    $Res Function(_$ItemPopularSearchDTOImpl) then,
  ) = __$$ItemPopularSearchDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'num_results') String numResults,
    String name,
    String url,
  });
}

/// @nodoc
class __$$ItemPopularSearchDTOImplCopyWithImpl<$Res>
    extends _$ItemPopularSearchDTOCopyWithImpl<$Res, _$ItemPopularSearchDTOImpl>
    implements _$$ItemPopularSearchDTOImplCopyWith<$Res> {
  __$$ItemPopularSearchDTOImplCopyWithImpl(
    _$ItemPopularSearchDTOImpl _value,
    $Res Function(_$ItemPopularSearchDTOImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ItemPopularSearchDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? numResults = null,
    Object? name = null,
    Object? url = null,
  }) {
    return _then(
      _$ItemPopularSearchDTOImpl(
        numResults:
            null == numResults
                ? _value.numResults
                : numResults // ignore: cast_nullable_to_non_nullable
                    as String,
        name:
            null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                    as String,
        url:
            null == url
                ? _value.url
                : url // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ItemPopularSearchDTOImpl implements _ItemPopularSearchDTO {
  const _$ItemPopularSearchDTOImpl({
    @JsonKey(name: 'num_results') required this.numResults,
    required this.name,
    required this.url,
  });

  factory _$ItemPopularSearchDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$ItemPopularSearchDTOImplFromJson(json);

  @override
  @JsonKey(name: 'num_results')
  final String numResults;
  @override
  final String name;
  @override
  final String url;

  @override
  String toString() {
    return 'ItemPopularSearchDTO(numResults: $numResults, name: $name, url: $url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ItemPopularSearchDTOImpl &&
            (identical(other.numResults, numResults) ||
                other.numResults == numResults) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, numResults, name, url);

  /// Create a copy of ItemPopularSearchDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ItemPopularSearchDTOImplCopyWith<_$ItemPopularSearchDTOImpl>
  get copyWith =>
      __$$ItemPopularSearchDTOImplCopyWithImpl<_$ItemPopularSearchDTOImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ItemPopularSearchDTOImplToJson(this);
  }
}

abstract class _ItemPopularSearchDTO implements ItemPopularSearchDTO {
  const factory _ItemPopularSearchDTO({
    @JsonKey(name: 'num_results') required final String numResults,
    required final String name,
    required final String url,
  }) = _$ItemPopularSearchDTOImpl;

  factory _ItemPopularSearchDTO.fromJson(Map<String, dynamic> json) =
      _$ItemPopularSearchDTOImpl.fromJson;

  @override
  @JsonKey(name: 'num_results')
  String get numResults;
  @override
  String get name;
  @override
  String get url;

  /// Create a copy of ItemPopularSearchDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ItemPopularSearchDTOImplCopyWith<_$ItemPopularSearchDTOImpl>
  get copyWith => throw _privateConstructorUsedError;
}
