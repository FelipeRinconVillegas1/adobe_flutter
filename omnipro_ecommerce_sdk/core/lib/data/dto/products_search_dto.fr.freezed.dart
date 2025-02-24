// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'products_search_dto.fr.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ProductsSearchDTO _$ProductsSearchDTOFromJson(Map<String, dynamic> json) {
  return _ProductsSearchDTO.fromJson(json);
}

/// @nodoc
mixin _$ProductsSearchDTO {
  List<ProductsItemsSearchDTO> get items => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_count')
  int get totalCount => throw _privateConstructorUsedError;

  /// Serializes this ProductsSearchDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProductsSearchDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductsSearchDTOCopyWith<ProductsSearchDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductsSearchDTOCopyWith<$Res> {
  factory $ProductsSearchDTOCopyWith(
    ProductsSearchDTO value,
    $Res Function(ProductsSearchDTO) then,
  ) = _$ProductsSearchDTOCopyWithImpl<$Res, ProductsSearchDTO>;
  @useResult
  $Res call({
    List<ProductsItemsSearchDTO> items,
    @JsonKey(name: 'total_count') int totalCount,
  });
}

/// @nodoc
class _$ProductsSearchDTOCopyWithImpl<$Res, $Val extends ProductsSearchDTO>
    implements $ProductsSearchDTOCopyWith<$Res> {
  _$ProductsSearchDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductsSearchDTO
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
                        as List<ProductsItemsSearchDTO>,
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
abstract class _$$ProductsSearchDTOImplCopyWith<$Res>
    implements $ProductsSearchDTOCopyWith<$Res> {
  factory _$$ProductsSearchDTOImplCopyWith(
    _$ProductsSearchDTOImpl value,
    $Res Function(_$ProductsSearchDTOImpl) then,
  ) = __$$ProductsSearchDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    List<ProductsItemsSearchDTO> items,
    @JsonKey(name: 'total_count') int totalCount,
  });
}

/// @nodoc
class __$$ProductsSearchDTOImplCopyWithImpl<$Res>
    extends _$ProductsSearchDTOCopyWithImpl<$Res, _$ProductsSearchDTOImpl>
    implements _$$ProductsSearchDTOImplCopyWith<$Res> {
  __$$ProductsSearchDTOImplCopyWithImpl(
    _$ProductsSearchDTOImpl _value,
    $Res Function(_$ProductsSearchDTOImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ProductsSearchDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? items = null, Object? totalCount = null}) {
    return _then(
      _$ProductsSearchDTOImpl(
        items:
            null == items
                ? _value._items
                : items // ignore: cast_nullable_to_non_nullable
                    as List<ProductsItemsSearchDTO>,
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
class _$ProductsSearchDTOImpl implements _ProductsSearchDTO {
  const _$ProductsSearchDTOImpl({
    required final List<ProductsItemsSearchDTO> items,
    @JsonKey(name: 'total_count') required this.totalCount,
  }) : _items = items;

  factory _$ProductsSearchDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductsSearchDTOImplFromJson(json);

  final List<ProductsItemsSearchDTO> _items;
  @override
  List<ProductsItemsSearchDTO> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  @JsonKey(name: 'total_count')
  final int totalCount;

  @override
  String toString() {
    return 'ProductsSearchDTO(items: $items, totalCount: $totalCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductsSearchDTOImpl &&
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

  /// Create a copy of ProductsSearchDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductsSearchDTOImplCopyWith<_$ProductsSearchDTOImpl> get copyWith =>
      __$$ProductsSearchDTOImplCopyWithImpl<_$ProductsSearchDTOImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductsSearchDTOImplToJson(this);
  }
}

abstract class _ProductsSearchDTO implements ProductsSearchDTO {
  const factory _ProductsSearchDTO({
    required final List<ProductsItemsSearchDTO> items,
    @JsonKey(name: 'total_count') required final int totalCount,
  }) = _$ProductsSearchDTOImpl;

  factory _ProductsSearchDTO.fromJson(Map<String, dynamic> json) =
      _$ProductsSearchDTOImpl.fromJson;

  @override
  List<ProductsItemsSearchDTO> get items;
  @override
  @JsonKey(name: 'total_count')
  int get totalCount;

  /// Create a copy of ProductsSearchDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductsSearchDTOImplCopyWith<_$ProductsSearchDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ProductsItemsSearchDTO _$ProductsItemsSearchDTOFromJson(
  Map<String, dynamic> json,
) {
  return _ProductsItemsSearchDTO.fromJson(json);
}

/// @nodoc
mixin _$ProductsItemsSearchDTO {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get sku => throw _privateConstructorUsedError;
  ProductsDescriptionSearchDTO? get description =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'short_description')
  ProductsDescriptionSearchDTO? get shortDescription =>
      throw _privateConstructorUsedError;
  ProductsImageSearchDTO get image => throw _privateConstructorUsedError;
  @JsonKey(name: 'small_image')
  ProductsImageSearchDTO? get smallImage => throw _privateConstructorUsedError;
  @JsonKey(name: 'thumbnail')
  ProductsImageSearchDTO? get thumbnail => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_salable')
  bool? get isSalable => throw _privateConstructorUsedError;
  @JsonKey(name: 'rating_summary')
  int? get ratingSummary => throw _privateConstructorUsedError;
  @JsonKey(name: 'reviews_count')
  int? get reviewsCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'url_key')
  String? get urlKey => throw _privateConstructorUsedError;
  @JsonKey(name: 'url_suffix')
  String? get urlSuffix => throw _privateConstructorUsedError;
  @JsonKey(name: 'url_path')
  String? get urlPath => throw _privateConstructorUsedError;
  @JsonKey(name: 'special_price')
  double? get specialPrice => throw _privateConstructorUsedError;
  @JsonKey(name: 'special_from_date')
  String? get specialFromDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'special_to_date')
  String? get specialToDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'attribute_set_id')
  int? get attributeSetId => throw _privateConstructorUsedError;
  @JsonKey(name: 'meta_title')
  String? get metaTitle => throw _privateConstructorUsedError;
  @JsonKey(name: 'meta_keyword')
  String? get metaKeyword => throw _privateConstructorUsedError;
  @JsonKey(name: 'meta_description')
  String? get metaDescription => throw _privateConstructorUsedError;
  @JsonKey(name: 'new_from_date')
  String? get newFromDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'new_to_date')
  String? get newToDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'tier_price')
  double? get tierPrice => throw _privateConstructorUsedError;
  @JsonKey(name: 'options_container')
  String? get optionsContainer => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  String? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'type_id')
  String? get typeId => throw _privateConstructorUsedError;
  @JsonKey(name: 'price_range')
  ProductsSearchPriceRangeDTO? get priceRange =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'canonical_url')
  String? get canonicalUrl => throw _privateConstructorUsedError;

  /// Serializes this ProductsItemsSearchDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProductsItemsSearchDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductsItemsSearchDTOCopyWith<ProductsItemsSearchDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductsItemsSearchDTOCopyWith<$Res> {
  factory $ProductsItemsSearchDTOCopyWith(
    ProductsItemsSearchDTO value,
    $Res Function(ProductsItemsSearchDTO) then,
  ) = _$ProductsItemsSearchDTOCopyWithImpl<$Res, ProductsItemsSearchDTO>;
  @useResult
  $Res call({
    int id,
    String name,
    String sku,
    ProductsDescriptionSearchDTO? description,
    @JsonKey(name: 'short_description')
    ProductsDescriptionSearchDTO? shortDescription,
    ProductsImageSearchDTO image,
    @JsonKey(name: 'small_image') ProductsImageSearchDTO? smallImage,
    @JsonKey(name: 'thumbnail') ProductsImageSearchDTO? thumbnail,
    @JsonKey(name: 'is_salable') bool? isSalable,
    @JsonKey(name: 'rating_summary') int? ratingSummary,
    @JsonKey(name: 'reviews_count') int? reviewsCount,
    @JsonKey(name: 'url_key') String? urlKey,
    @JsonKey(name: 'url_suffix') String? urlSuffix,
    @JsonKey(name: 'url_path') String? urlPath,
    @JsonKey(name: 'special_price') double? specialPrice,
    @JsonKey(name: 'special_from_date') String? specialFromDate,
    @JsonKey(name: 'special_to_date') String? specialToDate,
    @JsonKey(name: 'attribute_set_id') int? attributeSetId,
    @JsonKey(name: 'meta_title') String? metaTitle,
    @JsonKey(name: 'meta_keyword') String? metaKeyword,
    @JsonKey(name: 'meta_description') String? metaDescription,
    @JsonKey(name: 'new_from_date') String? newFromDate,
    @JsonKey(name: 'new_to_date') String? newToDate,
    @JsonKey(name: 'tier_price') double? tierPrice,
    @JsonKey(name: 'options_container') String? optionsContainer,
    @JsonKey(name: 'created_at') String? createdAt,
    @JsonKey(name: 'updated_at') String? updatedAt,
    @JsonKey(name: 'type_id') String? typeId,
    @JsonKey(name: 'price_range') ProductsSearchPriceRangeDTO? priceRange,
    @JsonKey(name: 'canonical_url') String? canonicalUrl,
  });

  $ProductsDescriptionSearchDTOCopyWith<$Res>? get description;
  $ProductsDescriptionSearchDTOCopyWith<$Res>? get shortDescription;
  $ProductsImageSearchDTOCopyWith<$Res> get image;
  $ProductsImageSearchDTOCopyWith<$Res>? get smallImage;
  $ProductsImageSearchDTOCopyWith<$Res>? get thumbnail;
  $ProductsSearchPriceRangeDTOCopyWith<$Res>? get priceRange;
}

