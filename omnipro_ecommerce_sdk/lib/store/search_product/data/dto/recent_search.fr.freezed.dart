// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'recent_search.fr.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

RecentSearchDTO _$RecentSearchDTOFromJson(Map<String, dynamic> json) {
  return _RecentSearchDTO.fromJson(json);
}

/// @nodoc
mixin _$RecentSearchDTO {
  List<ItemRecentSearchDTO> get items => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_count')
  int get totalCount => throw _privateConstructorUsedError;

  /// Serializes this RecentSearchDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RecentSearchDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RecentSearchDTOCopyWith<RecentSearchDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecentSearchDTOCopyWith<$Res> {
  factory $RecentSearchDTOCopyWith(
    RecentSearchDTO value,
    $Res Function(RecentSearchDTO) then,
  ) = _$RecentSearchDTOCopyWithImpl<$Res, RecentSearchDTO>;
  @useResult
  $Res call({
    List<ItemRecentSearchDTO> items,
    @JsonKey(name: 'total_count') int totalCount,
  });
}

/// @nodoc
class _$RecentSearchDTOCopyWithImpl<$Res, $Val extends RecentSearchDTO>
    implements $RecentSearchDTOCopyWith<$Res> {
  _$RecentSearchDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RecentSearchDTO
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
                        as List<ItemRecentSearchDTO>,
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
abstract class _$$RecentSearchDTOImplCopyWith<$Res>
    implements $RecentSearchDTOCopyWith<$Res> {
  factory _$$RecentSearchDTOImplCopyWith(
    _$RecentSearchDTOImpl value,
    $Res Function(_$RecentSearchDTOImpl) then,
  ) = __$$RecentSearchDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    List<ItemRecentSearchDTO> items,
    @JsonKey(name: 'total_count') int totalCount,
  });
}

