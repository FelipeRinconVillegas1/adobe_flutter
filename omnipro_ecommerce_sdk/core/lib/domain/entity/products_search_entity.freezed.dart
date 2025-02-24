// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'products_search_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ProductsSearch _$ProductsSearchFromJson(Map<String, dynamic> json) {
  return _ProductsSearch.fromJson(json);
}

/// @nodoc
mixin _$ProductsSearch {
  List<ProductsSearchItems> get items => throw _privateConstructorUsedError;
  int get totalCount => throw _privateConstructorUsedError;

  /// Serializes this ProductsSearch to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProductsSearch
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductsSearchCopyWith<ProductsSearch> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductsSearchCopyWith<$Res> {
  factory $ProductsSearchCopyWith(
    ProductsSearch value,
    $Res Function(ProductsSearch) then,
  ) = _$ProductsSearchCopyWithImpl<$Res, ProductsSearch>;
  @useResult
  $Res call({List<ProductsSearchItems> items, int totalCount});
}

/// @nodoc
class _$ProductsSearchCopyWithImpl<$Res, $Val extends ProductsSearch>
    implements $ProductsSearchCopyWith<$Res> {
  _$ProductsSearchCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductsSearch
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
                        as List<ProductsSearchItems>,
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
abstract class _$$ProductsSearchImplCopyWith<$Res>
    implements $ProductsSearchCopyWith<$Res> {
  factory _$$ProductsSearchImplCopyWith(
    _$ProductsSearchImpl value,
    $Res Function(_$ProductsSearchImpl) then,
  ) = __$$ProductsSearchImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<ProductsSearchItems> items, int totalCount});
}