/// @nodoc
class _$ProductsItemsSearchDTOCopyWithImpl<
  $Res,
  $Val extends ProductsItemsSearchDTO
>
    implements $ProductsItemsSearchDTOCopyWith<$Res> {
  _$ProductsItemsSearchDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductsItemsSearchDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? sku = null,
    Object? description = freezed,
    Object? shortDescription = freezed,
    Object? image = null,
    Object? smallImage = freezed,
    Object? thumbnail = freezed,
    Object? isSalable = freezed,
    Object? ratingSummary = freezed,
    Object? reviewsCount = freezed,
    Object? urlKey = freezed,
    Object? urlSuffix = freezed,
    Object? urlPath = freezed,
    Object? specialPrice = freezed,
    Object? specialFromDate = freezed,
    Object? specialToDate = freezed,
    Object? attributeSetId = freezed,
    Object? metaTitle = freezed,
    Object? metaKeyword = freezed,
    Object? metaDescription = freezed,
    Object? newFromDate = freezed,
    Object? newToDate = freezed,
    Object? tierPrice = freezed,
    Object? optionsContainer = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? typeId = freezed,
    Object? priceRange = freezed,
    Object? canonicalUrl = freezed,
  }) {
    return _then(
      _value.copyWith(
            id:
                null == id
                    ? _value.id
                    : id // ignore: cast_nullable_to_non_nullable
                        as int,
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
            description:
                freezed == description
                    ? _value.description
                    : description // ignore: cast_nullable_to_non_nullable
                        as ProductsDescriptionSearchDTO?,
            shortDescription:
                freezed == shortDescription
                    ? _value.shortDescription
                    : shortDescription // ignore: cast_nullable_to_non_nullable
                        as ProductsDescriptionSearchDTO?,
            image:
                null == image
                    ? _value.image
                    : image // ignore: cast_nullable_to_non_nullable
                        as ProductsImageSearchDTO,
            smallImage:
                freezed == smallImage
                    ? _value.smallImage
                    : smallImage // ignore: cast_nullable_to_non_nullable
                        as ProductsImageSearchDTO?,
            thumbnail:
                freezed == thumbnail
                    ? _value.thumbnail
                    : thumbnail // ignore: cast_nullable_to_non_nullable
                        as ProductsImageSearchDTO?,
            isSalable:
                freezed == isSalable
                    ? _value.isSalable
                    : isSalable // ignore: cast_nullable_to_non_nullable
                        as bool?,
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
            urlKey:
                freezed == urlKey
                    ? _value.urlKey
                    : urlKey // ignore: cast_nullable_to_non_nullable
                        as String?,
            urlSuffix:
                freezed == urlSuffix
                    ? _value.urlSuffix
                    : urlSuffix // ignore: cast_nullable_to_non_nullable
                        as String?,
            urlPath:
                freezed == urlPath
                    ? _value.urlPath
                    : urlPath // ignore: cast_nullable_to_non_nullable
                        as String?,
            specialPrice:
                freezed == specialPrice
                    ? _value.specialPrice
                    : specialPrice // ignore: cast_nullable_to_non_nullable
                        as double?,
            specialFromDate:
                freezed == specialFromDate
                    ? _value.specialFromDate
                    : specialFromDate // ignore: cast_nullable_to_non_nullable
                        as String?,
            specialToDate:
                freezed == specialToDate
                    ? _value.specialToDate
                    : specialToDate // ignore: cast_nullable_to_non_nullable
                        as String?,
            attributeSetId:
                freezed == attributeSetId
                    ? _value.attributeSetId
                    : attributeSetId // ignore: cast_nullable_to_non_nullable
                        as int?,
            metaTitle:
                freezed == metaTitle
                    ? _value.metaTitle
                    : metaTitle // ignore: cast_nullable_to_non_nullable
                        as String?,
            metaKeyword:
                freezed == metaKeyword
                    ? _value.metaKeyword
                    : metaKeyword // ignore: cast_nullable_to_non_nullable
                        as String?,
            metaDescription:
                freezed == metaDescription
                    ? _value.metaDescription
                    : metaDescription // ignore: cast_nullable_to_non_nullable
                        as String?,
            newFromDate:
                freezed == newFromDate
                    ? _value.newFromDate
                    : newFromDate // ignore: cast_nullable_to_non_nullable
                        as String?,
            newToDate:
                freezed == newToDate
                    ? _value.newToDate
                    : newToDate // ignore: cast_nullable_to_non_nullable
                        as String?,
            tierPrice:
                freezed == tierPrice
                    ? _value.tierPrice
                    : tierPrice // ignore: cast_nullable_to_non_nullable
                        as double?,
            optionsContainer:
                freezed == optionsContainer
                    ? _value.optionsContainer
                    : optionsContainer // ignore: cast_nullable_to_non_nullable
                        as String?,
            createdAt:
                freezed == createdAt
                    ? _value.createdAt
                    : createdAt // ignore: cast_nullable_to_non_nullable
                        as String?,
            updatedAt:
                freezed == updatedAt
                    ? _value.updatedAt
                    : updatedAt // ignore: cast_nullable_to_non_nullable
                        as String?,
            typeId:
                freezed == typeId
                    ? _value.typeId
                    : typeId // ignore: cast_nullable_to_non_nullable
                        as String?,
            priceRange:
                freezed == priceRange
                    ? _value.priceRange
                    : priceRange // ignore: cast_nullable_to_non_nullable
                        as ProductsSearchPriceRangeDTO?,
            canonicalUrl:
                freezed == canonicalUrl
                    ? _value.canonicalUrl
                    : canonicalUrl // ignore: cast_nullable_to_non_nullable
                        as String?,
          )
          as $Val,
    );
  }

  /// Create a copy of ProductsItemsSearchDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProductsDescriptionSearchDTOCopyWith<$Res>? get description {
    if (_value.description == null) {
      return null;
    }

    return $ProductsDescriptionSearchDTOCopyWith<$Res>(_value.description!, (
      value,
    ) {
      return _then(_value.copyWith(description: value) as $Val);
    });
  }

  /// Create a copy of ProductsItemsSearchDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProductsDescriptionSearchDTOCopyWith<$Res>? get shortDescription {
    if (_value.shortDescription == null) {
      return null;
    }

    return $ProductsDescriptionSearchDTOCopyWith<$Res>(
      _value.shortDescription!,
      (value) {
        return _then(_value.copyWith(shortDescription: value) as $Val);
      },
    );
  }

  /// Create a copy of ProductsItemsSearchDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProductsImageSearchDTOCopyWith<$Res> get image {
    return $ProductsImageSearchDTOCopyWith<$Res>(_value.image, (value) {
      return _then(_value.copyWith(image: value) as $Val);
    });
  }

  /// Create a copy of ProductsItemsSearchDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProductsImageSearchDTOCopyWith<$Res>? get smallImage {
    if (_value.smallImage == null) {
      return null;
    }

    return $ProductsImageSearchDTOCopyWith<$Res>(_value.smallImage!, (value) {
      return _then(_value.copyWith(smallImage: value) as $Val);
    });
  }

  /// Create a copy of ProductsItemsSearchDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProductsImageSearchDTOCopyWith<$Res>? get thumbnail {
    if (_value.thumbnail == null) {
      return null;
    }

    return $ProductsImageSearchDTOCopyWith<$Res>(_value.thumbnail!, (value) {
      return _then(_value.copyWith(thumbnail: value) as $Val);
    });
  }

  /// Create a copy of ProductsItemsSearchDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProductsSearchPriceRangeDTOCopyWith<$Res>? get priceRange {
    if (_value.priceRange == null) {
      return null;
    }

    return $ProductsSearchPriceRangeDTOCopyWith<$Res>(_value.priceRange!, (
      value,
    ) {
      return _then(_value.copyWith(priceRange: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProductsItemsSearchDTOImplCopyWith<$Res>
    implements $ProductsItemsSearchDTOCopyWith<$Res> {
  factory _$$ProductsItemsSearchDTOImplCopyWith(
    _$ProductsItemsSearchDTOImpl value,
    $Res Function(_$ProductsItemsSearchDTOImpl) then,
  ) = __$$ProductsItemsSearchDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int id,
    String name,
    String sku,
    ProductsDescriptionSearchDTO? description,
    @JsonKey(name: 'short_description')
    ProductsDescriptionSearchDTO? shortDescription,
    ProductsImageSearchDTO image,
    @JsonKey(name: 'small_image') ProductsImageSearchDTO? smallImage,
    @JsonKey(name: 'thumbnail') ProductsImageSearchDTO? thumbnail,
    @JsonKey(name: 'is_salable') bool? isSalable,
    @JsonKey(name: 'rating_summary') int? ratingSummary,
    @JsonKey(name: 'reviews_count') int? reviewsCount,
    @JsonKey(name: 'url_key') String? urlKey,
    @JsonKey(name: 'url_suffix') String? urlSuffix,
    @JsonKey(name: 'url_path') String? urlPath,
    @JsonKey(name: 'special_price') double? specialPrice,
    @JsonKey(name: 'special_from_date') String? specialFromDate,
    @JsonKey(name: 'special_to_date') String? specialToDate,
    @JsonKey(name: 'attribute_set_id') int? attributeSetId,
    @JsonKey(name: 'meta_title') String? metaTitle,
    @JsonKey(name: 'meta_keyword') String? metaKeyword,
    @JsonKey(name: 'meta_description') String? metaDescription,
    @JsonKey(name: 'new_from_date') String? newFromDate,
    @JsonKey(name: 'new_to_date') String? newToDate,
    @JsonKey(name: 'tier_price') double? tierPrice,
    @JsonKey(name: 'options_container') String? optionsContainer,
    @JsonKey(name: 'created_at') String? createdAt,
    @JsonKey(name: 'updated_at') String? updatedAt,
    @JsonKey(name: 'type_id') String? typeId,
    @JsonKey(name: 'price_range') ProductsSearchPriceRangeDTO? priceRange,
    @JsonKey(name: 'canonical_url') String? canonicalUrl,
  });

  @override
  $ProductsDescriptionSearchDTOCopyWith<$Res>? get description;
  @override
  $ProductsDescriptionSearchDTOCopyWith<$Res>? get shortDescription;
  @override
  $ProductsImageSearchDTOCopyWith<$Res> get image;
  @override
  $ProductsImageSearchDTOCopyWith<$Res>? get smallImage;
  @override
  $ProductsImageSearchDTOCopyWith<$Res>? get thumbnail;
  @override
  $ProductsSearchPriceRangeDTOCopyWith<$Res>? get priceRange;
}

/// @nodoc
class __$$ProductsItemsSearchDTOImplCopyWithImpl<$Res>
    extends
        _$ProductsItemsSearchDTOCopyWithImpl<$Res, _$ProductsItemsSearchDTOImpl>
    implements _$$ProductsItemsSearchDTOImplCopyWith<$Res> {
  __$$ProductsItemsSearchDTOImplCopyWithImpl(
    _$ProductsItemsSearchDTOImpl _value,
    $Res Function(_$ProductsItemsSearchDTOImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ProductsItemsSearchDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? sku = null,
    Object? description = freezed,
    Object? shortDescription = freezed,
    Object? image = null,
    Object? smallImage = freezed,
    Object? thumbnail = freezed,
    Object? isSalable = freezed,
    Object? ratingSummary = freezed,
    Object? reviewsCount = freezed,
    Object? urlKey = freezed,
    Object? urlSuffix = freezed,
    Object? urlPath = freezed,
    Object? specialPrice = freezed,
    Object? specialFromDate = freezed,
    Object? specialToDate = freezed,
    Object? attributeSetId = freezed,
    Object? metaTitle = freezed,
    Object? metaKeyword = freezed,
    Object? metaDescription = freezed,
    Object? newFromDate = freezed,
    Object? newToDate = freezed,
    Object? tierPrice = freezed,
    Object? optionsContainer = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? typeId = freezed,
    Object? priceRange = freezed,
    Object? canonicalUrl = freezed,
  }) {
    return _then(
      _$ProductsItemsSearchDTOImpl(
        id:
            null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                    as int,
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
        description:
            freezed == description
                ? _value.description
                : description // ignore: cast_nullable_to_non_nullable
                    as ProductsDescriptionSearchDTO?,
        shortDescription:
            freezed == shortDescription
                ? _value.shortDescription
                : shortDescription // ignore: cast_nullable_to_non_nullable
                    as ProductsDescriptionSearchDTO?,
        image:
            null == image
                ? _value.image
                : image // ignore: cast_nullable_to_non_nullable
                    as ProductsImageSearchDTO,
        smallImage:
            freezed == smallImage
                ? _value.smallImage
                : smallImage // ignore: cast_nullable_to_non_nullable
                    as ProductsImageSearchDTO?,
        thumbnail:
            freezed == thumbnail
                ? _value.thumbnail
                : thumbnail // ignore: cast_nullable_to_non_nullable
                    as ProductsImageSearchDTO?,
        isSalable:
            freezed == isSalable
                ? _value.isSalable
                : isSalable // ignore: cast_nullable_to_non_nullable
                    as bool?,
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
        urlKey:
            freezed == urlKey
                ? _value.urlKey
                : urlKey // ignore: cast_nullable_to_non_nullable
                    as String?,
        urlSuffix:
            freezed == urlSuffix
                ? _value.urlSuffix
                : urlSuffix // ignore: cast_nullable_to_non_nullable
                    as String?,
        urlPath:
            freezed == urlPath
                ? _value.urlPath
                : urlPath // ignore: cast_nullable_to_non_nullable
                    as String?,
        specialPrice:
            freezed == specialPrice
                ? _value.specialPrice
                : specialPrice // ignore: cast_nullable_to_non_nullable
                    as double?,
        specialFromDate:
            freezed == specialFromDate
                ? _value.specialFromDate
                : specialFromDate // ignore: cast_nullable_to_non_nullable
                    as String?,
        specialToDate:
            freezed == specialToDate
                ? _value.specialToDate
                : specialToDate // ignore: cast_nullable_to_non_nullable
                    as String?,
        attributeSetId:
            freezed == attributeSetId
                ? _value.attributeSetId
                : attributeSetId // ignore: cast_nullable_to_non_nullable
                    as int?,
        metaTitle:
            freezed == metaTitle
                ? _value.metaTitle
                : metaTitle // ignore: cast_nullable_to_non_nullable
                    as String?,
        metaKeyword:
            freezed == metaKeyword
                ? _value.metaKeyword
                : metaKeyword // ignore: cast_nullable_to_non_nullable
                    as String?,
        metaDescription:
            freezed == metaDescription
                ? _value.metaDescription
                : metaDescription // ignore: cast_nullable_to_non_nullable
                    as String?,
        newFromDate:
            freezed == newFromDate
                ? _value.newFromDate
                : newFromDate // ignore: cast_nullable_to_non_nullable
                    as String?,
        newToDate:
            freezed == newToDate
                ? _value.newToDate
                : newToDate // ignore: cast_nullable_to_non_nullable
                    as String?,
        tierPrice:
            freezed == tierPrice
                ? _value.tierPrice
                : tierPrice // ignore: cast_nullable_to_non_nullable
                    as double?,
        optionsContainer:
            freezed == optionsContainer
                ? _value.optionsContainer
                : optionsContainer // ignore: cast_nullable_to_non_nullable
                    as String?,
        createdAt:
            freezed == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                    as String?,
        updatedAt:
            freezed == updatedAt
                ? _value.updatedAt
                : updatedAt // ignore: cast_nullable_to_non_nullable
                    as String?,
        typeId:
            freezed == typeId
                ? _value.typeId
                : typeId // ignore: cast_nullable_to_non_nullable
                    as String?,
        priceRange:
            freezed == priceRange
                ? _value.priceRange
                : priceRange // ignore: cast_nullable_to_non_nullable
                    as ProductsSearchPriceRangeDTO?,
        canonicalUrl:
            freezed == canonicalUrl
                ? _value.canonicalUrl
                : canonicalUrl // ignore: cast_nullable_to_non_nullable
                    as String?,
      ),
    );
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$ProductsItemsSearchDTOImpl implements _ProductsItemsSearchDTO {
  const _$ProductsItemsSearchDTOImpl({
    required this.id,
    required this.name,
    required this.sku,
    this.description,
    @JsonKey(name: 'short_description') this.shortDescription,
    required this.image,
    @JsonKey(name: 'small_image') this.smallImage,
    @JsonKey(name: 'thumbnail') this.thumbnail,
    @JsonKey(name: 'is_salable') this.isSalable,
    @JsonKey(name: 'rating_summary') this.ratingSummary,
    @JsonKey(name: 'reviews_count') this.reviewsCount,
    @JsonKey(name: 'url_key') this.urlKey,
    @JsonKey(name: 'url_suffix') this.urlSuffix,
    @JsonKey(name: 'url_path') this.urlPath,
    @JsonKey(name: 'special_price') this.specialPrice,
    @JsonKey(name: 'special_from_date') this.specialFromDate,
    @JsonKey(name: 'special_to_date') this.specialToDate,
    @JsonKey(name: 'attribute_set_id') this.attributeSetId,
    @JsonKey(name: 'meta_title') this.metaTitle,
    @JsonKey(name: 'meta_keyword') this.metaKeyword,
    @JsonKey(name: 'meta_description') this.metaDescription,
    @JsonKey(name: 'new_from_date') this.newFromDate,
    @JsonKey(name: 'new_to_date') this.newToDate,
    @JsonKey(name: 'tier_price') this.tierPrice,
    @JsonKey(name: 'options_container') this.optionsContainer,
    @JsonKey(name: 'created_at') this.createdAt,
    @JsonKey(name: 'updated_at') this.updatedAt,
    @JsonKey(name: 'type_id') this.typeId,
    @JsonKey(name: 'price_range') this.priceRange,
    @JsonKey(name: 'canonical_url') this.canonicalUrl,
  });

  factory _$ProductsItemsSearchDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductsItemsSearchDTOImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String sku;
  @override
  final ProductsDescriptionSearchDTO? description;
  @override
  @JsonKey(name: 'short_description')
  final ProductsDescriptionSearchDTO? shortDescription;
  @override
  final ProductsImageSearchDTO image;
  @override
  @JsonKey(name: 'small_image')
  final ProductsImageSearchDTO? smallImage;
  @override
  @JsonKey(name: 'thumbnail')
  final ProductsImageSearchDTO? thumbnail;
  @override
  @JsonKey(name: 'is_salable')
  final bool? isSalable;
  @override
  @JsonKey(name: 'rating_summary')
  final int? ratingSummary;
  @override
  @JsonKey(name: 'reviews_count')
  final int? reviewsCount;
  @override
  @JsonKey(name: 'url_key')
  final String? urlKey;
  @override
  @JsonKey(name: 'url_suffix')
  final String? urlSuffix;
  @override
  @JsonKey(name: 'url_path')
  final String? urlPath;
  @override
  @JsonKey(name: 'special_price')
  final double? specialPrice;
  @override
  @JsonKey(name: 'special_from_date')
  final String? specialFromDate;
  @override
  @JsonKey(name: 'special_to_date')
  final String? specialToDate;
  @override
  @JsonKey(name: 'attribute_set_id')
  final int? attributeSetId;
  @override
  @JsonKey(name: 'meta_title')
  final String? metaTitle;
  @override
  @JsonKey(name: 'meta_keyword')
  final String? metaKeyword;
  @override
  @JsonKey(name: 'meta_description')
  final String? metaDescription;
  @override
  @JsonKey(name: 'new_from_date')
  final String? newFromDate;
  @override
  @JsonKey(name: 'new_to_date')
  final String? newToDate;
  @override
  @JsonKey(name: 'tier_price')
  final double? tierPrice;
  @override
  @JsonKey(name: 'options_container')
  final String? optionsContainer;
  @override
  @JsonKey(name: 'created_at')
  final String? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final String? updatedAt;
  @override
  @JsonKey(name: 'type_id')
  final String? typeId;
  @override
  @JsonKey(name: 'price_range')
  final ProductsSearchPriceRangeDTO? priceRange;
  @override
  @JsonKey(name: 'canonical_url')
  final String? canonicalUrl;

  @override
  String toString() {
    return 'ProductsItemsSearchDTO(id: $id, name: $name, sku: $sku, description: $description, shortDescription: $shortDescription, image: $image, smallImage: $smallImage, thumbnail: $thumbnail, isSalable: $isSalable, ratingSummary: $ratingSummary, reviewsCount: $reviewsCount, urlKey: $urlKey, urlSuffix: $urlSuffix, urlPath: $urlPath, specialPrice: $specialPrice, specialFromDate: $specialFromDate, specialToDate: $specialToDate, attributeSetId: $attributeSetId, metaTitle: $metaTitle, metaKeyword: $metaKeyword, metaDescription: $metaDescription, newFromDate: $newFromDate, newToDate: $newToDate, tierPrice: $tierPrice, optionsContainer: $optionsContainer, createdAt: $createdAt, updatedAt: $updatedAt, typeId: $typeId, priceRange: $priceRange, canonicalUrl: $canonicalUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductsItemsSearchDTOImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.sku, sku) || other.sku == sku) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.shortDescription, shortDescription) ||
                other.shortDescription == shortDescription) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.smallImage, smallImage) ||
                other.smallImage == smallImage) &&
            (identical(other.thumbnail, thumbnail) ||
                other.thumbnail == thumbnail) &&
            (identical(other.isSalable, isSalable) ||
                other.isSalable == isSalable) &&
            (identical(other.ratingSummary, ratingSummary) ||
                other.ratingSummary == ratingSummary) &&
            (identical(other.reviewsCount, reviewsCount) ||
                other.reviewsCount == reviewsCount) &&
            (identical(other.urlKey, urlKey) || other.urlKey == urlKey) &&
            (identical(other.urlSuffix, urlSuffix) ||
                other.urlSuffix == urlSuffix) &&
            (identical(other.urlPath, urlPath) || other.urlPath == urlPath) &&
            (identical(other.specialPrice, specialPrice) ||
                other.specialPrice == specialPrice) &&
            (identical(other.specialFromDate, specialFromDate) ||
                other.specialFromDate == specialFromDate) &&
            (identical(other.specialToDate, specialToDate) ||
                other.specialToDate == specialToDate) &&
            (identical(other.attributeSetId, attributeSetId) ||
                other.attributeSetId == attributeSetId) &&
            (identical(other.metaTitle, metaTitle) ||
                other.metaTitle == metaTitle) &&
            (identical(other.metaKeyword, metaKeyword) ||
                other.metaKeyword == metaKeyword) &&
            (identical(other.metaDescription, metaDescription) ||
                other.metaDescription == metaDescription) &&
            (identical(other.newFromDate, newFromDate) ||
                other.newFromDate == newFromDate) &&
            (identical(other.newToDate, newToDate) ||
                other.newToDate == newToDate) &&
            (identical(other.tierPrice, tierPrice) ||
                other.tierPrice == tierPrice) &&
            (identical(other.optionsContainer, optionsContainer) ||
                other.optionsContainer == optionsContainer) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.typeId, typeId) || other.typeId == typeId) &&
            (identical(other.priceRange, priceRange) ||
                other.priceRange == priceRange) &&
            (identical(other.canonicalUrl, canonicalUrl) ||
                other.canonicalUrl == canonicalUrl));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
    runtimeType,
    id,
    name,
    sku,
    description,
    shortDescription,
    image,
    smallImage,
    thumbnail,
    isSalable,
    ratingSummary,
    reviewsCount,
    urlKey,
    urlSuffix,
    urlPath,
    specialPrice,
    specialFromDate,
    specialToDate,
    attributeSetId,
    metaTitle,
    metaKeyword,
    metaDescription,
    newFromDate,
    newToDate,
    tierPrice,
    optionsContainer,
    createdAt,
    updatedAt,
    typeId,
    priceRange,
    canonicalUrl,
  ]);

  /// Create a copy of ProductsItemsSearchDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductsItemsSearchDTOImplCopyWith<_$ProductsItemsSearchDTOImpl>
  get copyWith =>
      __$$ProductsItemsSearchDTOImplCopyWithImpl<_$ProductsItemsSearchDTOImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductsItemsSearchDTOImplToJson(this);
  }
}