/// @nodoc
class __$$RecentSearchDTOImplCopyWithImpl<$Res>
    extends _$RecentSearchDTOCopyWithImpl<$Res, _$RecentSearchDTOImpl>
    implements _$$RecentSearchDTOImplCopyWith<$Res> {
  __$$RecentSearchDTOImplCopyWithImpl(
    _$RecentSearchDTOImpl _value,
    $Res Function(_$RecentSearchDTOImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of RecentSearchDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? items = null, Object? totalCount = null}) {
    return _then(
      _$RecentSearchDTOImpl(
        items:
            null == items
                ? _value._items
                : items // ignore: cast_nullable_to_non_nullable
                    as List<ItemRecentSearchDTO>,
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
class _$RecentSearchDTOImpl implements _RecentSearchDTO {
  const _$RecentSearchDTOImpl({
    required final List<ItemRecentSearchDTO> items,
    @JsonKey(name: 'total_count') required this.totalCount,
  }) : _items = items;

  factory _$RecentSearchDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$RecentSearchDTOImplFromJson(json);

  final List<ItemRecentSearchDTO> _items;
  @override
  List<ItemRecentSearchDTO> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  @JsonKey(name: 'total_count')
  final int totalCount;

  @override
  String toString() {
    return 'RecentSearchDTO(items: $items, totalCount: $totalCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecentSearchDTOImpl &&
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

  /// Create a copy of RecentSearchDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RecentSearchDTOImplCopyWith<_$RecentSearchDTOImpl> get copyWith =>
      __$$RecentSearchDTOImplCopyWithImpl<_$RecentSearchDTOImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$RecentSearchDTOImplToJson(this);
  }
}

abstract class _RecentSearchDTO implements RecentSearchDTO {
  const factory _RecentSearchDTO({
    required final List<ItemRecentSearchDTO> items,
    @JsonKey(name: 'total_count') required final int totalCount,
  }) = _$RecentSearchDTOImpl;

  factory _RecentSearchDTO.fromJson(Map<String, dynamic> json) =
      _$RecentSearchDTOImpl.fromJson;

  @override
  List<ItemRecentSearchDTO> get items;
  @override
  @JsonKey(name: 'total_count')
  int get totalCount;

  /// Create a copy of RecentSearchDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RecentSearchDTOImplCopyWith<_$RecentSearchDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ItemRecentSearchDTO _$ItemRecentSearchDTOFromJson(Map<String, dynamic> json) {
  return _ItemRecentSearchDTO.fromJson(json);
}

/// @nodoc
mixin _$ItemRecentSearchDTO {
  @JsonKey(name: 'num_results')
  String get numResults => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;

  /// Serializes this ItemRecentSearchDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ItemRecentSearchDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ItemRecentSearchDTOCopyWith<ItemRecentSearchDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemRecentSearchDTOCopyWith<$Res> {
  factory $ItemRecentSearchDTOCopyWith(
    ItemRecentSearchDTO value,
    $Res Function(ItemRecentSearchDTO) then,
  ) = _$ItemRecentSearchDTOCopyWithImpl<$Res, ItemRecentSearchDTO>;
  @useResult
  $Res call({
    @JsonKey(name: 'num_results') String numResults,
    String name,
    String url,
  });
}

/// @nodoc
class _$ItemRecentSearchDTOCopyWithImpl<$Res, $Val extends ItemRecentSearchDTO>
    implements $ItemRecentSearchDTOCopyWith<$Res> {
  _$ItemRecentSearchDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ItemRecentSearchDTO
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
abstract class _$$ItemRecentSearchDTOImplCopyWith<$Res>
    implements $ItemRecentSearchDTOCopyWith<$Res> {
  factory _$$ItemRecentSearchDTOImplCopyWith(
    _$ItemRecentSearchDTOImpl value,
    $Res Function(_$ItemRecentSearchDTOImpl) then,
  ) = __$$ItemRecentSearchDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'num_results') String numResults,
    String name,
    String url,
  });
}

/// @nodoc
class __$$ItemRecentSearchDTOImplCopyWithImpl<$Res>
    extends _$ItemRecentSearchDTOCopyWithImpl<$Res, _$ItemRecentSearchDTOImpl>
    implements _$$ItemRecentSearchDTOImplCopyWith<$Res> {
  __$$ItemRecentSearchDTOImplCopyWithImpl(
    _$ItemRecentSearchDTOImpl _value,
    $Res Function(_$ItemRecentSearchDTOImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ItemRecentSearchDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? numResults = null,
    Object? name = null,
    Object? url = null,
  }) {
    return _then(
      _$ItemRecentSearchDTOImpl(
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
class _$ItemRecentSearchDTOImpl implements _ItemRecentSearchDTO {
  const _$ItemRecentSearchDTOImpl({
    @JsonKey(name: 'num_results') required this.numResults,
    required this.name,
    required this.url,
  });

  factory _$ItemRecentSearchDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$ItemRecentSearchDTOImplFromJson(json);

  @override
  @JsonKey(name: 'num_results')
  final String numResults;
  @override
  final String name;
  @override
  final String url;

  @override
  String toString() {
    return 'ItemRecentSearchDTO(numResults: $numResults, name: $name, url: $url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ItemRecentSearchDTOImpl &&
            (identical(other.numResults, numResults) ||
                other.numResults == numResults) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, numResults, name, url);

  /// Create a copy of ItemRecentSearchDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ItemRecentSearchDTOImplCopyWith<_$ItemRecentSearchDTOImpl> get copyWith =>
      __$$ItemRecentSearchDTOImplCopyWithImpl<_$ItemRecentSearchDTOImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ItemRecentSearchDTOImplToJson(this);
  }
}

abstract class _ItemRecentSearchDTO implements ItemRecentSearchDTO {
  const factory _ItemRecentSearchDTO({
    @JsonKey(name: 'num_results') required final String numResults,
    required final String name,
    required final String url,
  }) = _$ItemRecentSearchDTOImpl;

  factory _ItemRecentSearchDTO.fromJson(Map<String, dynamic> json) =
      _$ItemRecentSearchDTOImpl.fromJson;

  @override
  @JsonKey(name: 'num_results')
  String get numResults;
  @override
  String get name;
  @override
  String get url;

  /// Create a copy of ItemRecentSearchDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ItemRecentSearchDTOImplCopyWith<_$ItemRecentSearchDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