/// @nodoc
class __$$ProductsSearchImplCopyWithImpl<$Res>
    extends _$ProductsSearchCopyWithImpl<$Res, _$ProductsSearchImpl>
    implements _$$ProductsSearchImplCopyWith<$Res> {
  __$$ProductsSearchImplCopyWithImpl(
    _$ProductsSearchImpl _value,
    $Res Function(_$ProductsSearchImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ProductsSearch
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? items = null, Object? totalCount = null}) {
    return _then(
      _$ProductsSearchImpl(
        items:
            null == items
                ? _value.items
                : items // ignore: cast_nullable_to_non_nullable
                    as List<ProductsSearchItems>,
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
class _$ProductsSearchImpl implements _ProductsSearch {
  const _$ProductsSearchImpl({this.items = const [], required this.totalCount});

  factory _$ProductsSearchImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductsSearchImplFromJson(json);

  @override
  @JsonKey()
  final List<ProductsSearchItems> items;
  @override
  final int totalCount;

  @override
  String toString() {
    return 'ProductsSearch(items: $items, totalCount: $totalCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductsSearchImpl &&
            const DeepCollectionEquality().equals(other.items, items) &&
            (identical(other.totalCount, totalCount) ||
                other.totalCount == totalCount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(items),
    totalCount,
  );

  /// Create a copy of ProductsSearch
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductsSearchImplCopyWith<_$ProductsSearchImpl> get copyWith =>
      __$$ProductsSearchImplCopyWithImpl<_$ProductsSearchImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductsSearchImplToJson(this);
  }
}

abstract class _ProductsSearch implements ProductsSearch {
  const factory _ProductsSearch({
    final List<ProductsSearchItems> items,
    required final int totalCount,
  }) = _$ProductsSearchImpl;

  factory _ProductsSearch.fromJson(Map<String, dynamic> json) =
      _$ProductsSearchImpl.fromJson;

  @override
  List<ProductsSearchItems> get items;
  @override
  int get totalCount;

  /// Create a copy of ProductsSearch
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductsSearchImplCopyWith<_$ProductsSearchImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ProductsSearchItems _$ProductsSearchItemsFromJson(Map<String, dynamic> json) {
  return _ProductsSearchItems.fromJson(json);
}

/// @nodoc
mixin _$ProductsSearchItems {
  String get name => throw _privateConstructorUsedError;
  String get sku => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;
  List<String>? get labels => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  String? get urlKey => throw _privateConstructorUsedError;
  double? get specialPrice => throw _privateConstructorUsedError;
  ProductsSearchImage get image => throw _privateConstructorUsedError;
  ProductsSearchImage? get smallImage => throw _privateConstructorUsedError;
  int? get ratingSummary => throw _privateConstructorUsedError;
  int? get reviewsCount => throw _privateConstructorUsedError;
  bool? get isSalable => throw _privateConstructorUsedError;
  ProductsSearchPriceRange? get priceRange =>
      throw _privateConstructorUsedError;

  /// Serializes this ProductsSearchItems to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProductsSearchItems
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductsSearchItemsCopyWith<ProductsSearchItems> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductsSearchItemsCopyWith<$Res> {
  factory $ProductsSearchItemsCopyWith(
    ProductsSearchItems value,
    $Res Function(ProductsSearchItems) then,
  ) = _$ProductsSearchItemsCopyWithImpl<$Res, ProductsSearchItems>;
  @useResult
  $Res call({
    String name,
    String sku,
    int id,
    List<String>? labels,
    String? type,
    String? urlKey,
    double? specialPrice,
    ProductsSearchImage image,
    ProductsSearchImage? smallImage,
    int? ratingSummary,
    int? reviewsCount,
    bool? isSalable,
    ProductsSearchPriceRange? priceRange,
  });

  $ProductsSearchImageCopyWith<$Res> get image;
  $ProductsSearchImageCopyWith<$Res>? get smallImage;
  $ProductsSearchPriceRangeCopyWith<$Res>? get priceRange;
}

/// @nodoc
class _$ProductsSearchItemsCopyWithImpl<$Res, $Val extends ProductsSearchItems>
    implements $ProductsSearchItemsCopyWith<$Res> {
  _$ProductsSearchItemsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductsSearchItems
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? sku = null,
    Object? id = null,
    Object? labels = freezed,
    Object? type = freezed,
    Object? urlKey = freezed,
    Object? specialPrice = freezed,
    Object? image = null,
    Object? smallImage = freezed,
    Object? ratingSummary = freezed,
    Object? reviewsCount = freezed,
    Object? isSalable = freezed,
    Object? priceRange = freezed,
  }) {
    return _then(
      _value.copyWith(
            name:
                null == name
                    ? _value.name
                    : name // ignore: cast_nullable_to_non_nullable
                        as String,
            sku:
                null == sku
                    ? _value.sku
                    : sku // ignore: cast_nullable_to_non_nullable
                        as String,
            id:
                null == id
                    ? _value.id
                    : id // ignore: cast_nullable_to_non_nullable
                        as int,
            labels:
                freezed == labels
                    ? _value.labels
                    : labels // ignore: cast_nullable_to_non_nullable
                        as List<String>?,
            type:
                freezed == type
                    ? _value.type
                    : type // ignore: cast_nullable_to_non_nullable
                        as String?,
            urlKey:
                freezed == urlKey
                    ? _value.urlKey
                    : urlKey // ignore: cast_nullable_to_non_nullable
                        as String?,
            specialPrice:
                freezed == specialPrice
                    ? _value.specialPrice
                    : specialPrice // ignore: cast_nullable_to_non_nullable
                        as double?,
            image:
                null == image
                    ? _value.image
                    : image // ignore: cast_nullable_to_non_nullable
                        as ProductsSearchImage,
            smallImage:
                freezed == smallImage
                    ? _value.smallImage
                    : smallImage // ignore: cast_nullable_to_non_nullable
                        as ProductsSearchImage?,
            ratingSummary:
                freezed == ratingSummary
                    ? _value.ratingSummary
                    : ratingSummary // ignore: cast_nullable_to_non_nullable
                        as int?,
            reviewsCount:
                freezed == reviewsCount
                    ? _value.reviewsCount
                    : reviewsCount // ignore: cast_nullable_to_non_nullable
                        as int?,
            isSalable:
                freezed == isSalable
                    ? _value.isSalable
                    : isSalable // ignore: cast_nullable_to_non_nullable
                        as bool?,
            priceRange:
                freezed == priceRange
                    ? _value.priceRange
                    : priceRange // ignore: cast_nullable_to_non_nullable
                        as ProductsSearchPriceRange?,
          )
          as $Val,
    );
  }

  /// Create a copy of ProductsSearchItems
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProductsSearchImageCopyWith<$Res> get image {
    return $ProductsSearchImageCopyWith<$Res>(_value.image, (value) {
      return _then(_value.copyWith(image: value) as $Val);
    });
  }

  /// Create a copy of ProductsSearchItems
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProductsSearchImageCopyWith<$Res>? get smallImage {
    if (_value.smallImage == null) {
      return null;
    }

    return $ProductsSearchImageCopyWith<$Res>(_value.smallImage!, (value) {
      return _then(_value.copyWith(smallImage: value) as $Val);
    });
  }

  /// Create a copy of ProductsSearchItems
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProductsSearchPriceRangeCopyWith<$Res>? get priceRange {
    if (_value.priceRange == null) {
      return null;
    }

    return $ProductsSearchPriceRangeCopyWith<$Res>(_value.priceRange!, (value) {
      return _then(_value.copyWith(priceRange: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProductsSearchItemsImplCopyWith<$Res>
    implements $ProductsSearchItemsCopyWith<$Res> {
  factory _$$ProductsSearchItemsImplCopyWith(
    _$ProductsSearchItemsImpl value,
    $Res Function(_$ProductsSearchItemsImpl) then,
  ) = __$$ProductsSearchItemsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String name,
    String sku,
    int id,
    List<String>? labels,
    String? type,
    String? urlKey,
    double? specialPrice,
    ProductsSearchImage image,
    ProductsSearchImage? smallImage,
    int? ratingSummary,
    int? reviewsCount,
    bool? isSalable,
    ProductsSearchPriceRange? priceRange,
  });

  @override
  $ProductsSearchImageCopyWith<$Res> get image;
  @override
  $ProductsSearchImageCopyWith<$Res>? get smallImage;
  @override
  $ProductsSearchPriceRangeCopyWith<$Res>? get priceRange;
}

/// @nodoc
class __$$ProductsSearchItemsImplCopyWithImpl<$Res>
    extends _$ProductsSearchItemsCopyWithImpl<$Res, _$ProductsSearchItemsImpl>
    implements _$$ProductsSearchItemsImplCopyWith<$Res> {
  __$$ProductsSearchItemsImplCopyWithImpl(
    _$ProductsSearchItemsImpl _value,
    $Res Function(_$ProductsSearchItemsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ProductsSearchItems
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? sku = null,
    Object? id = null,
    Object? labels = freezed,
    Object? type = freezed,
    Object? urlKey = freezed,
    Object? specialPrice = freezed,
    Object? image = null,
    Object? smallImage = freezed,
    Object? ratingSummary = freezed,
    Object? reviewsCount = freezed,
    Object? isSalable = freezed,
    Object? priceRange = freezed,
  }) {
    return _then(
      _$ProductsSearchItemsImpl(
        name:
            null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                    as String,
        sku:
            null == sku
                ? _value.sku
                : sku // ignore: cast_nullable_to_non_nullable
                    as String,
        id:
            null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                    as int,
        labels:
            freezed == labels
                ? _value._labels
                : labels // ignore: cast_nullable_to_non_nullable
                    as List<String>?,
        type:
            freezed == type
                ? _value.type
                : type // ignore: cast_nullable_to_non_nullable
                    as String?,
        urlKey:
            freezed == urlKey
                ? _value.urlKey
                : urlKey // ignore: cast_nullable_to_non_nullable
                    as String?,
        specialPrice:
            freezed == specialPrice
                ? _value.specialPrice
                : specialPrice // ignore: cast_nullable_to_non_nullable
                    as double?,
        image:
            null == image
                ? _value.image
                : image // ignore: cast_nullable_to_non_nullable
                    as ProductsSearchImage,
        smallImage:
            freezed == smallImage
                ? _value.smallImage
                : smallImage // ignore: cast_nullable_to_non_nullable
                    as ProductsSearchImage?,
        ratingSummary:
            freezed == ratingSummary
                ? _value.ratingSummary
                : ratingSummary // ignore: cast_nullable_to_non_nullable
                    as int?,
        reviewsCount:
            freezed == reviewsCount
                ? _value.reviewsCount
                : reviewsCount // ignore: cast_nullable_to_non_nullable
                    as int?,
        isSalable:
            freezed == isSalable
                ? _value.isSalable
                : isSalable // ignore: cast_nullable_to_non_nullable
                    as bool?,
        priceRange:
            freezed == priceRange
                ? _value.priceRange
                : priceRange // ignore: cast_nullable_to_non_nullable
                    as ProductsSearchPriceRange?,
      ),
    );
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$ProductsSearchItemsImpl implements _ProductsSearchItems {
  const _$ProductsSearchItemsImpl({
    required this.name,
    required this.sku,
    required this.id,
    final List<String>? labels,
    this.type,
    this.urlKey,
    this.specialPrice,
    required this.image,
    this.smallImage,
    this.ratingSummary,
    this.reviewsCount,
    this.isSalable,
    this.priceRange,
  }) : _labels = labels;

  factory _$ProductsSearchItemsImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductsSearchItemsImplFromJson(json);

  @override
  final String name;
  @override
  final String sku;
  @override
  final int id;
  final List<String>? _labels;
  @override
  List<String>? get labels {
    final value = _labels;
    if (value == null) return null;
    if (_labels is EqualUnmodifiableListView) return _labels;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? type;
  @override
  final String? urlKey;
  @override
  final double? specialPrice;
  @override
  final ProductsSearchImage image;
  @override
  final ProductsSearchImage? smallImage;
  @override
  final int? ratingSummary;
  @override
  final int? reviewsCount;
  @override
  final bool? isSalable;
  @override
  final ProductsSearchPriceRange? priceRange;

  @override
  String toString() {
    return 'ProductsSearchItems(name: $name, sku: $sku, id: $id, labels: $labels, type: $type, urlKey: $urlKey, specialPrice: $specialPrice, image: $image, smallImage: $smallImage, ratingSummary: $ratingSummary, reviewsCount: $reviewsCount, isSalable: $isSalable, priceRange: $priceRange)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductsSearchItemsImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.sku, sku) || other.sku == sku) &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other._labels, _labels) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.urlKey, urlKey) || other.urlKey == urlKey) &&
            (identical(other.specialPrice, specialPrice) ||
                other.specialPrice == specialPrice) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.smallImage, smallImage) ||
                other.smallImage == smallImage) &&
            (identical(other.ratingSummary, ratingSummary) ||
                other.ratingSummary == ratingSummary) &&
            (identical(other.reviewsCount, reviewsCount) ||
                other.reviewsCount == reviewsCount) &&
            (identical(other.isSalable, isSalable) ||
                other.isSalable == isSalable) &&
            (identical(other.priceRange, priceRange) ||
                other.priceRange == priceRange));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    name,
    sku,
    id,
    const DeepCollectionEquality().hash(_labels),
    type,
    urlKey,
    specialPrice,
    image,
    smallImage,
    ratingSummary,
    reviewsCount,
    isSalable,
    priceRange,
  );

  /// Create a copy of ProductsSearchItems
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductsSearchItemsImplCopyWith<_$ProductsSearchItemsImpl> get copyWith =>
      __$$ProductsSearchItemsImplCopyWithImpl<_$ProductsSearchItemsImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductsSearchItemsImplToJson(this);
  }
}

abstract class _ProductsSearchItems implements ProductsSearchItems {
  const factory _ProductsSearchItems({
    required final String name,
    required final String sku,
    required final int id,
    final List<String>? labels,
    final String? type,
    final String? urlKey,
    final double? specialPrice,
    required final ProductsSearchImage image,
    final ProductsSearchImage? smallImage,
    final int? ratingSummary,
    final int? reviewsCount,
    final bool? isSalable,
    final ProductsSearchPriceRange? priceRange,
  }) = _$ProductsSearchItemsImpl;

  factory _ProductsSearchItems.fromJson(Map<String, dynamic> json) =
      _$ProductsSearchItemsImpl.fromJson;

  @override
  String get name;
  @override
  String get sku;
  @override
  int get id;
  @override
  List<String>? get labels;
  @override
  String? get type;
  @override
  String? get urlKey;
  @override
  double? get specialPrice;
  @override
  ProductsSearchImage get image;
  @override
  ProductsSearchImage? get smallImage;
  @override
  int? get ratingSummary;
  @override
  int? get reviewsCount;
  @override
  bool? get isSalable;
  @override
  ProductsSearchPriceRange? get priceRange;

  /// Create a copy of ProductsSearchItems
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductsSearchItemsImplCopyWith<_$ProductsSearchItemsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ProductsSearchPriceRange _$ProductsSearchPriceRangeFromJson(
  Map<String, dynamic> json,
) {
  return _ProductsSearchPriceRange.fromJson(json);
}

/// @nodoc
mixin _$ProductsSearchPriceRange {
  ProductsSearchOptionPrice? get minimumPrice =>
      throw _privateConstructorUsedError;
  ProductsSearchOptionPrice? get maximumPrice =>
      throw _privateConstructorUsedError;

  /// Serializes this ProductsSearchPriceRange to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProductsSearchPriceRange
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductsSearchPriceRangeCopyWith<ProductsSearchPriceRange> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductsSearchPriceRangeCopyWith<$Res> {
  factory $ProductsSearchPriceRangeCopyWith(
    ProductsSearchPriceRange value,
    $Res Function(ProductsSearchPriceRange) then,
  ) = _$ProductsSearchPriceRangeCopyWithImpl<$Res, ProductsSearchPriceRange>;
  @useResult
  $Res call({
    ProductsSearchOptionPrice? minimumPrice,
    ProductsSearchOptionPrice? maximumPrice,
  });

  $ProductsSearchOptionPriceCopyWith<$Res>? get minimumPrice;
  $ProductsSearchOptionPriceCopyWith<$Res>? get maximumPrice;
}

/// @nodoc
class _$ProductsSearchPriceRangeCopyWithImpl<
  $Res,
  $Val extends ProductsSearchPriceRange
>
    implements $ProductsSearchPriceRangeCopyWith<$Res> {
  _$ProductsSearchPriceRangeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductsSearchPriceRange
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? minimumPrice = freezed, Object? maximumPrice = freezed}) {
    return _then(
      _value.copyWith(
            minimumPrice:
                freezed == minimumPrice
                    ? _value.minimumPrice
                    : minimumPrice // ignore: cast_nullable_to_non_nullable
                        as ProductsSearchOptionPrice?,
            maximumPrice:
                freezed == maximumPrice
                    ? _value.maximumPrice
                    : maximumPrice // ignore: cast_nullable_to_non_nullable
                        as ProductsSearchOptionPrice?,
          )
          as $Val,
    );
  }

  /// Create a copy of ProductsSearchPriceRange
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProductsSearchOptionPriceCopyWith<$Res>? get minimumPrice {
    if (_value.minimumPrice == null) {
      return null;
    }

    return $ProductsSearchOptionPriceCopyWith<$Res>(_value.minimumPrice!, (
      value,
    ) {
      return _then(_value.copyWith(minimumPrice: value) as $Val);
    });
  }

  /// Create a copy of ProductsSearchPriceRange
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProductsSearchOptionPriceCopyWith<$Res>? get maximumPrice {
    if (_value.maximumPrice == null) {
      return null;
    }

    return $ProductsSearchOptionPriceCopyWith<$Res>(_value.maximumPrice!, (
      value,
    ) {
      return _then(_value.copyWith(maximumPrice: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProductsSearchPriceRangeImplCopyWith<$Res>
    implements $ProductsSearchPriceRangeCopyWith<$Res> {
  factory _$$ProductsSearchPriceRangeImplCopyWith(
    _$ProductsSearchPriceRangeImpl value,
    $Res Function(_$ProductsSearchPriceRangeImpl) then,
  ) = __$$ProductsSearchPriceRangeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    ProductsSearchOptionPrice? minimumPrice,
    ProductsSearchOptionPrice? maximumPrice,
  });

  @override
  $ProductsSearchOptionPriceCopyWith<$Res>? get minimumPrice;
  @override
  $ProductsSearchOptionPriceCopyWith<$Res>? get maximumPrice;
}

/// @nodoc
class __$$ProductsSearchPriceRangeImplCopyWithImpl<$Res>
    extends
        _$ProductsSearchPriceRangeCopyWithImpl<
          $Res,
          _$ProductsSearchPriceRangeImpl
        >
    implements _$$ProductsSearchPriceRangeImplCopyWith<$Res> {
  __$$ProductsSearchPriceRangeImplCopyWithImpl(
    _$ProductsSearchPriceRangeImpl _value,
    $Res Function(_$ProductsSearchPriceRangeImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ProductsSearchPriceRange
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? minimumPrice = freezed, Object? maximumPrice = freezed}) {
    return _then(
      _$ProductsSearchPriceRangeImpl(
        minimumPrice:
            freezed == minimumPrice
                ? _value.minimumPrice
                : minimumPrice // ignore: cast_nullable_to_non_nullable
                    as ProductsSearchOptionPrice?,
        maximumPrice:
            freezed == maximumPrice
                ? _value.maximumPrice
                : maximumPrice // ignore: cast_nullable_to_non_nullable
                    as ProductsSearchOptionPrice?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductsSearchPriceRangeImpl implements _ProductsSearchPriceRange {
  const _$ProductsSearchPriceRangeImpl({this.minimumPrice, this.maximumPrice});

  factory _$ProductsSearchPriceRangeImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductsSearchPriceRangeImplFromJson(json);

  @override
  final ProductsSearchOptionPrice? minimumPrice;
  @override
  final ProductsSearchOptionPrice? maximumPrice;

  @override
  String toString() {
    return 'ProductsSearchPriceRange(minimumPrice: $minimumPrice, maximumPrice: $maximumPrice)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductsSearchPriceRangeImpl &&
            (identical(other.minimumPrice, minimumPrice) ||
                other.minimumPrice == minimumPrice) &&
            (identical(other.maximumPrice, maximumPrice) ||
                other.maximumPrice == maximumPrice));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, minimumPrice, maximumPrice);

  /// Create a copy of ProductsSearchPriceRange
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductsSearchPriceRangeImplCopyWith<_$ProductsSearchPriceRangeImpl>
  get copyWith => __$$ProductsSearchPriceRangeImplCopyWithImpl<
    _$ProductsSearchPriceRangeImpl
  >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductsSearchPriceRangeImplToJson(this);
  }
}

abstract class _ProductsSearchPriceRange implements ProductsSearchPriceRange {
  const factory _ProductsSearchPriceRange({
    final ProductsSearchOptionPrice? minimumPrice,
    final ProductsSearchOptionPrice? maximumPrice,
  }) = _$ProductsSearchPriceRangeImpl;

  factory _ProductsSearchPriceRange.fromJson(Map<String, dynamic> json) =
      _$ProductsSearchPriceRangeImpl.fromJson;

  @override
  ProductsSearchOptionPrice? get minimumPrice;
  @override
  ProductsSearchOptionPrice? get maximumPrice;

  /// Create a copy of ProductsSearchPriceRange
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductsSearchPriceRangeImplCopyWith<_$ProductsSearchPriceRangeImpl>
  get copyWith => throw _privateConstructorUsedError;
}

ProductsSearchOptionPrice _$ProductsSearchOptionPriceFromJson(
  Map<String, dynamic> json,
) {
  return _ProductsSearchOptionPrice.fromJson(json);
}

/// @nodoc
mixin _$ProductsSearchOptionPrice {
  Money get finalPrice => throw _privateConstructorUsedError;
  Money get regularPrice => throw _privateConstructorUsedError;

  /// Serializes this ProductsSearchOptionPrice to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProductsSearchOptionPrice
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductsSearchOptionPriceCopyWith<ProductsSearchOptionPrice> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductsSearchOptionPriceCopyWith<$Res> {
  factory $ProductsSearchOptionPriceCopyWith(
    ProductsSearchOptionPrice value,
    $Res Function(ProductsSearchOptionPrice) then,
  ) = _$ProductsSearchOptionPriceCopyWithImpl<$Res, ProductsSearchOptionPrice>;
  @useResult
  $Res call({Money finalPrice, Money regularPrice});
}

/// @nodoc
class _$ProductsSearchOptionPriceCopyWithImpl<
  $Res,
  $Val extends ProductsSearchOptionPrice
>
    implements $ProductsSearchOptionPriceCopyWith<$Res> {
  _$ProductsSearchOptionPriceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductsSearchOptionPrice
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? finalPrice = null, Object? regularPrice = null}) {
    return _then(
      _value.copyWith(
            finalPrice:
                null == finalPrice
                    ? _value.finalPrice
                    : finalPrice // ignore: cast_nullable_to_non_nullable
                        as Money,
            regularPrice:
                null == regularPrice
                    ? _value.regularPrice
                    : regularPrice // ignore: cast_nullable_to_non_nullable
                        as Money,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ProductsSearchOptionPriceImplCopyWith<$Res>
    implements $ProductsSearchOptionPriceCopyWith<$Res> {
  factory _$$ProductsSearchOptionPriceImplCopyWith(
    _$ProductsSearchOptionPriceImpl value,
    $Res Function(_$ProductsSearchOptionPriceImpl) then,
  ) = __$$ProductsSearchOptionPriceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Money finalPrice, Money regularPrice});
}

/// @nodoc
class __$$ProductsSearchOptionPriceImplCopyWithImpl<$Res>
    extends
        _$ProductsSearchOptionPriceCopyWithImpl<
          $Res,
          _$ProductsSearchOptionPriceImpl
        >
    implements _$$ProductsSearchOptionPriceImplCopyWith<$Res> {
  __$$ProductsSearchOptionPriceImplCopyWithImpl(
    _$ProductsSearchOptionPriceImpl _value,
    $Res Function(_$ProductsSearchOptionPriceImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ProductsSearchOptionPrice
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? finalPrice = null, Object? regularPrice = null}) {
    return _then(
      _$ProductsSearchOptionPriceImpl(
        finalPrice:
            null == finalPrice
                ? _value.finalPrice
                : finalPrice // ignore: cast_nullable_to_non_nullable
                    as Money,
        regularPrice:
            null == regularPrice
                ? _value.regularPrice
                : regularPrice // ignore: cast_nullable_to_non_nullable
                    as Money,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductsSearchOptionPriceImpl implements _ProductsSearchOptionPrice {
  const _$ProductsSearchOptionPriceImpl({
    required this.finalPrice,
    required this.regularPrice,
  });

  factory _$ProductsSearchOptionPriceImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductsSearchOptionPriceImplFromJson(json);

  @override
  final Money finalPrice;
  @override
  final Money regularPrice;

  @override
  String toString() {
    return 'ProductsSearchOptionPrice(finalPrice: $finalPrice, regularPrice: $regularPrice)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductsSearchOptionPriceImpl &&
            (identical(other.finalPrice, finalPrice) ||
                other.finalPrice == finalPrice) &&
            (identical(other.regularPrice, regularPrice) ||
                other.regularPrice == regularPrice));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, finalPrice, regularPrice);

  /// Create a copy of ProductsSearchOptionPrice
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductsSearchOptionPriceImplCopyWith<_$ProductsSearchOptionPriceImpl>
  get copyWith => __$$ProductsSearchOptionPriceImplCopyWithImpl<
    _$ProductsSearchOptionPriceImpl
  >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductsSearchOptionPriceImplToJson(this);
  }
}

abstract class _ProductsSearchOptionPrice implements ProductsSearchOptionPrice {
  const factory _ProductsSearchOptionPrice({
    required final Money finalPrice,
    required final Money regularPrice,
  }) = _$ProductsSearchOptionPriceImpl;

  factory _ProductsSearchOptionPrice.fromJson(Map<String, dynamic> json) =
      _$ProductsSearchOptionPriceImpl.fromJson;

  @override
  Money get finalPrice;
  @override
  Money get regularPrice;

  /// Create a copy of ProductsSearchOptionPrice
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductsSearchOptionPriceImplCopyWith<_$ProductsSearchOptionPriceImpl>
  get copyWith => throw _privateConstructorUsedError;
}

ProductsSearchImage _$ProductsSearchImageFromJson(Map<String, dynamic> json) {
  return _ProductsSearchImage.fromJson(json);
}

/// @nodoc
mixin _$ProductsSearchImage {
  String get label => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;

  /// Serializes this ProductsSearchImage to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProductsSearchImage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductsSearchImageCopyWith<ProductsSearchImage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductsSearchImageCopyWith<$Res> {
  factory $ProductsSearchImageCopyWith(
    ProductsSearchImage value,
    $Res Function(ProductsSearchImage) then,
  ) = _$ProductsSearchImageCopyWithImpl<$Res, ProductsSearchImage>;
  @useResult
  $Res call({String label, String? url});
}

/// @nodoc
class _$ProductsSearchImageCopyWithImpl<$Res, $Val extends ProductsSearchImage>
    implements $ProductsSearchImageCopyWith<$Res> {
  _$ProductsSearchImageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductsSearchImage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? label = null, Object? url = freezed}) {
    return _then(
      _value.copyWith(
            label:
                null == label
                    ? _value.label
                    : label // ignore: cast_nullable_to_non_nullable
                        as String,
            url:
                freezed == url
                    ? _value.url
                    : url // ignore: cast_nullable_to_non_nullable
                        as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ProductsSearchImageImplCopyWith<$Res>
    implements $ProductsSearchImageCopyWith<$Res> {
  factory _$$ProductsSearchImageImplCopyWith(
    _$ProductsSearchImageImpl value,
    $Res Function(_$ProductsSearchImageImpl) then,
  ) = __$$ProductsSearchImageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String label, String? url});
}

/// @nodoc
class __$$ProductsSearchImageImplCopyWithImpl<$Res>
    extends _$ProductsSearchImageCopyWithImpl<$Res, _$ProductsSearchImageImpl>
    implements _$$ProductsSearchImageImplCopyWith<$Res> {
  __$$ProductsSearchImageImplCopyWithImpl(
    _$ProductsSearchImageImpl _value,
    $Res Function(_$ProductsSearchImageImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ProductsSearchImage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? label = null, Object? url = freezed}) {
    return _then(
      _$ProductsSearchImageImpl(
        label:
            null == label
                ? _value.label
                : label // ignore: cast_nullable_to_non_nullable
                    as String,
        url:
            freezed == url
                ? _value.url
                : url // ignore: cast_nullable_to_non_nullable
                    as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductsSearchImageImpl implements _ProductsSearchImage {
  const _$ProductsSearchImageImpl({required this.label, this.url});

  factory _$ProductsSearchImageImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductsSearchImageImplFromJson(json);

  @override
  final String label;
  @override
  final String? url;

  @override
  String toString() {
    return 'ProductsSearchImage(label: $label, url: $url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductsSearchImageImpl &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, label, url);

  /// Create a copy of ProductsSearchImage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductsSearchImageImplCopyWith<_$ProductsSearchImageImpl> get copyWith =>
      __$$ProductsSearchImageImplCopyWithImpl<_$ProductsSearchImageImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductsSearchImageImplToJson(this);
  }
}

abstract class _ProductsSearchImage implements ProductsSearchImage {
  const factory _ProductsSearchImage({
    required final String label,
    final String? url,
  }) = _$ProductsSearchImageImpl;

  factory _ProductsSearchImage.fromJson(Map<String, dynamic> json) =
      _$ProductsSearchImageImpl.fromJson;

  @override
  String get label;
  @override
  String? get url;

  /// Create a copy of ProductsSearchImage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductsSearchImageImplCopyWith<_$ProductsSearchImageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