abstract class _ProductsItemsSearchDTO implements ProductsItemsSearchDTO {
  const factory _ProductsItemsSearchDTO({
    required final int id,
    required final String name,
    required final String sku,
    final ProductsDescriptionSearchDTO? description,
    @JsonKey(name: 'short_description')
    final ProductsDescriptionSearchDTO? shortDescription,
    required final ProductsImageSearchDTO image,
    @JsonKey(name: 'small_image') final ProductsImageSearchDTO? smallImage,
    @JsonKey(name: 'thumbnail') final ProductsImageSearchDTO? thumbnail,
    @JsonKey(name: 'is_salable') final bool? isSalable,
    @JsonKey(name: 'rating_summary') final int? ratingSummary,
    @JsonKey(name: 'reviews_count') final int? reviewsCount,
    @JsonKey(name: 'url_key') final String? urlKey,
    @JsonKey(name: 'url_suffix') final String? urlSuffix,
    @JsonKey(name: 'url_path') final String? urlPath,
    @JsonKey(name: 'special_price') final double? specialPrice,
    @JsonKey(name: 'special_from_date') final String? specialFromDate,
    @JsonKey(name: 'special_to_date') final String? specialToDate,
    @JsonKey(name: 'attribute_set_id') final int? attributeSetId,
    @JsonKey(name: 'meta_title') final String? metaTitle,
    @JsonKey(name: 'meta_keyword') final String? metaKeyword,
    @JsonKey(name: 'meta_description') final String? metaDescription,
    @JsonKey(name: 'new_from_date') final String? newFromDate,
    @JsonKey(name: 'new_to_date') final String? newToDate,
    @JsonKey(name: 'tier_price') final double? tierPrice,
    @JsonKey(name: 'options_container') final String? optionsContainer,
    @JsonKey(name: 'created_at') final String? createdAt,
    @JsonKey(name: 'updated_at') final String? updatedAt,
    @JsonKey(name: 'type_id') final String? typeId,
    @JsonKey(name: 'price_range') final ProductsSearchPriceRangeDTO? priceRange,
    @JsonKey(name: 'canonical_url') final String? canonicalUrl,
  }) = _$ProductsItemsSearchDTOImpl;

  factory _ProductsItemsSearchDTO.fromJson(Map<String, dynamic> json) =
      _$ProductsItemsSearchDTOImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get sku;
  @override
  ProductsDescriptionSearchDTO? get description;
  @override
  @JsonKey(name: 'short_description')
  ProductsDescriptionSearchDTO? get shortDescription;
  @override
  ProductsImageSearchDTO get image;
  @override
  @JsonKey(name: 'small_image')
  ProductsImageSearchDTO? get smallImage;
  @override
  @JsonKey(name: 'thumbnail')
  ProductsImageSearchDTO? get thumbnail;
  @override
  @JsonKey(name: 'is_salable')
  bool? get isSalable;
  @override
  @JsonKey(name: 'rating_summary')
  int? get ratingSummary;
  @override
  @JsonKey(name: 'reviews_count')
  int? get reviewsCount;
  @override
  @JsonKey(name: 'url_key')
  String? get urlKey;
  @override
  @JsonKey(name: 'url_suffix')
  String? get urlSuffix;
  @override
  @JsonKey(name: 'url_path')
  String? get urlPath;
  @override
  @JsonKey(name: 'special_price')
  double? get specialPrice;
  @override
  @JsonKey(name: 'special_from_date')
  String? get specialFromDate;
  @override
  @JsonKey(name: 'special_to_date')
  String? get specialToDate;
  @override
  @JsonKey(name: 'attribute_set_id')
  int? get attributeSetId;
  @override
  @JsonKey(name: 'meta_title')
  String? get metaTitle;
  @override
  @JsonKey(name: 'meta_keyword')
  String? get metaKeyword;
  @override
  @JsonKey(name: 'meta_description')
  String? get metaDescription;
  @override
  @JsonKey(name: 'new_from_date')
  String? get newFromDate;
  @override
  @JsonKey(name: 'new_to_date')
  String? get newToDate;
  @override
  @JsonKey(name: 'tier_price')
  double? get tierPrice;
  @override
  @JsonKey(name: 'options_container')
  String? get optionsContainer;
  @override
  @JsonKey(name: 'created_at')
  String? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  String? get updatedAt;
  @override
  @JsonKey(name: 'type_id')
  String? get typeId;
  @override
  @JsonKey(name: 'price_range')
  ProductsSearchPriceRangeDTO? get priceRange;
  @override
  @JsonKey(name: 'canonical_url')
  String? get canonicalUrl;

  /// Create a copy of ProductsItemsSearchDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductsItemsSearchDTOImplCopyWith<_$ProductsItemsSearchDTOImpl>
  get copyWith => throw _privateConstructorUsedError;
}

ProductsSearchPriceRangeDTO _$ProductsSearchPriceRangeDTOFromJson(
  Map<String, dynamic> json,
) {
  return _ProductsSearchPriceRangeDTO.fromJson(json);
}

/// @nodoc
mixin _$ProductsSearchPriceRangeDTO {
  @JsonKey(name: 'minimum_price')
  ProductsSearchOptionPriceDTO? get minimumPrice =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'maximum_price')
  ProductsSearchOptionPriceDTO? get maximumPrice =>
      throw _privateConstructorUsedError;

  /// Serializes this ProductsSearchPriceRangeDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProductsSearchPriceRangeDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductsSearchPriceRangeDTOCopyWith<ProductsSearchPriceRangeDTO>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductsSearchPriceRangeDTOCopyWith<$Res> {
  factory $ProductsSearchPriceRangeDTOCopyWith(
    ProductsSearchPriceRangeDTO value,
    $Res Function(ProductsSearchPriceRangeDTO) then,
  ) =
      _$ProductsSearchPriceRangeDTOCopyWithImpl<
        $Res,
        ProductsSearchPriceRangeDTO
      >;
  @useResult
  $Res call({
    @JsonKey(name: 'minimum_price') ProductsSearchOptionPriceDTO? minimumPrice,
    @JsonKey(name: 'maximum_price') ProductsSearchOptionPriceDTO? maximumPrice,
  });

  $ProductsSearchOptionPriceDTOCopyWith<$Res>? get minimumPrice;
  $ProductsSearchOptionPriceDTOCopyWith<$Res>? get maximumPrice;
}

/// @nodoc
class _$ProductsSearchPriceRangeDTOCopyWithImpl<
  $Res,
  $Val extends ProductsSearchPriceRangeDTO
>
    implements $ProductsSearchPriceRangeDTOCopyWith<$Res> {
  _$ProductsSearchPriceRangeDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductsSearchPriceRangeDTO
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
                        as ProductsSearchOptionPriceDTO?,
            maximumPrice:
                freezed == maximumPrice
                    ? _value.maximumPrice
                    : maximumPrice // ignore: cast_nullable_to_non_nullable
                        as ProductsSearchOptionPriceDTO?,
          )
          as $Val,
    );
  }

  /// Create a copy of ProductsSearchPriceRangeDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProductsSearchOptionPriceDTOCopyWith<$Res>? get minimumPrice {
    if (_value.minimumPrice == null) {
      return null;
    }

    return $ProductsSearchOptionPriceDTOCopyWith<$Res>(_value.minimumPrice!, (
      value,
    ) {
      return _then(_value.copyWith(minimumPrice: value) as $Val);
    });
  }

  /// Create a copy of ProductsSearchPriceRangeDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProductsSearchOptionPriceDTOCopyWith<$Res>? get maximumPrice {
    if (_value.maximumPrice == null) {
      return null;
    }

    return $ProductsSearchOptionPriceDTOCopyWith<$Res>(_value.maximumPrice!, (
      value,
    ) {
      return _then(_value.copyWith(maximumPrice: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProductsSearchPriceRangeDTOImplCopyWith<$Res>
    implements $ProductsSearchPriceRangeDTOCopyWith<$Res> {
  factory _$$ProductsSearchPriceRangeDTOImplCopyWith(
    _$ProductsSearchPriceRangeDTOImpl value,
    $Res Function(_$ProductsSearchPriceRangeDTOImpl) then,
  ) = __$$ProductsSearchPriceRangeDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'minimum_price') ProductsSearchOptionPriceDTO? minimumPrice,
    @JsonKey(name: 'maximum_price') ProductsSearchOptionPriceDTO? maximumPrice,
  });

  @override
  $ProductsSearchOptionPriceDTOCopyWith<$Res>? get minimumPrice;
  @override
  $ProductsSearchOptionPriceDTOCopyWith<$Res>? get maximumPrice;
}

/// @nodoc
class __$$ProductsSearchPriceRangeDTOImplCopyWithImpl<$Res>
    extends
        _$ProductsSearchPriceRangeDTOCopyWithImpl<
          $Res,
          _$ProductsSearchPriceRangeDTOImpl
        >
    implements _$$ProductsSearchPriceRangeDTOImplCopyWith<$Res> {
  __$$ProductsSearchPriceRangeDTOImplCopyWithImpl(
    _$ProductsSearchPriceRangeDTOImpl _value,
    $Res Function(_$ProductsSearchPriceRangeDTOImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ProductsSearchPriceRangeDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? minimumPrice = freezed, Object? maximumPrice = freezed}) {
    return _then(
      _$ProductsSearchPriceRangeDTOImpl(
        minimumPrice:
            freezed == minimumPrice
                ? _value.minimumPrice
                : minimumPrice // ignore: cast_nullable_to_non_nullable
                    as ProductsSearchOptionPriceDTO?,
        maximumPrice:
            freezed == maximumPrice
                ? _value.maximumPrice
                : maximumPrice // ignore: cast_nullable_to_non_nullable
                    as ProductsSearchOptionPriceDTO?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductsSearchPriceRangeDTOImpl
    implements _ProductsSearchPriceRangeDTO {
  const _$ProductsSearchPriceRangeDTOImpl({
    @JsonKey(name: 'minimum_price') this.minimumPrice,
    @JsonKey(name: 'maximum_price') this.maximumPrice,
  });

  factory _$ProductsSearchPriceRangeDTOImpl.fromJson(
    Map<String, dynamic> json,
  ) => _$$ProductsSearchPriceRangeDTOImplFromJson(json);

  @override
  @JsonKey(name: 'minimum_price')
  final ProductsSearchOptionPriceDTO? minimumPrice;
  @override
  @JsonKey(name: 'maximum_price')
  final ProductsSearchOptionPriceDTO? maximumPrice;

  @override
  String toString() {
    return 'ProductsSearchPriceRangeDTO(minimumPrice: $minimumPrice, maximumPrice: $maximumPrice)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductsSearchPriceRangeDTOImpl &&
            (identical(other.minimumPrice, minimumPrice) ||
                other.minimumPrice == minimumPrice) &&
            (identical(other.maximumPrice, maximumPrice) ||
                other.maximumPrice == maximumPrice));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, minimumPrice, maximumPrice);

  /// Create a copy of ProductsSearchPriceRangeDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductsSearchPriceRangeDTOImplCopyWith<_$ProductsSearchPriceRangeDTOImpl>
  get copyWith => __$$ProductsSearchPriceRangeDTOImplCopyWithImpl<
    _$ProductsSearchPriceRangeDTOImpl
  >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductsSearchPriceRangeDTOImplToJson(this);
  }
}

abstract class _ProductsSearchPriceRangeDTO
    implements ProductsSearchPriceRangeDTO {
  const factory _ProductsSearchPriceRangeDTO({
    @JsonKey(name: 'minimum_price')
    final ProductsSearchOptionPriceDTO? minimumPrice,
    @JsonKey(name: 'maximum_price')
    final ProductsSearchOptionPriceDTO? maximumPrice,
  }) = _$ProductsSearchPriceRangeDTOImpl;

  factory _ProductsSearchPriceRangeDTO.fromJson(Map<String, dynamic> json) =
      _$ProductsSearchPriceRangeDTOImpl.fromJson;

  @override
  @JsonKey(name: 'minimum_price')
  ProductsSearchOptionPriceDTO? get minimumPrice;
  @override
  @JsonKey(name: 'maximum_price')
  ProductsSearchOptionPriceDTO? get maximumPrice;

  /// Create a copy of ProductsSearchPriceRangeDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductsSearchPriceRangeDTOImplCopyWith<_$ProductsSearchPriceRangeDTOImpl>
  get copyWith => throw _privateConstructorUsedError;
}

ProductsSearchOptionPriceDTO _$ProductsSearchOptionPriceDTOFromJson(
  Map<String, dynamic> json,
) {
  return _ProductsSearchOptionPriceDTO.fromJson(json);
}

/// @nodoc
mixin _$ProductsSearchOptionPriceDTO {
  @JsonKey(name: 'final_price')
  ProductsSearchDetailPriceDTO get finalPrice =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'regular_price')
  ProductsSearchDetailPriceDTO get regularPrice =>
      throw _privateConstructorUsedError;

  /// Serializes this ProductsSearchOptionPriceDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProductsSearchOptionPriceDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductsSearchOptionPriceDTOCopyWith<ProductsSearchOptionPriceDTO>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductsSearchOptionPriceDTOCopyWith<$Res> {
  factory $ProductsSearchOptionPriceDTOCopyWith(
    ProductsSearchOptionPriceDTO value,
    $Res Function(ProductsSearchOptionPriceDTO) then,
  ) =
      _$ProductsSearchOptionPriceDTOCopyWithImpl<
        $Res,
        ProductsSearchOptionPriceDTO
      >;
  @useResult
  $Res call({
    @JsonKey(name: 'final_price') ProductsSearchDetailPriceDTO finalPrice,
    @JsonKey(name: 'regular_price') ProductsSearchDetailPriceDTO regularPrice,
  });

  $ProductsSearchDetailPriceDTOCopyWith<$Res> get finalPrice;
  $ProductsSearchDetailPriceDTOCopyWith<$Res> get regularPrice;
}

/// @nodoc
class _$ProductsSearchOptionPriceDTOCopyWithImpl<
  $Res,
  $Val extends ProductsSearchOptionPriceDTO
>
    implements $ProductsSearchOptionPriceDTOCopyWith<$Res> {
  _$ProductsSearchOptionPriceDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductsSearchOptionPriceDTO
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
                        as ProductsSearchDetailPriceDTO,
            regularPrice:
                null == regularPrice
                    ? _value.regularPrice
                    : regularPrice // ignore: cast_nullable_to_non_nullable
                        as ProductsSearchDetailPriceDTO,
          )
          as $Val,
    );
  }

  /// Create a copy of ProductsSearchOptionPriceDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProductsSearchDetailPriceDTOCopyWith<$Res> get finalPrice {
    return $ProductsSearchDetailPriceDTOCopyWith<$Res>(_value.finalPrice, (
      value,
    ) {
      return _then(_value.copyWith(finalPrice: value) as $Val);
    });
  }

  /// Create a copy of ProductsSearchOptionPriceDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProductsSearchDetailPriceDTOCopyWith<$Res> get regularPrice {
    return $ProductsSearchDetailPriceDTOCopyWith<$Res>(_value.regularPrice, (
      value,
    ) {
      return _then(_value.copyWith(regularPrice: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProductsSearchOptionPriceDTOImplCopyWith<$Res>
    implements $ProductsSearchOptionPriceDTOCopyWith<$Res> {
  factory _$$ProductsSearchOptionPriceDTOImplCopyWith(
    _$ProductsSearchOptionPriceDTOImpl value,
    $Res Function(_$ProductsSearchOptionPriceDTOImpl) then,
  ) = __$$ProductsSearchOptionPriceDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'final_price') ProductsSearchDetailPriceDTO finalPrice,
    @JsonKey(name: 'regular_price') ProductsSearchDetailPriceDTO regularPrice,
  });

  @override
  $ProductsSearchDetailPriceDTOCopyWith<$Res> get finalPrice;
  @override
  $ProductsSearchDetailPriceDTOCopyWith<$Res> get regularPrice;
}

/// @nodoc
class __$$ProductsSearchOptionPriceDTOImplCopyWithImpl<$Res>
    extends
        _$ProductsSearchOptionPriceDTOCopyWithImpl<
          $Res,
          _$ProductsSearchOptionPriceDTOImpl
        >
    implements _$$ProductsSearchOptionPriceDTOImplCopyWith<$Res> {
  __$$ProductsSearchOptionPriceDTOImplCopyWithImpl(
    _$ProductsSearchOptionPriceDTOImpl _value,
    $Res Function(_$ProductsSearchOptionPriceDTOImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ProductsSearchOptionPriceDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? finalPrice = null, Object? regularPrice = null}) {
    return _then(
      _$ProductsSearchOptionPriceDTOImpl(
        finalPrice:
            null == finalPrice
                ? _value.finalPrice
                : finalPrice // ignore: cast_nullable_to_non_nullable
                    as ProductsSearchDetailPriceDTO,
        regularPrice:
            null == regularPrice
                ? _value.regularPrice
                : regularPrice // ignore: cast_nullable_to_non_nullable
                    as ProductsSearchDetailPriceDTO,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductsSearchOptionPriceDTOImpl
    implements _ProductsSearchOptionPriceDTO {
  const _$ProductsSearchOptionPriceDTOImpl({
    @JsonKey(name: 'final_price') required this.finalPrice,
    @JsonKey(name: 'regular_price') required this.regularPrice,
  });

  factory _$ProductsSearchOptionPriceDTOImpl.fromJson(
    Map<String, dynamic> json,
  ) => _$$ProductsSearchOptionPriceDTOImplFromJson(json);

  @override
  @JsonKey(name: 'final_price')
  final ProductsSearchDetailPriceDTO finalPrice;
  @override
  @JsonKey(name: 'regular_price')
  final ProductsSearchDetailPriceDTO regularPrice;

  @override
  String toString() {
    return 'ProductsSearchOptionPriceDTO(finalPrice: $finalPrice, regularPrice: $regularPrice)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductsSearchOptionPriceDTOImpl &&
            (identical(other.finalPrice, finalPrice) ||
                other.finalPrice == finalPrice) &&
            (identical(other.regularPrice, regularPrice) ||
                other.regularPrice == regularPrice));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, finalPrice, regularPrice);

  /// Create a copy of ProductsSearchOptionPriceDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductsSearchOptionPriceDTOImplCopyWith<
    _$ProductsSearchOptionPriceDTOImpl
  >
  get copyWith => __$$ProductsSearchOptionPriceDTOImplCopyWithImpl<
    _$ProductsSearchOptionPriceDTOImpl
  >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductsSearchOptionPriceDTOImplToJson(this);
  }
}

abstract class _ProductsSearchOptionPriceDTO
    implements ProductsSearchOptionPriceDTO {
  const factory _ProductsSearchOptionPriceDTO({
    @JsonKey(name: 'final_price')
    required final ProductsSearchDetailPriceDTO finalPrice,
    @JsonKey(name: 'regular_price')
    required final ProductsSearchDetailPriceDTO regularPrice,
  }) = _$ProductsSearchOptionPriceDTOImpl;

  factory _ProductsSearchOptionPriceDTO.fromJson(Map<String, dynamic> json) =
      _$ProductsSearchOptionPriceDTOImpl.fromJson;

  @override
  @JsonKey(name: 'final_price')
  ProductsSearchDetailPriceDTO get finalPrice;
  @override
  @JsonKey(name: 'regular_price')
  ProductsSearchDetailPriceDTO get regularPrice;

  /// Create a copy of ProductsSearchOptionPriceDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductsSearchOptionPriceDTOImplCopyWith<
    _$ProductsSearchOptionPriceDTOImpl
  >
  get copyWith => throw _privateConstructorUsedError;
}

ProductsSearchDetailPriceDTO _$ProductsSearchDetailPriceDTOFromJson(
  Map<String, dynamic> json,
) {
  return _ProductsSearchDetailPriceDTO.fromJson(json);
}

/// @nodoc
mixin _$ProductsSearchDetailPriceDTO {
  double get value => throw _privateConstructorUsedError;
  String get currency => throw _privateConstructorUsedError;

  /// Serializes this ProductsSearchDetailPriceDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProductsSearchDetailPriceDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductsSearchDetailPriceDTOCopyWith<ProductsSearchDetailPriceDTO>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductsSearchDetailPriceDTOCopyWith<$Res> {
  factory $ProductsSearchDetailPriceDTOCopyWith(
    ProductsSearchDetailPriceDTO value,
    $Res Function(ProductsSearchDetailPriceDTO) then,
  ) =
      _$ProductsSearchDetailPriceDTOCopyWithImpl<
        $Res,
        ProductsSearchDetailPriceDTO
      >;
  @useResult
  $Res call({double value, String currency});
}

/// @nodoc
class _$ProductsSearchDetailPriceDTOCopyWithImpl<
  $Res,
  $Val extends ProductsSearchDetailPriceDTO
>
    implements $ProductsSearchDetailPriceDTOCopyWith<$Res> {
  _$ProductsSearchDetailPriceDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductsSearchDetailPriceDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? value = null, Object? currency = null}) {
    return _then(
      _value.copyWith(
            value:
                null == value
                    ? _value.value
                    : value // ignore: cast_nullable_to_non_nullable
                        as double,
            currency:
                null == currency
                    ? _value.currency
                    : currency // ignore: cast_nullable_to_non_nullable
                        as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ProductsSearchDetailPriceDTOImplCopyWith<$Res>
    implements $ProductsSearchDetailPriceDTOCopyWith<$Res> {
  factory _$$ProductsSearchDetailPriceDTOImplCopyWith(
    _$ProductsSearchDetailPriceDTOImpl value,
    $Res Function(_$ProductsSearchDetailPriceDTOImpl) then,
  ) = __$$ProductsSearchDetailPriceDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double value, String currency});
}

/// @nodoc
class __$$ProductsSearchDetailPriceDTOImplCopyWithImpl<$Res>
    extends
        _$ProductsSearchDetailPriceDTOCopyWithImpl<
          $Res,
          _$ProductsSearchDetailPriceDTOImpl
        >
    implements _$$ProductsSearchDetailPriceDTOImplCopyWith<$Res> {
  __$$ProductsSearchDetailPriceDTOImplCopyWithImpl(
    _$ProductsSearchDetailPriceDTOImpl _value,
    $Res Function(_$ProductsSearchDetailPriceDTOImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ProductsSearchDetailPriceDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? value = null, Object? currency = null}) {
    return _then(
      _$ProductsSearchDetailPriceDTOImpl(
        value:
            null == value
                ? _value.value
                : value // ignore: cast_nullable_to_non_nullable
                    as double,
        currency:
            null == currency
                ? _value.currency
                : currency // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductsSearchDetailPriceDTOImpl
    implements _ProductsSearchDetailPriceDTO {
  const _$ProductsSearchDetailPriceDTOImpl({
    required this.value,
    required this.currency,
  });

  factory _$ProductsSearchDetailPriceDTOImpl.fromJson(
    Map<String, dynamic> json,
  ) => _$$ProductsSearchDetailPriceDTOImplFromJson(json);

  @override
  final double value;
  @override
  final String currency;

  @override
  String toString() {
    return 'ProductsSearchDetailPriceDTO(value: $value, currency: $currency)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductsSearchDetailPriceDTOImpl &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.currency, currency) ||
                other.currency == currency));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, value, currency);

  /// Create a copy of ProductsSearchDetailPriceDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductsSearchDetailPriceDTOImplCopyWith<
    _$ProductsSearchDetailPriceDTOImpl
  >
  get copyWith => __$$ProductsSearchDetailPriceDTOImplCopyWithImpl<
    _$ProductsSearchDetailPriceDTOImpl
  >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductsSearchDetailPriceDTOImplToJson(this);
  }
}

abstract class _ProductsSearchDetailPriceDTO
    implements ProductsSearchDetailPriceDTO {
  const factory _ProductsSearchDetailPriceDTO({
    required final double value,
    required final String currency,
  }) = _$ProductsSearchDetailPriceDTOImpl;

  factory _ProductsSearchDetailPriceDTO.fromJson(Map<String, dynamic> json) =
      _$ProductsSearchDetailPriceDTOImpl.fromJson;

  @override
  double get value;
  @override
  String get currency;

  /// Create a copy of ProductsSearchDetailPriceDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductsSearchDetailPriceDTOImplCopyWith<
    _$ProductsSearchDetailPriceDTOImpl
  >
  get copyWith => throw _privateConstructorUsedError;
}

ProductsImageSearchDTO _$ProductsImageSearchDTOFromJson(
  Map<String, dynamic> json,
) {
  return _ProductsImageSearchDTO.fromJson(json);
}

/// @nodoc
mixin _$ProductsImageSearchDTO {
  String get label => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;

  /// Serializes this ProductsImageSearchDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProductsImageSearchDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductsImageSearchDTOCopyWith<ProductsImageSearchDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductsImageSearchDTOCopyWith<$Res> {
  factory $ProductsImageSearchDTOCopyWith(
    ProductsImageSearchDTO value,
    $Res Function(ProductsImageSearchDTO) then,
  ) = _$ProductsImageSearchDTOCopyWithImpl<$Res, ProductsImageSearchDTO>;
  @useResult
  $Res call({String label, String? url});
}

/// @nodoc
class _$ProductsImageSearchDTOCopyWithImpl<
  $Res,
  $Val extends ProductsImageSearchDTO
>
    implements $ProductsImageSearchDTOCopyWith<$Res> {
  _$ProductsImageSearchDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductsImageSearchDTO
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
abstract class _$$ProductsImageSearchDTOImplCopyWith<$Res>
    implements $ProductsImageSearchDTOCopyWith<$Res> {
  factory _$$ProductsImageSearchDTOImplCopyWith(
    _$ProductsImageSearchDTOImpl value,
    $Res Function(_$ProductsImageSearchDTOImpl) then,
  ) = __$$ProductsImageSearchDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String label, String? url});
}

/// @nodoc
class __$$ProductsImageSearchDTOImplCopyWithImpl<$Res>
    extends
        _$ProductsImageSearchDTOCopyWithImpl<$Res, _$ProductsImageSearchDTOImpl>
    implements _$$ProductsImageSearchDTOImplCopyWith<$Res> {
  __$$ProductsImageSearchDTOImplCopyWithImpl(
    _$ProductsImageSearchDTOImpl _value,
    $Res Function(_$ProductsImageSearchDTOImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ProductsImageSearchDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? label = null, Object? url = freezed}) {
    return _then(
      _$ProductsImageSearchDTOImpl(
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
class _$ProductsImageSearchDTOImpl implements _ProductsImageSearchDTO {
  const _$ProductsImageSearchDTOImpl({required this.label, this.url});

  factory _$ProductsImageSearchDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductsImageSearchDTOImplFromJson(json);

  @override
  final String label;
  @override
  final String? url;

  @override
  String toString() {
    return 'ProductsImageSearchDTO(label: $label, url: $url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductsImageSearchDTOImpl &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, label, url);

  /// Create a copy of ProductsImageSearchDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductsImageSearchDTOImplCopyWith<_$ProductsImageSearchDTOImpl>
  get copyWith =>
      __$$ProductsImageSearchDTOImplCopyWithImpl<_$ProductsImageSearchDTOImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductsImageSearchDTOImplToJson(this);
  }
}

abstract class _ProductsImageSearchDTO implements ProductsImageSearchDTO {
  const factory _ProductsImageSearchDTO({
    required final String label,
    final String? url,
  }) = _$ProductsImageSearchDTOImpl;

  factory _ProductsImageSearchDTO.fromJson(Map<String, dynamic> json) =
      _$ProductsImageSearchDTOImpl.fromJson;

  @override
  String get label;
  @override
  String? get url;

  /// Create a copy of ProductsImageSearchDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductsImageSearchDTOImplCopyWith<_$ProductsImageSearchDTOImpl>
  get copyWith => throw _privateConstructorUsedError;
}

ProductsDescriptionSearchDTO _$ProductsDescriptionSearchDTOFromJson(
  Map<String, dynamic> json,
) {
  return _ProductsDescriptionSearchDTO.fromJson(json);
}

/// @nodoc
mixin _$ProductsDescriptionSearchDTO {
  String get html => throw _privateConstructorUsedError;

  /// Serializes this ProductsDescriptionSearchDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProductsDescriptionSearchDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductsDescriptionSearchDTOCopyWith<ProductsDescriptionSearchDTO>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductsDescriptionSearchDTOCopyWith<$Res> {
  factory $ProductsDescriptionSearchDTOCopyWith(
    ProductsDescriptionSearchDTO value,
    $Res Function(ProductsDescriptionSearchDTO) then,
  ) =
      _$ProductsDescriptionSearchDTOCopyWithImpl<
        $Res,
        ProductsDescriptionSearchDTO
      >;
  @useResult
  $Res call({String html});
}

/// @nodoc
class _$ProductsDescriptionSearchDTOCopyWithImpl<
  $Res,
  $Val extends ProductsDescriptionSearchDTO
>
    implements $ProductsDescriptionSearchDTOCopyWith<$Res> {
  _$ProductsDescriptionSearchDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductsDescriptionSearchDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? html = null}) {
    return _then(
      _value.copyWith(
            html:
                null == html
                    ? _value.html
                    : html // ignore: cast_nullable_to_non_nullable
                        as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ProductsDescriptionSearchDTOImplCopyWith<$Res>
    implements $ProductsDescriptionSearchDTOCopyWith<$Res> {
  factory _$$ProductsDescriptionSearchDTOImplCopyWith(
    _$ProductsDescriptionSearchDTOImpl value,
    $Res Function(_$ProductsDescriptionSearchDTOImpl) then,
  ) = __$$ProductsDescriptionSearchDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String html});
}

/// @nodoc
class __$$ProductsDescriptionSearchDTOImplCopyWithImpl<$Res>
    extends
        _$ProductsDescriptionSearchDTOCopyWithImpl<
          $Res,
          _$ProductsDescriptionSearchDTOImpl
        >
    implements _$$ProductsDescriptionSearchDTOImplCopyWith<$Res> {
  __$$ProductsDescriptionSearchDTOImplCopyWithImpl(
    _$ProductsDescriptionSearchDTOImpl _value,
    $Res Function(_$ProductsDescriptionSearchDTOImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ProductsDescriptionSearchDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? html = null}) {
    return _then(
      _$ProductsDescriptionSearchDTOImpl(
        html:
            null == html
                ? _value.html
                : html // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductsDescriptionSearchDTOImpl
    implements _ProductsDescriptionSearchDTO {
  const _$ProductsDescriptionSearchDTOImpl({required this.html});

  factory _$ProductsDescriptionSearchDTOImpl.fromJson(
    Map<String, dynamic> json,
  ) => _$$ProductsDescriptionSearchDTOImplFromJson(json);

  @override
  final String html;

  @override
  String toString() {
    return 'ProductsDescriptionSearchDTO(html: $html)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductsDescriptionSearchDTOImpl &&
            (identical(other.html, html) || other.html == html));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, html);

  /// Create a copy of ProductsDescriptionSearchDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductsDescriptionSearchDTOImplCopyWith<
    _$ProductsDescriptionSearchDTOImpl
  >
  get copyWith => __$$ProductsDescriptionSearchDTOImplCopyWithImpl<
    _$ProductsDescriptionSearchDTOImpl
  >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductsDescriptionSearchDTOImplToJson(this);
  }
}

abstract class _ProductsDescriptionSearchDTO
    implements ProductsDescriptionSearchDTO {
  const factory _ProductsDescriptionSearchDTO({required final String html}) =
      _$ProductsDescriptionSearchDTOImpl;

  factory _ProductsDescriptionSearchDTO.fromJson(Map<String, dynamic> json) =
      _$ProductsDescriptionSearchDTOImpl.fromJson;

  @override
  String get html;

  /// Create a copy of ProductsDescriptionSearchDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductsDescriptionSearchDTOImplCopyWith<
    _$ProductsDescriptionSearchDTOImpl
  >
  get copyWith => throw _privateConstructorUsedError;
}
