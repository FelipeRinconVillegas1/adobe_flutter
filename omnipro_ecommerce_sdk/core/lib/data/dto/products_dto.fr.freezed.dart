// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'products_dto.fr.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ProductsDTO _$ProductsDTOFromJson(Map<String, dynamic> json) {
  return _ProductsDTO.fromJson(json);
}

/// @nodoc
mixin _$ProductsDTO {
  List<ProductsItemsDTO> get items => throw _privateConstructorUsedError;
  @JsonKey(name: 'page_info')
  ProductsPageInfoDTO get pageInfo => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_count')
  int get totalCount => throw _privateConstructorUsedError;
  List<ProductsAggregationsDTO> get aggregations =>
      throw _privateConstructorUsedError;

  /// Serializes this ProductsDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProductsDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductsDTOCopyWith<ProductsDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductsDTOCopyWith<$Res> {
  factory $ProductsDTOCopyWith(
    ProductsDTO value,
    $Res Function(ProductsDTO) then,
  ) = _$ProductsDTOCopyWithImpl<$Res, ProductsDTO>;
  @useResult
  $Res call({
    List<ProductsItemsDTO> items,
    @JsonKey(name: 'page_info') ProductsPageInfoDTO pageInfo,
    @JsonKey(name: 'total_count') int totalCount,
    List<ProductsAggregationsDTO> aggregations,
  });

  $ProductsPageInfoDTOCopyWith<$Res> get pageInfo;
}

/// @nodoc
class _$ProductsDTOCopyWithImpl<$Res, $Val extends ProductsDTO>
    implements $ProductsDTOCopyWith<$Res> {
  _$ProductsDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductsDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
    Object? pageInfo = null,
    Object? totalCount = null,
    Object? aggregations = null,
  }) {
    return _then(
      _value.copyWith(
            items:
                null == items
                    ? _value.items
                    : items // ignore: cast_nullable_to_non_nullable
                        as List<ProductsItemsDTO>,
            pageInfo:
                null == pageInfo
                    ? _value.pageInfo
                    : pageInfo // ignore: cast_nullable_to_non_nullable
                        as ProductsPageInfoDTO,
            totalCount:
                null == totalCount
                    ? _value.totalCount
                    : totalCount // ignore: cast_nullable_to_non_nullable
                        as int,
            aggregations:
                null == aggregations
                    ? _value.aggregations
                    : aggregations // ignore: cast_nullable_to_non_nullable
                        as List<ProductsAggregationsDTO>,
          )
          as $Val,
    );
  }

  /// Create a copy of ProductsDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProductsPageInfoDTOCopyWith<$Res> get pageInfo {
    return $ProductsPageInfoDTOCopyWith<$Res>(_value.pageInfo, (value) {
      return _then(_value.copyWith(pageInfo: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProductsDTOImplCopyWith<$Res>
    implements $ProductsDTOCopyWith<$Res> {
  factory _$$ProductsDTOImplCopyWith(
    _$ProductsDTOImpl value,
    $Res Function(_$ProductsDTOImpl) then,
  ) = __$$ProductsDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    List<ProductsItemsDTO> items,
    @JsonKey(name: 'page_info') ProductsPageInfoDTO pageInfo,
    @JsonKey(name: 'total_count') int totalCount,
    List<ProductsAggregationsDTO> aggregations,
  });

  @override
  $ProductsPageInfoDTOCopyWith<$Res> get pageInfo;
}

/// @nodoc
class __$$ProductsDTOImplCopyWithImpl<$Res>
    extends _$ProductsDTOCopyWithImpl<$Res, _$ProductsDTOImpl>
    implements _$$ProductsDTOImplCopyWith<$Res> {
  __$$ProductsDTOImplCopyWithImpl(
    _$ProductsDTOImpl _value,
    $Res Function(_$ProductsDTOImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ProductsDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
    Object? pageInfo = null,
    Object? totalCount = null,
    Object? aggregations = null,
  }) {
    return _then(
      _$ProductsDTOImpl(
        items:
            null == items
                ? _value._items
                : items // ignore: cast_nullable_to_non_nullable
                    as List<ProductsItemsDTO>,
        pageInfo:
            null == pageInfo
                ? _value.pageInfo
                : pageInfo // ignore: cast_nullable_to_non_nullable
                    as ProductsPageInfoDTO,
        totalCount:
            null == totalCount
                ? _value.totalCount
                : totalCount // ignore: cast_nullable_to_non_nullable
                    as int,
        aggregations:
            null == aggregations
                ? _value._aggregations
                : aggregations // ignore: cast_nullable_to_non_nullable
                    as List<ProductsAggregationsDTO>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductsDTOImpl implements _ProductsDTO {
  const _$ProductsDTOImpl({
    required final List<ProductsItemsDTO> items,
    @JsonKey(name: 'page_info') required this.pageInfo,
    @JsonKey(name: 'total_count') required this.totalCount,
    final List<ProductsAggregationsDTO> aggregations = const [],
  }) : _items = items,
       _aggregations = aggregations;

  factory _$ProductsDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductsDTOImplFromJson(json);

  final List<ProductsItemsDTO> _items;
  @override
  List<ProductsItemsDTO> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  @JsonKey(name: 'page_info')
  final ProductsPageInfoDTO pageInfo;
  @override
  @JsonKey(name: 'total_count')
  final int totalCount;
  final List<ProductsAggregationsDTO> _aggregations;
  @override
  @JsonKey()
  List<ProductsAggregationsDTO> get aggregations {
    if (_aggregations is EqualUnmodifiableListView) return _aggregations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_aggregations);
  }

  @override
  String toString() {
    return 'ProductsDTO(items: $items, pageInfo: $pageInfo, totalCount: $totalCount, aggregations: $aggregations)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductsDTOImpl &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            (identical(other.pageInfo, pageInfo) ||
                other.pageInfo == pageInfo) &&
            (identical(other.totalCount, totalCount) ||
                other.totalCount == totalCount) &&
            const DeepCollectionEquality().equals(
              other._aggregations,
              _aggregations,
            ));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_items),
    pageInfo,
    totalCount,
    const DeepCollectionEquality().hash(_aggregations),
  );

  /// Create a copy of ProductsDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductsDTOImplCopyWith<_$ProductsDTOImpl> get copyWith =>
      __$$ProductsDTOImplCopyWithImpl<_$ProductsDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductsDTOImplToJson(this);
  }
}

abstract class _ProductsDTO implements ProductsDTO {
  const factory _ProductsDTO({
    required final List<ProductsItemsDTO> items,
    @JsonKey(name: 'page_info') required final ProductsPageInfoDTO pageInfo,
    @JsonKey(name: 'total_count') required final int totalCount,
    final List<ProductsAggregationsDTO> aggregations,
  }) = _$ProductsDTOImpl;

  factory _ProductsDTO.fromJson(Map<String, dynamic> json) =
      _$ProductsDTOImpl.fromJson;

  @override
  List<ProductsItemsDTO> get items;
  @override
  @JsonKey(name: 'page_info')
  ProductsPageInfoDTO get pageInfo;
  @override
  @JsonKey(name: 'total_count')
  int get totalCount;
  @override
  List<ProductsAggregationsDTO> get aggregations;

  /// Create a copy of ProductsDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductsDTOImplCopyWith<_$ProductsDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ProductsPageInfoDTO _$ProductsPageInfoDTOFromJson(Map<String, dynamic> json) {
  return _ProductsPageInfoDTO.fromJson(json);
}

/// @nodoc
mixin _$ProductsPageInfoDTO {
  @JsonKey(name: 'current_page')
  int get currentPage => throw _privateConstructorUsedError;
  @JsonKey(name: 'page_size')
  int get pageSize => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_pages')
  int get totalPages => throw _privateConstructorUsedError;

  /// Serializes this ProductsPageInfoDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProductsPageInfoDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductsPageInfoDTOCopyWith<ProductsPageInfoDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductsPageInfoDTOCopyWith<$Res> {
  factory $ProductsPageInfoDTOCopyWith(
    ProductsPageInfoDTO value,
    $Res Function(ProductsPageInfoDTO) then,
  ) = _$ProductsPageInfoDTOCopyWithImpl<$Res, ProductsPageInfoDTO>;
  @useResult
  $Res call({
    @JsonKey(name: 'current_page') int currentPage,
    @JsonKey(name: 'page_size') int pageSize,
    @JsonKey(name: 'total_pages') int totalPages,
  });
}

/// @nodoc
class _$ProductsPageInfoDTOCopyWithImpl<$Res, $Val extends ProductsPageInfoDTO>
    implements $ProductsPageInfoDTOCopyWith<$Res> {
  _$ProductsPageInfoDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductsPageInfoDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentPage = null,
    Object? pageSize = null,
    Object? totalPages = null,
  }) {
    return _then(
      _value.copyWith(
            currentPage:
                null == currentPage
                    ? _value.currentPage
                    : currentPage // ignore: cast_nullable_to_non_nullable
                        as int,
            pageSize:
                null == pageSize
                    ? _value.pageSize
                    : pageSize // ignore: cast_nullable_to_non_nullable
                        as int,
            totalPages:
                null == totalPages
                    ? _value.totalPages
                    : totalPages // ignore: cast_nullable_to_non_nullable
                        as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ProductsPageInfoDTOImplCopyWith<$Res>
    implements $ProductsPageInfoDTOCopyWith<$Res> {
  factory _$$ProductsPageInfoDTOImplCopyWith(
    _$ProductsPageInfoDTOImpl value,
    $Res Function(_$ProductsPageInfoDTOImpl) then,
  ) = __$$ProductsPageInfoDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'current_page') int currentPage,
    @JsonKey(name: 'page_size') int pageSize,
    @JsonKey(name: 'total_pages') int totalPages,
  });
}

/// @nodoc
class __$$ProductsPageInfoDTOImplCopyWithImpl<$Res>
    extends _$ProductsPageInfoDTOCopyWithImpl<$Res, _$ProductsPageInfoDTOImpl>
    implements _$$ProductsPageInfoDTOImplCopyWith<$Res> {
  __$$ProductsPageInfoDTOImplCopyWithImpl(
    _$ProductsPageInfoDTOImpl _value,
    $Res Function(_$ProductsPageInfoDTOImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ProductsPageInfoDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentPage = null,
    Object? pageSize = null,
    Object? totalPages = null,
  }) {
    return _then(
      _$ProductsPageInfoDTOImpl(
        currentPage:
            null == currentPage
                ? _value.currentPage
                : currentPage // ignore: cast_nullable_to_non_nullable
                    as int,
        pageSize:
            null == pageSize
                ? _value.pageSize
                : pageSize // ignore: cast_nullable_to_non_nullable
                    as int,
        totalPages:
            null == totalPages
                ? _value.totalPages
                : totalPages // ignore: cast_nullable_to_non_nullable
                    as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductsPageInfoDTOImpl implements _ProductsPageInfoDTO {
  const _$ProductsPageInfoDTOImpl({
    @JsonKey(name: 'current_page') required this.currentPage,
    @JsonKey(name: 'page_size') required this.pageSize,
    @JsonKey(name: 'total_pages') required this.totalPages,
  });

  factory _$ProductsPageInfoDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductsPageInfoDTOImplFromJson(json);

  @override
  @JsonKey(name: 'current_page')
  final int currentPage;
  @override
  @JsonKey(name: 'page_size')
  final int pageSize;
  @override
  @JsonKey(name: 'total_pages')
  final int totalPages;

  @override
  String toString() {
    return 'ProductsPageInfoDTO(currentPage: $currentPage, pageSize: $pageSize, totalPages: $totalPages)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductsPageInfoDTOImpl &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage) &&
            (identical(other.pageSize, pageSize) ||
                other.pageSize == pageSize) &&
            (identical(other.totalPages, totalPages) ||
                other.totalPages == totalPages));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, currentPage, pageSize, totalPages);

  /// Create a copy of ProductsPageInfoDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductsPageInfoDTOImplCopyWith<_$ProductsPageInfoDTOImpl> get copyWith =>
      __$$ProductsPageInfoDTOImplCopyWithImpl<_$ProductsPageInfoDTOImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductsPageInfoDTOImplToJson(this);
  }
}

abstract class _ProductsPageInfoDTO implements ProductsPageInfoDTO {
  const factory _ProductsPageInfoDTO({
    @JsonKey(name: 'current_page') required final int currentPage,
    @JsonKey(name: 'page_size') required final int pageSize,
    @JsonKey(name: 'total_pages') required final int totalPages,
  }) = _$ProductsPageInfoDTOImpl;

  factory _ProductsPageInfoDTO.fromJson(Map<String, dynamic> json) =
      _$ProductsPageInfoDTOImpl.fromJson;

  @override
  @JsonKey(name: 'current_page')
  int get currentPage;
  @override
  @JsonKey(name: 'page_size')
  int get pageSize;
  @override
  @JsonKey(name: 'total_pages')
  int get totalPages;

  /// Create a copy of ProductsPageInfoDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductsPageInfoDTOImplCopyWith<_$ProductsPageInfoDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ProductsItemsDTO _$ProductsItemsDTOFromJson(Map<String, dynamic> json) {
  return _ProductsItemsDTO.fromJson(json);
}

/// @nodoc
mixin _$ProductsItemsDTO {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get sku => throw _privateConstructorUsedError;
  @JsonKey(name: 'type_id')
  String get typeId => throw _privateConstructorUsedError;
  String? get upc => throw _privateConstructorUsedError;
  int? get marca => throw _privateConstructorUsedError;
  @JsonKey(name: 'brand_name')
  String? get brandName => throw _privateConstructorUsedError;
  @JsonKey(name: 'min_sale_qty')
  double get minSaleQty => throw _privateConstructorUsedError;
  double get margin => throw _privateConstructorUsedError;
  String? get uid => throw _privateConstructorUsedError;
  @JsonKey(name: 'url_key')
  String? get urlKey => throw _privateConstructorUsedError;
  @JsonKey(name: 'special_price')
  double? get specialPrice => throw _privateConstructorUsedError;
  @JsonKey(name: 'catalog_extended')
  int get isCatalogExtended => throw _privateConstructorUsedError;
  ProductsDescriptionDTO? get description => throw _privateConstructorUsedError;
  ProductsImageDTO get image => throw _privateConstructorUsedError;
  String? get tags => throw _privateConstructorUsedError;
  @JsonKey(name: 'media_gallery')
  List<ProductsMediaGalleryDTO> get mediaGallery =>
      throw _privateConstructorUsedError;
  List<ProductsVariantsDTO> get variants => throw _privateConstructorUsedError;
  @JsonKey(name: 'small_image')
  ProductsImageDTO? get smallImage => throw _privateConstructorUsedError;
  List<RibbonsProductsDTO> get ribbons => throw _privateConstructorUsedError;
  @JsonKey(name: 'rating_summary')
  int? get ratingSummary => throw _privateConstructorUsedError;
  @JsonKey(name: 'review_count')
  int? get reviewCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'tax_amount')
  List<TaxAmountDTO> get taxAmount => throw _privateConstructorUsedError;
  @JsonKey(name: 'price_range')
  ProductsPriceRangeDTO? get priceRange => throw _privateConstructorUsedError;
  @JsonKey(name: 'sales_unit_of_measure')
  String? get salesUnitOfMeasure => throw _privateConstructorUsedError;
  @JsonKey(name: 'stock_status')
  String? get stockStatus => throw _privateConstructorUsedError;
  @JsonKey(name: 'related_products')
  List<ProductsRelatedProductsDTO> get relatedProducts =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'upsell_products')
  List<ProductsRelatedProductsDTO> get upsellProducts =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'crosssell_products')
  List<ProductsRelatedProductsDTO> get crosssellProducts =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'short_description')
  ProductsDescriptionDTO? get shortDescription =>
      throw _privateConstructorUsedError;
  List<ProductsItemsDTO> get associatedProducts =>
      throw _privateConstructorUsedError;
  List<ProductsCategoryDTO> get categories =>
      throw _privateConstructorUsedError;

  /// Serializes this ProductsItemsDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProductsItemsDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductsItemsDTOCopyWith<ProductsItemsDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductsItemsDTOCopyWith<$Res> {
  factory $ProductsItemsDTOCopyWith(
    ProductsItemsDTO value,
    $Res Function(ProductsItemsDTO) then,
  ) = _$ProductsItemsDTOCopyWithImpl<$Res, ProductsItemsDTO>;
  @useResult
  $Res call({
    int id,
    String name,
    String sku,
    @JsonKey(name: 'type_id') String typeId,
    String? upc,
    int? marca,
    @JsonKey(name: 'brand_name') String? brandName,
    @JsonKey(name: 'min_sale_qty') double minSaleQty,
    double margin,
    String? uid,
    @JsonKey(name: 'url_key') String? urlKey,
    @JsonKey(name: 'special_price') double? specialPrice,
    @JsonKey(name: 'catalog_extended') int isCatalogExtended,
    ProductsDescriptionDTO? description,
    ProductsImageDTO image,
    String? tags,
    @JsonKey(name: 'media_gallery') List<ProductsMediaGalleryDTO> mediaGallery,
    List<ProductsVariantsDTO> variants,
    @JsonKey(name: 'small_image') ProductsImageDTO? smallImage,
    List<RibbonsProductsDTO> ribbons,
    @JsonKey(name: 'rating_summary') int? ratingSummary,
    @JsonKey(name: 'review_count') int? reviewCount,
    @JsonKey(name: 'tax_amount') List<TaxAmountDTO> taxAmount,
    @JsonKey(name: 'price_range') ProductsPriceRangeDTO? priceRange,
    @JsonKey(name: 'sales_unit_of_measure') String? salesUnitOfMeasure,
    @JsonKey(name: 'stock_status') String? stockStatus,
    @JsonKey(name: 'related_products')
    List<ProductsRelatedProductsDTO> relatedProducts,
    @JsonKey(name: 'upsell_products')
    List<ProductsRelatedProductsDTO> upsellProducts,
    @JsonKey(name: 'crosssell_products')
    List<ProductsRelatedProductsDTO> crosssellProducts,
    @JsonKey(name: 'short_description')
    ProductsDescriptionDTO? shortDescription,
    List<ProductsItemsDTO> associatedProducts,
    List<ProductsCategoryDTO> categories,
  });

  $ProductsDescriptionDTOCopyWith<$Res>? get description;
  $ProductsImageDTOCopyWith<$Res> get image;
  $ProductsImageDTOCopyWith<$Res>? get smallImage;
  $ProductsPriceRangeDTOCopyWith<$Res>? get priceRange;
  $ProductsDescriptionDTOCopyWith<$Res>? get shortDescription;
}

/// @nodoc
class _$ProductsItemsDTOCopyWithImpl<$Res, $Val extends ProductsItemsDTO>
    implements $ProductsItemsDTOCopyWith<$Res> {
  _$ProductsItemsDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductsItemsDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? sku = null,
    Object? typeId = null,
    Object? upc = freezed,
    Object? marca = freezed,
    Object? brandName = freezed,
    Object? minSaleQty = null,
    Object? margin = null,
    Object? uid = freezed,
    Object? urlKey = freezed,
    Object? specialPrice = freezed,
    Object? isCatalogExtended = null,
    Object? description = freezed,
    Object? image = null,
    Object? tags = freezed,
    Object? mediaGallery = null,
    Object? variants = null,
    Object? smallImage = freezed,
    Object? ribbons = null,
    Object? ratingSummary = freezed,
    Object? reviewCount = freezed,
    Object? taxAmount = null,
    Object? priceRange = freezed,
    Object? salesUnitOfMeasure = freezed,
    Object? stockStatus = freezed,
    Object? relatedProducts = null,
    Object? upsellProducts = null,
    Object? crosssellProducts = null,
    Object? shortDescription = freezed,
    Object? associatedProducts = null,
    Object? categories = null,
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
            typeId:
                null == typeId
                    ? _value.typeId
                    : typeId // ignore: cast_nullable_to_non_nullable
                        as String,
            upc:
                freezed == upc
                    ? _value.upc
                    : upc // ignore: cast_nullable_to_non_nullable
                        as String?,
            marca:
                freezed == marca
                    ? _value.marca
                    : marca // ignore: cast_nullable_to_non_nullable
                        as int?,
            brandName:
                freezed == brandName
                    ? _value.brandName
                    : brandName // ignore: cast_nullable_to_non_nullable
                        as String?,
            minSaleQty:
                null == minSaleQty
                    ? _value.minSaleQty
                    : minSaleQty // ignore: cast_nullable_to_non_nullable
                        as double,
            margin:
                null == margin
                    ? _value.margin
                    : margin // ignore: cast_nullable_to_non_nullable
                        as double,
            uid:
                freezed == uid
                    ? _value.uid
                    : uid // ignore: cast_nullable_to_non_nullable
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
            isCatalogExtended:
                null == isCatalogExtended
                    ? _value.isCatalogExtended
                    : isCatalogExtended // ignore: cast_nullable_to_non_nullable
                        as int,
            description:
                freezed == description
                    ? _value.description
                    : description // ignore: cast_nullable_to_non_nullable
                        as ProductsDescriptionDTO?,
            image:
                null == image
                    ? _value.image
                    : image // ignore: cast_nullable_to_non_nullable
                        as ProductsImageDTO,
            tags:
                freezed == tags
                    ? _value.tags
                    : tags // ignore: cast_nullable_to_non_nullable
                        as String?,
            mediaGallery:
                null == mediaGallery
                    ? _value.mediaGallery
                    : mediaGallery // ignore: cast_nullable_to_non_nullable
                        as List<ProductsMediaGalleryDTO>,
            variants:
                null == variants
                    ? _value.variants
                    : variants // ignore: cast_nullable_to_non_nullable
                        as List<ProductsVariantsDTO>,
            smallImage:
                freezed == smallImage
                    ? _value.smallImage
                    : smallImage // ignore: cast_nullable_to_non_nullable
                        as ProductsImageDTO?,
            ribbons:
                null == ribbons
                    ? _value.ribbons
                    : ribbons // ignore: cast_nullable_to_non_nullable
                        as List<RibbonsProductsDTO>,
            ratingSummary:
                freezed == ratingSummary
                    ? _value.ratingSummary
                    : ratingSummary // ignore: cast_nullable_to_non_nullable
                        as int?,
            reviewCount:
                freezed == reviewCount
                    ? _value.reviewCount
                    : reviewCount // ignore: cast_nullable_to_non_nullable
                        as int?,
            taxAmount:
                null == taxAmount
                    ? _value.taxAmount
                    : taxAmount // ignore: cast_nullable_to_non_nullable
                        as List<TaxAmountDTO>,
            priceRange:
                freezed == priceRange
                    ? _value.priceRange
                    : priceRange // ignore: cast_nullable_to_non_nullable
                        as ProductsPriceRangeDTO?,
            salesUnitOfMeasure:
                freezed == salesUnitOfMeasure
                    ? _value.salesUnitOfMeasure
                    : salesUnitOfMeasure // ignore: cast_nullable_to_non_nullable
                        as String?,
            stockStatus:
                freezed == stockStatus
                    ? _value.stockStatus
                    : stockStatus // ignore: cast_nullable_to_non_nullable
                        as String?,
            relatedProducts:
                null == relatedProducts
                    ? _value.relatedProducts
                    : relatedProducts // ignore: cast_nullable_to_non_nullable
                        as List<ProductsRelatedProductsDTO>,
            upsellProducts:
                null == upsellProducts
                    ? _value.upsellProducts
                    : upsellProducts // ignore: cast_nullable_to_non_nullable
                        as List<ProductsRelatedProductsDTO>,
            crosssellProducts:
                null == crosssellProducts
                    ? _value.crosssellProducts
                    : crosssellProducts // ignore: cast_nullable_to_non_nullable
                        as List<ProductsRelatedProductsDTO>,
            shortDescription:
                freezed == shortDescription
                    ? _value.shortDescription
                    : shortDescription // ignore: cast_nullable_to_non_nullable
                        as ProductsDescriptionDTO?,
            associatedProducts:
                null == associatedProducts
                    ? _value.associatedProducts
                    : associatedProducts // ignore: cast_nullable_to_non_nullable
                        as List<ProductsItemsDTO>,
            categories:
                null == categories
                    ? _value.categories
                    : categories // ignore: cast_nullable_to_non_nullable
                        as List<ProductsCategoryDTO>,
          )
          as $Val,
    );
  }

  /// Create a copy of ProductsItemsDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProductsDescriptionDTOCopyWith<$Res>? get description {
    if (_value.description == null) {
      return null;
    }

    return $ProductsDescriptionDTOCopyWith<$Res>(_value.description!, (value) {
      return _then(_value.copyWith(description: value) as $Val);
    });
  }

  /// Create a copy of ProductsItemsDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProductsImageDTOCopyWith<$Res> get image {
    return $ProductsImageDTOCopyWith<$Res>(_value.image, (value) {
      return _then(_value.copyWith(image: value) as $Val);
    });
  }

  /// Create a copy of ProductsItemsDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProductsImageDTOCopyWith<$Res>? get smallImage {
    if (_value.smallImage == null) {
      return null;
    }

    return $ProductsImageDTOCopyWith<$Res>(_value.smallImage!, (value) {
      return _then(_value.copyWith(smallImage: value) as $Val);
    });
  }

  /// Create a copy of ProductsItemsDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProductsPriceRangeDTOCopyWith<$Res>? get priceRange {
    if (_value.priceRange == null) {
      return null;
    }

    return $ProductsPriceRangeDTOCopyWith<$Res>(_value.priceRange!, (value) {
      return _then(_value.copyWith(priceRange: value) as $Val);
    });
  }

  /// Create a copy of ProductsItemsDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProductsDescriptionDTOCopyWith<$Res>? get shortDescription {
    if (_value.shortDescription == null) {
      return null;
    }

    return $ProductsDescriptionDTOCopyWith<$Res>(_value.shortDescription!, (
      value,
    ) {
      return _then(_value.copyWith(shortDescription: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProductsItemsDTOImplCopyWith<$Res>
    implements $ProductsItemsDTOCopyWith<$Res> {
  factory _$$ProductsItemsDTOImplCopyWith(
    _$ProductsItemsDTOImpl value,
    $Res Function(_$ProductsItemsDTOImpl) then,
  ) = __$$ProductsItemsDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int id,
    String name,
    String sku,
    @JsonKey(name: 'type_id') String typeId,
    String? upc,
    int? marca,
    @JsonKey(name: 'brand_name') String? brandName,
    @JsonKey(name: 'min_sale_qty') double minSaleQty,
    double margin,
    String? uid,
    @JsonKey(name: 'url_key') String? urlKey,
    @JsonKey(name: 'special_price') double? specialPrice,
    @JsonKey(name: 'catalog_extended') int isCatalogExtended,
    ProductsDescriptionDTO? description,
    ProductsImageDTO image,
    String? tags,
    @JsonKey(name: 'media_gallery') List<ProductsMediaGalleryDTO> mediaGallery,
    List<ProductsVariantsDTO> variants,
    @JsonKey(name: 'small_image') ProductsImageDTO? smallImage,
    List<RibbonsProductsDTO> ribbons,
    @JsonKey(name: 'rating_summary') int? ratingSummary,
    @JsonKey(name: 'review_count') int? reviewCount,
    @JsonKey(name: 'tax_amount') List<TaxAmountDTO> taxAmount,
    @JsonKey(name: 'price_range') ProductsPriceRangeDTO? priceRange,
    @JsonKey(name: 'sales_unit_of_measure') String? salesUnitOfMeasure,
    @JsonKey(name: 'stock_status') String? stockStatus,
    @JsonKey(name: 'related_products')
    List<ProductsRelatedProductsDTO> relatedProducts,
    @JsonKey(name: 'upsell_products')
    List<ProductsRelatedProductsDTO> upsellProducts,
    @JsonKey(name: 'crosssell_products')
    List<ProductsRelatedProductsDTO> crosssellProducts,
    @JsonKey(name: 'short_description')
    ProductsDescriptionDTO? shortDescription,
    List<ProductsItemsDTO> associatedProducts,
    List<ProductsCategoryDTO> categories,
  });

  @override
  $ProductsDescriptionDTOCopyWith<$Res>? get description;
  @override
  $ProductsImageDTOCopyWith<$Res> get image;
  @override
  $ProductsImageDTOCopyWith<$Res>? get smallImage;
  @override
  $ProductsPriceRangeDTOCopyWith<$Res>? get priceRange;
  @override
  $ProductsDescriptionDTOCopyWith<$Res>? get shortDescription;
}

/// @nodoc
class __$$ProductsItemsDTOImplCopyWithImpl<$Res>
    extends _$ProductsItemsDTOCopyWithImpl<$Res, _$ProductsItemsDTOImpl>
    implements _$$ProductsItemsDTOImplCopyWith<$Res> {
  __$$ProductsItemsDTOImplCopyWithImpl(
    _$ProductsItemsDTOImpl _value,
    $Res Function(_$ProductsItemsDTOImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ProductsItemsDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? sku = null,
    Object? typeId = null,
    Object? upc = freezed,
    Object? marca = freezed,
    Object? brandName = freezed,
    Object? minSaleQty = null,
    Object? margin = null,
    Object? uid = freezed,
    Object? urlKey = freezed,
    Object? specialPrice = freezed,
    Object? isCatalogExtended = null,
    Object? description = freezed,
    Object? image = null,
    Object? tags = freezed,
    Object? mediaGallery = null,
    Object? variants = null,
    Object? smallImage = freezed,
    Object? ribbons = null,
    Object? ratingSummary = freezed,
    Object? reviewCount = freezed,
    Object? taxAmount = null,
    Object? priceRange = freezed,
    Object? salesUnitOfMeasure = freezed,
    Object? stockStatus = freezed,
    Object? relatedProducts = null,
    Object? upsellProducts = null,
    Object? crosssellProducts = null,
    Object? shortDescription = freezed,
    Object? associatedProducts = null,
    Object? categories = null,
  }) {
    return _then(
      _$ProductsItemsDTOImpl(
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
        typeId:
            null == typeId
                ? _value.typeId
                : typeId // ignore: cast_nullable_to_non_nullable
                    as String,
        upc:
            freezed == upc
                ? _value.upc
                : upc // ignore: cast_nullable_to_non_nullable
                    as String?,
        marca:
            freezed == marca
                ? _value.marca
                : marca // ignore: cast_nullable_to_non_nullable
                    as int?,
        brandName:
            freezed == brandName
                ? _value.brandName
                : brandName // ignore: cast_nullable_to_non_nullable
                    as String?,
        minSaleQty:
            null == minSaleQty
                ? _value.minSaleQty
                : minSaleQty // ignore: cast_nullable_to_non_nullable
                    as double,
        margin:
            null == margin
                ? _value.margin
                : margin // ignore: cast_nullable_to_non_nullable
                    as double,
        uid:
            freezed == uid
                ? _value.uid
                : uid // ignore: cast_nullable_to_non_nullable
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
        isCatalogExtended:
            null == isCatalogExtended
                ? _value.isCatalogExtended
                : isCatalogExtended // ignore: cast_nullable_to_non_nullable
                    as int,
        description:
            freezed == description
                ? _value.description
                : description // ignore: cast_nullable_to_non_nullable
                    as ProductsDescriptionDTO?,
        image:
            null == image
                ? _value.image
                : image // ignore: cast_nullable_to_non_nullable
                    as ProductsImageDTO,
        tags:
            freezed == tags
                ? _value.tags
                : tags // ignore: cast_nullable_to_non_nullable
                    as String?,
        mediaGallery:
            null == mediaGallery
                ? _value._mediaGallery
                : mediaGallery // ignore: cast_nullable_to_non_nullable
                    as List<ProductsMediaGalleryDTO>,
        variants:
            null == variants
                ? _value._variants
                : variants // ignore: cast_nullable_to_non_nullable
                    as List<ProductsVariantsDTO>,
        smallImage:
            freezed == smallImage
                ? _value.smallImage
                : smallImage // ignore: cast_nullable_to_non_nullable
                    as ProductsImageDTO?,
        ribbons:
            null == ribbons
                ? _value._ribbons
                : ribbons // ignore: cast_nullable_to_non_nullable
                    as List<RibbonsProductsDTO>,
        ratingSummary:
            freezed == ratingSummary
                ? _value.ratingSummary
                : ratingSummary // ignore: cast_nullable_to_non_nullable
                    as int?,
        reviewCount:
            freezed == reviewCount
                ? _value.reviewCount
                : reviewCount // ignore: cast_nullable_to_non_nullable
                    as int?,
        taxAmount:
            null == taxAmount
                ? _value._taxAmount
                : taxAmount // ignore: cast_nullable_to_non_nullable
                    as List<TaxAmountDTO>,
        priceRange:
            freezed == priceRange
                ? _value.priceRange
                : priceRange // ignore: cast_nullable_to_non_nullable
                    as ProductsPriceRangeDTO?,
        salesUnitOfMeasure:
            freezed == salesUnitOfMeasure
                ? _value.salesUnitOfMeasure
                : salesUnitOfMeasure // ignore: cast_nullable_to_non_nullable
                    as String?,
        stockStatus:
            freezed == stockStatus
                ? _value.stockStatus
                : stockStatus // ignore: cast_nullable_to_non_nullable
                    as String?,
        relatedProducts:
            null == relatedProducts
                ? _value._relatedProducts
                : relatedProducts // ignore: cast_nullable_to_non_nullable
                    as List<ProductsRelatedProductsDTO>,
        upsellProducts:
            null == upsellProducts
                ? _value._upsellProducts
                : upsellProducts // ignore: cast_nullable_to_non_nullable
                    as List<ProductsRelatedProductsDTO>,
        crosssellProducts:
            null == crosssellProducts
                ? _value._crosssellProducts
                : crosssellProducts // ignore: cast_nullable_to_non_nullable
                    as List<ProductsRelatedProductsDTO>,
        shortDescription:
            freezed == shortDescription
                ? _value.shortDescription
                : shortDescription // ignore: cast_nullable_to_non_nullable
                    as ProductsDescriptionDTO?,
        associatedProducts:
            null == associatedProducts
                ? _value._associatedProducts
                : associatedProducts // ignore: cast_nullable_to_non_nullable
                    as List<ProductsItemsDTO>,
        categories:
            null == categories
                ? _value._categories
                : categories // ignore: cast_nullable_to_non_nullable
                    as List<ProductsCategoryDTO>,
      ),
    );
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$ProductsItemsDTOImpl implements _ProductsItemsDTO {
  const _$ProductsItemsDTOImpl({
    required this.id,
    required this.name,
    required this.sku,
    @JsonKey(name: 'type_id') required this.typeId,
    this.upc,
    this.marca,
    @JsonKey(name: 'brand_name') this.brandName,
    @JsonKey(name: 'min_sale_qty') required this.minSaleQty,
    this.margin = 0,
    this.uid,
    @JsonKey(name: 'url_key') this.urlKey,
    @JsonKey(name: 'special_price') this.specialPrice,
    @JsonKey(name: 'catalog_extended') this.isCatalogExtended = 0,
    this.description,
    required this.image,
    this.tags,
    @JsonKey(name: 'media_gallery')
    required final List<ProductsMediaGalleryDTO> mediaGallery,
    final List<ProductsVariantsDTO> variants = const [],
    @JsonKey(name: 'small_image') this.smallImage,
    final List<RibbonsProductsDTO> ribbons = const [],
    @JsonKey(name: 'rating_summary') this.ratingSummary,
    @JsonKey(name: 'review_count') this.reviewCount,
    @JsonKey(name: 'tax_amount') final List<TaxAmountDTO> taxAmount = const [],
    @JsonKey(name: 'price_range') this.priceRange,
    @JsonKey(name: 'sales_unit_of_measure') this.salesUnitOfMeasure,
    @JsonKey(name: 'stock_status') this.stockStatus,
    @JsonKey(name: 'related_products')
    final List<ProductsRelatedProductsDTO> relatedProducts = const [],
    @JsonKey(name: 'upsell_products')
    final List<ProductsRelatedProductsDTO> upsellProducts = const [],
    @JsonKey(name: 'crosssell_products')
    final List<ProductsRelatedProductsDTO> crosssellProducts = const [],
    @JsonKey(name: 'short_description') this.shortDescription,
    final List<ProductsItemsDTO> associatedProducts = const [],
    final List<ProductsCategoryDTO> categories = const [],
  }) : _mediaGallery = mediaGallery,
       _variants = variants,
       _ribbons = ribbons,
       _taxAmount = taxAmount,
       _relatedProducts = relatedProducts,
       _upsellProducts = upsellProducts,
       _crosssellProducts = crosssellProducts,
       _associatedProducts = associatedProducts,
       _categories = categories;

  factory _$ProductsItemsDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductsItemsDTOImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String sku;
  @override
  @JsonKey(name: 'type_id')
  final String typeId;
  @override
  final String? upc;
  @override
  final int? marca;
  @override
  @JsonKey(name: 'brand_name')
  final String? brandName;
  @override
  @JsonKey(name: 'min_sale_qty')
  final double minSaleQty;
  @override
  @JsonKey()
  final double margin;
  @override
  final String? uid;
  @override
  @JsonKey(name: 'url_key')
  final String? urlKey;
  @override
  @JsonKey(name: 'special_price')
  final double? specialPrice;
  @override
  @JsonKey(name: 'catalog_extended')
  final int isCatalogExtended;
  @override
  final ProductsDescriptionDTO? description;
  @override
  final ProductsImageDTO image;
  @override
  final String? tags;
  final List<ProductsMediaGalleryDTO> _mediaGallery;
  @override
  @JsonKey(name: 'media_gallery')
  List<ProductsMediaGalleryDTO> get mediaGallery {
    if (_mediaGallery is EqualUnmodifiableListView) return _mediaGallery;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_mediaGallery);
  }

  final List<ProductsVariantsDTO> _variants;
  @override
  @JsonKey()
  List<ProductsVariantsDTO> get variants {
    if (_variants is EqualUnmodifiableListView) return _variants;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_variants);
  }

  @override
  @JsonKey(name: 'small_image')
  final ProductsImageDTO? smallImage;
  final List<RibbonsProductsDTO> _ribbons;
  @override
  @JsonKey()
  List<RibbonsProductsDTO> get ribbons {
    if (_ribbons is EqualUnmodifiableListView) return _ribbons;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_ribbons);
  }

  @override
  @JsonKey(name: 'rating_summary')
  final int? ratingSummary;
  @override
  @JsonKey(name: 'review_count')
  final int? reviewCount;
  final List<TaxAmountDTO> _taxAmount;
  @override
  @JsonKey(name: 'tax_amount')
  List<TaxAmountDTO> get taxAmount {
    if (_taxAmount is EqualUnmodifiableListView) return _taxAmount;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_taxAmount);
  }

  @override
  @JsonKey(name: 'price_range')
  final ProductsPriceRangeDTO? priceRange;
  @override
  @JsonKey(name: 'sales_unit_of_measure')
  final String? salesUnitOfMeasure;
  @override
  @JsonKey(name: 'stock_status')
  final String? stockStatus;
  final List<ProductsRelatedProductsDTO> _relatedProducts;
  @override
  @JsonKey(name: 'related_products')
  List<ProductsRelatedProductsDTO> get relatedProducts {
    if (_relatedProducts is EqualUnmodifiableListView) return _relatedProducts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_relatedProducts);
  }

  final List<ProductsRelatedProductsDTO> _upsellProducts;
  @override
  @JsonKey(name: 'upsell_products')
  List<ProductsRelatedProductsDTO> get upsellProducts {
    if (_upsellProducts is EqualUnmodifiableListView) return _upsellProducts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_upsellProducts);
  }

  final List<ProductsRelatedProductsDTO> _crosssellProducts;
  @override
  @JsonKey(name: 'crosssell_products')
  List<ProductsRelatedProductsDTO> get crosssellProducts {
    if (_crosssellProducts is EqualUnmodifiableListView)
      return _crosssellProducts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_crosssellProducts);
  }

  @override
  @JsonKey(name: 'short_description')
  final ProductsDescriptionDTO? shortDescription;
  final List<ProductsItemsDTO> _associatedProducts;
  @override
  @JsonKey()
  List<ProductsItemsDTO> get associatedProducts {
    if (_associatedProducts is EqualUnmodifiableListView)
      return _associatedProducts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_associatedProducts);
  }

  final List<ProductsCategoryDTO> _categories;
  @override
  @JsonKey()
  List<ProductsCategoryDTO> get categories {
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categories);
  }

  @override
  String toString() {
    return 'ProductsItemsDTO(id: $id, name: $name, sku: $sku, typeId: $typeId, upc: $upc, marca: $marca, brandName: $brandName, minSaleQty: $minSaleQty, margin: $margin, uid: $uid, urlKey: $urlKey, specialPrice: $specialPrice, isCatalogExtended: $isCatalogExtended, description: $description, image: $image, tags: $tags, mediaGallery: $mediaGallery, variants: $variants, smallImage: $smallImage, ribbons: $ribbons, ratingSummary: $ratingSummary, reviewCount: $reviewCount, taxAmount: $taxAmount, priceRange: $priceRange, salesUnitOfMeasure: $salesUnitOfMeasure, stockStatus: $stockStatus, relatedProducts: $relatedProducts, upsellProducts: $upsellProducts, crosssellProducts: $crosssellProducts, shortDescription: $shortDescription, associatedProducts: $associatedProducts, categories: $categories)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductsItemsDTOImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.sku, sku) || other.sku == sku) &&
            (identical(other.typeId, typeId) || other.typeId == typeId) &&
            (identical(other.upc, upc) || other.upc == upc) &&
            (identical(other.marca, marca) || other.marca == marca) &&
            (identical(other.brandName, brandName) ||
                other.brandName == brandName) &&
            (identical(other.minSaleQty, minSaleQty) ||
                other.minSaleQty == minSaleQty) &&
            (identical(other.margin, margin) || other.margin == margin) &&
            (identical(other.uid, uid) || other.uid == uid) &&
            (identical(other.urlKey, urlKey) || other.urlKey == urlKey) &&
            (identical(other.specialPrice, specialPrice) ||
                other.specialPrice == specialPrice) &&
            (identical(other.isCatalogExtended, isCatalogExtended) ||
                other.isCatalogExtended == isCatalogExtended) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.tags, tags) || other.tags == tags) &&
            const DeepCollectionEquality().equals(
              other._mediaGallery,
              _mediaGallery,
            ) &&
            const DeepCollectionEquality().equals(other._variants, _variants) &&
            (identical(other.smallImage, smallImage) ||
                other.smallImage == smallImage) &&
            const DeepCollectionEquality().equals(other._ribbons, _ribbons) &&
            (identical(other.ratingSummary, ratingSummary) ||
                other.ratingSummary == ratingSummary) &&
            (identical(other.reviewCount, reviewCount) ||
                other.reviewCount == reviewCount) &&
            const DeepCollectionEquality().equals(
              other._taxAmount,
              _taxAmount,
            ) &&
            (identical(other.priceRange, priceRange) ||
                other.priceRange == priceRange) &&
            (identical(other.salesUnitOfMeasure, salesUnitOfMeasure) ||
                other.salesUnitOfMeasure == salesUnitOfMeasure) &&
            (identical(other.stockStatus, stockStatus) ||
                other.stockStatus == stockStatus) &&
            const DeepCollectionEquality().equals(
              other._relatedProducts,
              _relatedProducts,
            ) &&
            const DeepCollectionEquality().equals(
              other._upsellProducts,
              _upsellProducts,
            ) &&
            const DeepCollectionEquality().equals(
              other._crosssellProducts,
              _crosssellProducts,
            ) &&
            (identical(other.shortDescription, shortDescription) ||
                other.shortDescription == shortDescription) &&
            const DeepCollectionEquality().equals(
              other._associatedProducts,
              _associatedProducts,
            ) &&
            const DeepCollectionEquality().equals(
              other._categories,
              _categories,
            ));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
    runtimeType,
    id,
    name,
    sku,
    typeId,
    upc,
    marca,
    brandName,
    minSaleQty,
    margin,
    uid,
    urlKey,
    specialPrice,
    isCatalogExtended,
    description,
    image,
    tags,
    const DeepCollectionEquality().hash(_mediaGallery),
    const DeepCollectionEquality().hash(_variants),
    smallImage,
    const DeepCollectionEquality().hash(_ribbons),
    ratingSummary,
    reviewCount,
    const DeepCollectionEquality().hash(_taxAmount),
    priceRange,
    salesUnitOfMeasure,
    stockStatus,
    const DeepCollectionEquality().hash(_relatedProducts),
    const DeepCollectionEquality().hash(_upsellProducts),
    const DeepCollectionEquality().hash(_crosssellProducts),
    shortDescription,
    const DeepCollectionEquality().hash(_associatedProducts),
    const DeepCollectionEquality().hash(_categories),
  ]);

  /// Create a copy of ProductsItemsDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductsItemsDTOImplCopyWith<_$ProductsItemsDTOImpl> get copyWith =>
      __$$ProductsItemsDTOImplCopyWithImpl<_$ProductsItemsDTOImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductsItemsDTOImplToJson(this);
  }
}

abstract class _ProductsItemsDTO implements ProductsItemsDTO {
  const factory _ProductsItemsDTO({
    required final int id,
    required final String name,
    required final String sku,
    @JsonKey(name: 'type_id') required final String typeId,
    final String? upc,
    final int? marca,
    @JsonKey(name: 'brand_name') final String? brandName,
    @JsonKey(name: 'min_sale_qty') required final double minSaleQty,
    final double margin,
    final String? uid,
    @JsonKey(name: 'url_key') final String? urlKey,
    @JsonKey(name: 'special_price') final double? specialPrice,
    @JsonKey(name: 'catalog_extended') final int isCatalogExtended,
    final ProductsDescriptionDTO? description,
    required final ProductsImageDTO image,
    final String? tags,
    @JsonKey(name: 'media_gallery')
    required final List<ProductsMediaGalleryDTO> mediaGallery,
    final List<ProductsVariantsDTO> variants,
    @JsonKey(name: 'small_image') final ProductsImageDTO? smallImage,
    final List<RibbonsProductsDTO> ribbons,
    @JsonKey(name: 'rating_summary') final int? ratingSummary,
    @JsonKey(name: 'review_count') final int? reviewCount,
    @JsonKey(name: 'tax_amount') final List<TaxAmountDTO> taxAmount,
    @JsonKey(name: 'price_range') final ProductsPriceRangeDTO? priceRange,
    @JsonKey(name: 'sales_unit_of_measure') final String? salesUnitOfMeasure,
    @JsonKey(name: 'stock_status') final String? stockStatus,
    @JsonKey(name: 'related_products')
    final List<ProductsRelatedProductsDTO> relatedProducts,
    @JsonKey(name: 'upsell_products')
    final List<ProductsRelatedProductsDTO> upsellProducts,
    @JsonKey(name: 'crosssell_products')
    final List<ProductsRelatedProductsDTO> crosssellProducts,
    @JsonKey(name: 'short_description')
    final ProductsDescriptionDTO? shortDescription,
    final List<ProductsItemsDTO> associatedProducts,
    final List<ProductsCategoryDTO> categories,
  }) = _$ProductsItemsDTOImpl;

  factory _ProductsItemsDTO.fromJson(Map<String, dynamic> json) =
      _$ProductsItemsDTOImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get sku;
  @override
  @JsonKey(name: 'type_id')
  String get typeId;
  @override
  String? get upc;
  @override
  int? get marca;
  @override
  @JsonKey(name: 'brand_name')
  String? get brandName;
  @override
  @JsonKey(name: 'min_sale_qty')
  double get minSaleQty;
  @override
  double get margin;
  @override
  String? get uid;
  @override
  @JsonKey(name: 'url_key')
  String? get urlKey;
  @override
  @JsonKey(name: 'special_price')
  double? get specialPrice;
  @override
  @JsonKey(name: 'catalog_extended')
  int get isCatalogExtended;
  @override
  ProductsDescriptionDTO? get description;
  @override
  ProductsImageDTO get image;
  @override
  String? get tags;
  @override
  @JsonKey(name: 'media_gallery')
  List<ProductsMediaGalleryDTO> get mediaGallery;
  @override
  List<ProductsVariantsDTO> get variants;
  @override
  @JsonKey(name: 'small_image')
  ProductsImageDTO? get smallImage;
  @override
  List<RibbonsProductsDTO> get ribbons;
  @override
  @JsonKey(name: 'rating_summary')
  int? get ratingSummary;
  @override
  @JsonKey(name: 'review_count')
  int? get reviewCount;
  @override
  @JsonKey(name: 'tax_amount')
  List<TaxAmountDTO> get taxAmount;
  @override
  @JsonKey(name: 'price_range')
  ProductsPriceRangeDTO? get priceRange;
  @override
  @JsonKey(name: 'sales_unit_of_measure')
  String? get salesUnitOfMeasure;
  @override
  @JsonKey(name: 'stock_status')
  String? get stockStatus;
  @override
  @JsonKey(name: 'related_products')
  List<ProductsRelatedProductsDTO> get relatedProducts;
  @override
  @JsonKey(name: 'upsell_products')
  List<ProductsRelatedProductsDTO> get upsellProducts;
  @override
  @JsonKey(name: 'crosssell_products')
  List<ProductsRelatedProductsDTO> get crosssellProducts;
  @override
  @JsonKey(name: 'short_description')
  ProductsDescriptionDTO? get shortDescription;
  @override
  List<ProductsItemsDTO> get associatedProducts;
  @override
  List<ProductsCategoryDTO> get categories;

  /// Create a copy of ProductsItemsDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductsItemsDTOImplCopyWith<_$ProductsItemsDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TaxAmountDTO _$TaxAmountDTOFromJson(Map<String, dynamic> json) {
  return _TaxAmountDTO.fromJson(json);
}

/// @nodoc
mixin _$TaxAmountDTO {
  int get id => throw _privateConstructorUsedError;
  double get value => throw _privateConstructorUsedError;

  /// Serializes this TaxAmountDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TaxAmountDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TaxAmountDTOCopyWith<TaxAmountDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaxAmountDTOCopyWith<$Res> {
  factory $TaxAmountDTOCopyWith(
    TaxAmountDTO value,
    $Res Function(TaxAmountDTO) then,
  ) = _$TaxAmountDTOCopyWithImpl<$Res, TaxAmountDTO>;
  @useResult
  $Res call({int id, double value});
}

/// @nodoc
class _$TaxAmountDTOCopyWithImpl<$Res, $Val extends TaxAmountDTO>
    implements $TaxAmountDTOCopyWith<$Res> {
  _$TaxAmountDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TaxAmountDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? id = null, Object? value = null}) {
    return _then(
      _value.copyWith(
            id:
                null == id
                    ? _value.id
                    : id // ignore: cast_nullable_to_non_nullable
                        as int,
            value:
                null == value
                    ? _value.value
                    : value // ignore: cast_nullable_to_non_nullable
                        as double,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$TaxAmountDTOImplCopyWith<$Res>
    implements $TaxAmountDTOCopyWith<$Res> {
  factory _$$TaxAmountDTOImplCopyWith(
    _$TaxAmountDTOImpl value,
    $Res Function(_$TaxAmountDTOImpl) then,
  ) = __$$TaxAmountDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, double value});
}

/// @nodoc
class __$$TaxAmountDTOImplCopyWithImpl<$Res>
    extends _$TaxAmountDTOCopyWithImpl<$Res, _$TaxAmountDTOImpl>
    implements _$$TaxAmountDTOImplCopyWith<$Res> {
  __$$TaxAmountDTOImplCopyWithImpl(
    _$TaxAmountDTOImpl _value,
    $Res Function(_$TaxAmountDTOImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TaxAmountDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? id = null, Object? value = null}) {
    return _then(
      _$TaxAmountDTOImpl(
        id:
            null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                    as int,
        value:
            null == value
                ? _value.value
                : value // ignore: cast_nullable_to_non_nullable
                    as double,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$TaxAmountDTOImpl implements _TaxAmountDTO {
  const _$TaxAmountDTOImpl({required this.id, required this.value});

  factory _$TaxAmountDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$TaxAmountDTOImplFromJson(json);

  @override
  final int id;
  @override
  final double value;

  @override
  String toString() {
    return 'TaxAmountDTO(id: $id, value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TaxAmountDTOImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, value);

  /// Create a copy of TaxAmountDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TaxAmountDTOImplCopyWith<_$TaxAmountDTOImpl> get copyWith =>
      __$$TaxAmountDTOImplCopyWithImpl<_$TaxAmountDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TaxAmountDTOImplToJson(this);
  }
}

abstract class _TaxAmountDTO implements TaxAmountDTO {
  const factory _TaxAmountDTO({
    required final int id,
    required final double value,
  }) = _$TaxAmountDTOImpl;

  factory _TaxAmountDTO.fromJson(Map<String, dynamic> json) =
      _$TaxAmountDTOImpl.fromJson;

  @override
  int get id;
  @override
  double get value;

  /// Create a copy of TaxAmountDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TaxAmountDTOImplCopyWith<_$TaxAmountDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

RibbonsProductsDTO _$RibbonsProductsDTOFromJson(Map<String, dynamic> json) {
  return _RibbonsProductsDTO.fromJson(json);
}

/// @nodoc
mixin _$RibbonsProductsDTO {
  String get code => throw _privateConstructorUsedError;
  String get color => throw _privateConstructorUsedError;
  String get text => throw _privateConstructorUsedError;

  /// Serializes this RibbonsProductsDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RibbonsProductsDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RibbonsProductsDTOCopyWith<RibbonsProductsDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RibbonsProductsDTOCopyWith<$Res> {
  factory $RibbonsProductsDTOCopyWith(
    RibbonsProductsDTO value,
    $Res Function(RibbonsProductsDTO) then,
  ) = _$RibbonsProductsDTOCopyWithImpl<$Res, RibbonsProductsDTO>;
  @useResult
  $Res call({String code, String color, String text});
}

/// @nodoc
class _$RibbonsProductsDTOCopyWithImpl<$Res, $Val extends RibbonsProductsDTO>
    implements $RibbonsProductsDTOCopyWith<$Res> {
  _$RibbonsProductsDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RibbonsProductsDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? code = null, Object? color = null, Object? text = null}) {
    return _then(
      _value.copyWith(
            code:
                null == code
                    ? _value.code
                    : code // ignore: cast_nullable_to_non_nullable
                        as String,
            color:
                null == color
                    ? _value.color
                    : color // ignore: cast_nullable_to_non_nullable
                        as String,
            text:
                null == text
                    ? _value.text
                    : text // ignore: cast_nullable_to_non_nullable
                        as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$RibbonsProductsDTOImplCopyWith<$Res>
    implements $RibbonsProductsDTOCopyWith<$Res> {
  factory _$$RibbonsProductsDTOImplCopyWith(
    _$RibbonsProductsDTOImpl value,
    $Res Function(_$RibbonsProductsDTOImpl) then,
  ) = __$$RibbonsProductsDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String code, String color, String text});
}

/// @nodoc
class __$$RibbonsProductsDTOImplCopyWithImpl<$Res>
    extends _$RibbonsProductsDTOCopyWithImpl<$Res, _$RibbonsProductsDTOImpl>
    implements _$$RibbonsProductsDTOImplCopyWith<$Res> {
  __$$RibbonsProductsDTOImplCopyWithImpl(
    _$RibbonsProductsDTOImpl _value,
    $Res Function(_$RibbonsProductsDTOImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of RibbonsProductsDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? code = null, Object? color = null, Object? text = null}) {
    return _then(
      _$RibbonsProductsDTOImpl(
        code:
            null == code
                ? _value.code
                : code // ignore: cast_nullable_to_non_nullable
                    as String,
        color:
            null == color
                ? _value.color
                : color // ignore: cast_nullable_to_non_nullable
                    as String,
        text:
            null == text
                ? _value.text
                : text // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$RibbonsProductsDTOImpl implements _RibbonsProductsDTO {
  const _$RibbonsProductsDTOImpl({
    required this.code,
    required this.color,
    required this.text,
  });

  factory _$RibbonsProductsDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$RibbonsProductsDTOImplFromJson(json);

  @override
  final String code;
  @override
  final String color;
  @override
  final String text;

  @override
  String toString() {
    return 'RibbonsProductsDTO(code: $code, color: $color, text: $text)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RibbonsProductsDTOImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.text, text) || other.text == text));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, code, color, text);

  /// Create a copy of RibbonsProductsDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RibbonsProductsDTOImplCopyWith<_$RibbonsProductsDTOImpl> get copyWith =>
      __$$RibbonsProductsDTOImplCopyWithImpl<_$RibbonsProductsDTOImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$RibbonsProductsDTOImplToJson(this);
  }
}

abstract class _RibbonsProductsDTO implements RibbonsProductsDTO {
  const factory _RibbonsProductsDTO({
    required final String code,
    required final String color,
    required final String text,
  }) = _$RibbonsProductsDTOImpl;

  factory _RibbonsProductsDTO.fromJson(Map<String, dynamic> json) =
      _$RibbonsProductsDTOImpl.fromJson;

  @override
  String get code;
  @override
  String get color;
  @override
  String get text;

  /// Create a copy of RibbonsProductsDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RibbonsProductsDTOImplCopyWith<_$RibbonsProductsDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ProductsRelatedProductsDTO _$ProductsRelatedProductsDTOFromJson(
  Map<String, dynamic> json,
) {
  return _ProductsRelatedProductsDTO.fromJson(json);
}

/// @nodoc
mixin _$ProductsRelatedProductsDTO {
  String get name => throw _privateConstructorUsedError;
  String get uid => throw _privateConstructorUsedError;
  String get sku => throw _privateConstructorUsedError;

  /// Serializes this ProductsRelatedProductsDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProductsRelatedProductsDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductsRelatedProductsDTOCopyWith<ProductsRelatedProductsDTO>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductsRelatedProductsDTOCopyWith<$Res> {
  factory $ProductsRelatedProductsDTOCopyWith(
    ProductsRelatedProductsDTO value,
    $Res Function(ProductsRelatedProductsDTO) then,
  ) =
      _$ProductsRelatedProductsDTOCopyWithImpl<
        $Res,
        ProductsRelatedProductsDTO
      >;
  @useResult
  $Res call({String name, String uid, String sku});
}

/// @nodoc
class _$ProductsRelatedProductsDTOCopyWithImpl<
  $Res,
  $Val extends ProductsRelatedProductsDTO
>
    implements $ProductsRelatedProductsDTOCopyWith<$Res> {
  _$ProductsRelatedProductsDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductsRelatedProductsDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? name = null, Object? uid = null, Object? sku = null}) {
    return _then(
      _value.copyWith(
            name:
                null == name
                    ? _value.name
                    : name // ignore: cast_nullable_to_non_nullable
                        as String,
            uid:
                null == uid
                    ? _value.uid
                    : uid // ignore: cast_nullable_to_non_nullable
                        as String,
            sku:
                null == sku
                    ? _value.sku
                    : sku // ignore: cast_nullable_to_non_nullable
                        as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ProductsRelatedProductsDTOImplCopyWith<$Res>
    implements $ProductsRelatedProductsDTOCopyWith<$Res> {
  factory _$$ProductsRelatedProductsDTOImplCopyWith(
    _$ProductsRelatedProductsDTOImpl value,
    $Res Function(_$ProductsRelatedProductsDTOImpl) then,
  ) = __$$ProductsRelatedProductsDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String uid, String sku});
}

/// @nodoc
class __$$ProductsRelatedProductsDTOImplCopyWithImpl<$Res>
    extends
        _$ProductsRelatedProductsDTOCopyWithImpl<
          $Res,
          _$ProductsRelatedProductsDTOImpl
        >
    implements _$$ProductsRelatedProductsDTOImplCopyWith<$Res> {
  __$$ProductsRelatedProductsDTOImplCopyWithImpl(
    _$ProductsRelatedProductsDTOImpl _value,
    $Res Function(_$ProductsRelatedProductsDTOImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ProductsRelatedProductsDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? name = null, Object? uid = null, Object? sku = null}) {
    return _then(
      _$ProductsRelatedProductsDTOImpl(
        name:
            null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                    as String,
        uid:
            null == uid
                ? _value.uid
                : uid // ignore: cast_nullable_to_non_nullable
                    as String,
        sku:
            null == sku
                ? _value.sku
                : sku // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductsRelatedProductsDTOImpl implements _ProductsRelatedProductsDTO {
  const _$ProductsRelatedProductsDTOImpl({
    required this.name,
    required this.uid,
    required this.sku,
  });

  factory _$ProductsRelatedProductsDTOImpl.fromJson(
    Map<String, dynamic> json,
  ) => _$$ProductsRelatedProductsDTOImplFromJson(json);

  @override
  final String name;
  @override
  final String uid;
  @override
  final String sku;

  @override
  String toString() {
    return 'ProductsRelatedProductsDTO(name: $name, uid: $uid, sku: $sku)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductsRelatedProductsDTOImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.uid, uid) || other.uid == uid) &&
            (identical(other.sku, sku) || other.sku == sku));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, uid, sku);

  /// Create a copy of ProductsRelatedProductsDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductsRelatedProductsDTOImplCopyWith<_$ProductsRelatedProductsDTOImpl>
  get copyWith => __$$ProductsRelatedProductsDTOImplCopyWithImpl<
    _$ProductsRelatedProductsDTOImpl
  >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductsRelatedProductsDTOImplToJson(this);
  }
}

abstract class _ProductsRelatedProductsDTO
    implements ProductsRelatedProductsDTO {
  const factory _ProductsRelatedProductsDTO({
    required final String name,
    required final String uid,
    required final String sku,
  }) = _$ProductsRelatedProductsDTOImpl;

  factory _ProductsRelatedProductsDTO.fromJson(Map<String, dynamic> json) =
      _$ProductsRelatedProductsDTOImpl.fromJson;

  @override
  String get name;
  @override
  String get uid;
  @override
  String get sku;

  /// Create a copy of ProductsRelatedProductsDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductsRelatedProductsDTOImplCopyWith<_$ProductsRelatedProductsDTOImpl>
  get copyWith => throw _privateConstructorUsedError;
}

ProductsDescriptionDTO _$ProductsDescriptionDTOFromJson(
  Map<String, dynamic> json,
) {
  return _ProductsDescriptionDTO.fromJson(json);
}

/// @nodoc
mixin _$ProductsDescriptionDTO {
  String get html => throw _privateConstructorUsedError;

  /// Serializes this ProductsDescriptionDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProductsDescriptionDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductsDescriptionDTOCopyWith<ProductsDescriptionDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductsDescriptionDTOCopyWith<$Res> {
  factory $ProductsDescriptionDTOCopyWith(
    ProductsDescriptionDTO value,
    $Res Function(ProductsDescriptionDTO) then,
  ) = _$ProductsDescriptionDTOCopyWithImpl<$Res, ProductsDescriptionDTO>;
  @useResult
  $Res call({String html});
}

/// @nodoc
class _$ProductsDescriptionDTOCopyWithImpl<
  $Res,
  $Val extends ProductsDescriptionDTO
>
    implements $ProductsDescriptionDTOCopyWith<$Res> {
  _$ProductsDescriptionDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductsDescriptionDTO
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
abstract class _$$ProductsDescriptionDTOImplCopyWith<$Res>
    implements $ProductsDescriptionDTOCopyWith<$Res> {
  factory _$$ProductsDescriptionDTOImplCopyWith(
    _$ProductsDescriptionDTOImpl value,
    $Res Function(_$ProductsDescriptionDTOImpl) then,
  ) = __$$ProductsDescriptionDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String html});
}

/// @nodoc
class __$$ProductsDescriptionDTOImplCopyWithImpl<$Res>
    extends
        _$ProductsDescriptionDTOCopyWithImpl<$Res, _$ProductsDescriptionDTOImpl>
    implements _$$ProductsDescriptionDTOImplCopyWith<$Res> {
  __$$ProductsDescriptionDTOImplCopyWithImpl(
    _$ProductsDescriptionDTOImpl _value,
    $Res Function(_$ProductsDescriptionDTOImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ProductsDescriptionDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? html = null}) {
    return _then(
      _$ProductsDescriptionDTOImpl(
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
class _$ProductsDescriptionDTOImpl implements _ProductsDescriptionDTO {
  const _$ProductsDescriptionDTOImpl({required this.html});

  factory _$ProductsDescriptionDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductsDescriptionDTOImplFromJson(json);

  @override
  final String html;

  @override
  String toString() {
    return 'ProductsDescriptionDTO(html: $html)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductsDescriptionDTOImpl &&
            (identical(other.html, html) || other.html == html));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, html);

  /// Create a copy of ProductsDescriptionDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductsDescriptionDTOImplCopyWith<_$ProductsDescriptionDTOImpl>
  get copyWith =>
      __$$ProductsDescriptionDTOImplCopyWithImpl<_$ProductsDescriptionDTOImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductsDescriptionDTOImplToJson(this);
  }
}

abstract class _ProductsDescriptionDTO implements ProductsDescriptionDTO {
  const factory _ProductsDescriptionDTO({required final String html}) =
      _$ProductsDescriptionDTOImpl;

  factory _ProductsDescriptionDTO.fromJson(Map<String, dynamic> json) =
      _$ProductsDescriptionDTOImpl.fromJson;

  @override
  String get html;

  /// Create a copy of ProductsDescriptionDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductsDescriptionDTOImplCopyWith<_$ProductsDescriptionDTOImpl>
  get copyWith => throw _privateConstructorUsedError;
}

ProductsImageDTO _$ProductsImageDTOFromJson(Map<String, dynamic> json) {
  return _ProductsImageDTO.fromJson(json);
}

/// @nodoc
mixin _$ProductsImageDTO {
  String get label => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;

  /// Serializes this ProductsImageDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProductsImageDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductsImageDTOCopyWith<ProductsImageDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductsImageDTOCopyWith<$Res> {
  factory $ProductsImageDTOCopyWith(
    ProductsImageDTO value,
    $Res Function(ProductsImageDTO) then,
  ) = _$ProductsImageDTOCopyWithImpl<$Res, ProductsImageDTO>;
  @useResult
  $Res call({String label, String? url});
}

/// @nodoc
class _$ProductsImageDTOCopyWithImpl<$Res, $Val extends ProductsImageDTO>
    implements $ProductsImageDTOCopyWith<$Res> {
  _$ProductsImageDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductsImageDTO
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
abstract class _$$ProductsImageDTOImplCopyWith<$Res>
    implements $ProductsImageDTOCopyWith<$Res> {
  factory _$$ProductsImageDTOImplCopyWith(
    _$ProductsImageDTOImpl value,
    $Res Function(_$ProductsImageDTOImpl) then,
  ) = __$$ProductsImageDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String label, String? url});
}

/// @nodoc
class __$$ProductsImageDTOImplCopyWithImpl<$Res>
    extends _$ProductsImageDTOCopyWithImpl<$Res, _$ProductsImageDTOImpl>
    implements _$$ProductsImageDTOImplCopyWith<$Res> {
  __$$ProductsImageDTOImplCopyWithImpl(
    _$ProductsImageDTOImpl _value,
    $Res Function(_$ProductsImageDTOImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ProductsImageDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? label = null, Object? url = freezed}) {
    return _then(
      _$ProductsImageDTOImpl(
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
class _$ProductsImageDTOImpl implements _ProductsImageDTO {
  const _$ProductsImageDTOImpl({required this.label, this.url});

  factory _$ProductsImageDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductsImageDTOImplFromJson(json);

  @override
  final String label;
  @override
  final String? url;

  @override
  String toString() {
    return 'ProductsImageDTO(label: $label, url: $url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductsImageDTOImpl &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, label, url);

  /// Create a copy of ProductsImageDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductsImageDTOImplCopyWith<_$ProductsImageDTOImpl> get copyWith =>
      __$$ProductsImageDTOImplCopyWithImpl<_$ProductsImageDTOImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductsImageDTOImplToJson(this);
  }
}

abstract class _ProductsImageDTO implements ProductsImageDTO {
  const factory _ProductsImageDTO({
    required final String label,
    final String? url,
  }) = _$ProductsImageDTOImpl;

  factory _ProductsImageDTO.fromJson(Map<String, dynamic> json) =
      _$ProductsImageDTOImpl.fromJson;

  @override
  String get label;
  @override
  String? get url;

  /// Create a copy of ProductsImageDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductsImageDTOImplCopyWith<_$ProductsImageDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ProductsMediaGalleryDTO _$ProductsMediaGalleryDTOFromJson(
  Map<String, dynamic> json,
) {
  return _ProductsMediaGalleryDTO.fromJson(json);
}

/// @nodoc
mixin _$ProductsMediaGalleryDTO {
  String? get url => throw _privateConstructorUsedError;
  String? get label => throw _privateConstructorUsedError;
  int get position => throw _privateConstructorUsedError;
  bool get disabled => throw _privateConstructorUsedError;

  /// Serializes this ProductsMediaGalleryDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProductsMediaGalleryDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductsMediaGalleryDTOCopyWith<ProductsMediaGalleryDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductsMediaGalleryDTOCopyWith<$Res> {
  factory $ProductsMediaGalleryDTOCopyWith(
    ProductsMediaGalleryDTO value,
    $Res Function(ProductsMediaGalleryDTO) then,
  ) = _$ProductsMediaGalleryDTOCopyWithImpl<$Res, ProductsMediaGalleryDTO>;
  @useResult
  $Res call({String? url, String? label, int position, bool disabled});
}

/// @nodoc
class _$ProductsMediaGalleryDTOCopyWithImpl<
  $Res,
  $Val extends ProductsMediaGalleryDTO
>
    implements $ProductsMediaGalleryDTOCopyWith<$Res> {
  _$ProductsMediaGalleryDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductsMediaGalleryDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = freezed,
    Object? label = freezed,
    Object? position = null,
    Object? disabled = null,
  }) {
    return _then(
      _value.copyWith(
            url:
                freezed == url
                    ? _value.url
                    : url // ignore: cast_nullable_to_non_nullable
                        as String?,
            label:
                freezed == label
                    ? _value.label
                    : label // ignore: cast_nullable_to_non_nullable
                        as String?,
            position:
                null == position
                    ? _value.position
                    : position // ignore: cast_nullable_to_non_nullable
                        as int,
            disabled:
                null == disabled
                    ? _value.disabled
                    : disabled // ignore: cast_nullable_to_non_nullable
                        as bool,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ProductsMediaGalleryDTOImplCopyWith<$Res>
    implements $ProductsMediaGalleryDTOCopyWith<$Res> {
  factory _$$ProductsMediaGalleryDTOImplCopyWith(
    _$ProductsMediaGalleryDTOImpl value,
    $Res Function(_$ProductsMediaGalleryDTOImpl) then,
  ) = __$$ProductsMediaGalleryDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? url, String? label, int position, bool disabled});
}

/// @nodoc
class __$$ProductsMediaGalleryDTOImplCopyWithImpl<$Res>
    extends
        _$ProductsMediaGalleryDTOCopyWithImpl<
          $Res,
          _$ProductsMediaGalleryDTOImpl
        >
    implements _$$ProductsMediaGalleryDTOImplCopyWith<$Res> {
  __$$ProductsMediaGalleryDTOImplCopyWithImpl(
    _$ProductsMediaGalleryDTOImpl _value,
    $Res Function(_$ProductsMediaGalleryDTOImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ProductsMediaGalleryDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = freezed,
    Object? label = freezed,
    Object? position = null,
    Object? disabled = null,
  }) {
    return _then(
      _$ProductsMediaGalleryDTOImpl(
        url:
            freezed == url
                ? _value.url
                : url // ignore: cast_nullable_to_non_nullable
                    as String?,
        label:
            freezed == label
                ? _value.label
                : label // ignore: cast_nullable_to_non_nullable
                    as String?,
        position:
            null == position
                ? _value.position
                : position // ignore: cast_nullable_to_non_nullable
                    as int,
        disabled:
            null == disabled
                ? _value.disabled
                : disabled // ignore: cast_nullable_to_non_nullable
                    as bool,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductsMediaGalleryDTOImpl implements _ProductsMediaGalleryDTO {
  const _$ProductsMediaGalleryDTOImpl({
    this.url,
    this.label,
    required this.position,
    required this.disabled,
  });

  factory _$ProductsMediaGalleryDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductsMediaGalleryDTOImplFromJson(json);

  @override
  final String? url;
  @override
  final String? label;
  @override
  final int position;
  @override
  final bool disabled;

  @override
  String toString() {
    return 'ProductsMediaGalleryDTO(url: $url, label: $label, position: $position, disabled: $disabled)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductsMediaGalleryDTOImpl &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.position, position) ||
                other.position == position) &&
            (identical(other.disabled, disabled) ||
                other.disabled == disabled));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, url, label, position, disabled);

  /// Create a copy of ProductsMediaGalleryDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductsMediaGalleryDTOImplCopyWith<_$ProductsMediaGalleryDTOImpl>
  get copyWith => __$$ProductsMediaGalleryDTOImplCopyWithImpl<
    _$ProductsMediaGalleryDTOImpl
  >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductsMediaGalleryDTOImplToJson(this);
  }
}

abstract class _ProductsMediaGalleryDTO implements ProductsMediaGalleryDTO {
  const factory _ProductsMediaGalleryDTO({
    final String? url,
    final String? label,
    required final int position,
    required final bool disabled,
  }) = _$ProductsMediaGalleryDTOImpl;

  factory _ProductsMediaGalleryDTO.fromJson(Map<String, dynamic> json) =
      _$ProductsMediaGalleryDTOImpl.fromJson;

  @override
  String? get url;
  @override
  String? get label;
  @override
  int get position;
  @override
  bool get disabled;

  /// Create a copy of ProductsMediaGalleryDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductsMediaGalleryDTOImplCopyWith<_$ProductsMediaGalleryDTOImpl>
  get copyWith => throw _privateConstructorUsedError;
}

ProductsPriceRangeDTO _$ProductsPriceRangeDTOFromJson(
  Map<String, dynamic> json,
) {
  return _ProductsPriceRangeDTO.fromJson(json);
}

/// @nodoc
mixin _$ProductsPriceRangeDTO {
  @JsonKey(name: 'minimum_price')
  ProductsOptionPriceDTO? get minimumPrice =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'maximum_price')
  ProductsOptionPriceDTO? get maximumPrice =>
      throw _privateConstructorUsedError;

  /// Serializes this ProductsPriceRangeDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProductsPriceRangeDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductsPriceRangeDTOCopyWith<ProductsPriceRangeDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductsPriceRangeDTOCopyWith<$Res> {
  factory $ProductsPriceRangeDTOCopyWith(
    ProductsPriceRangeDTO value,
    $Res Function(ProductsPriceRangeDTO) then,
  ) = _$ProductsPriceRangeDTOCopyWithImpl<$Res, ProductsPriceRangeDTO>;
  @useResult
  $Res call({
    @JsonKey(name: 'minimum_price') ProductsOptionPriceDTO? minimumPrice,
    @JsonKey(name: 'maximum_price') ProductsOptionPriceDTO? maximumPrice,
  });

  $ProductsOptionPriceDTOCopyWith<$Res>? get minimumPrice;
  $ProductsOptionPriceDTOCopyWith<$Res>? get maximumPrice;
}

/// @nodoc
class _$ProductsPriceRangeDTOCopyWithImpl<
  $Res,
  $Val extends ProductsPriceRangeDTO
>
    implements $ProductsPriceRangeDTOCopyWith<$Res> {
  _$ProductsPriceRangeDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductsPriceRangeDTO
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
                        as ProductsOptionPriceDTO?,
            maximumPrice:
                freezed == maximumPrice
                    ? _value.maximumPrice
                    : maximumPrice // ignore: cast_nullable_to_non_nullable
                        as ProductsOptionPriceDTO?,
          )
          as $Val,
    );
  }

  /// Create a copy of ProductsPriceRangeDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProductsOptionPriceDTOCopyWith<$Res>? get minimumPrice {
    if (_value.minimumPrice == null) {
      return null;
    }

    return $ProductsOptionPriceDTOCopyWith<$Res>(_value.minimumPrice!, (value) {
      return _then(_value.copyWith(minimumPrice: value) as $Val);
    });
  }

  /// Create a copy of ProductsPriceRangeDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProductsOptionPriceDTOCopyWith<$Res>? get maximumPrice {
    if (_value.maximumPrice == null) {
      return null;
    }

    return $ProductsOptionPriceDTOCopyWith<$Res>(_value.maximumPrice!, (value) {
      return _then(_value.copyWith(maximumPrice: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProductsPriceRangeDTOImplCopyWith<$Res>
    implements $ProductsPriceRangeDTOCopyWith<$Res> {
  factory _$$ProductsPriceRangeDTOImplCopyWith(
    _$ProductsPriceRangeDTOImpl value,
    $Res Function(_$ProductsPriceRangeDTOImpl) then,
  ) = __$$ProductsPriceRangeDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'minimum_price') ProductsOptionPriceDTO? minimumPrice,
    @JsonKey(name: 'maximum_price') ProductsOptionPriceDTO? maximumPrice,
  });

  @override
  $ProductsOptionPriceDTOCopyWith<$Res>? get minimumPrice;
  @override
  $ProductsOptionPriceDTOCopyWith<$Res>? get maximumPrice;
}

/// @nodoc
class __$$ProductsPriceRangeDTOImplCopyWithImpl<$Res>
    extends
        _$ProductsPriceRangeDTOCopyWithImpl<$Res, _$ProductsPriceRangeDTOImpl>
    implements _$$ProductsPriceRangeDTOImplCopyWith<$Res> {
  __$$ProductsPriceRangeDTOImplCopyWithImpl(
    _$ProductsPriceRangeDTOImpl _value,
    $Res Function(_$ProductsPriceRangeDTOImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ProductsPriceRangeDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? minimumPrice = freezed, Object? maximumPrice = freezed}) {
    return _then(
      _$ProductsPriceRangeDTOImpl(
        minimumPrice:
            freezed == minimumPrice
                ? _value.minimumPrice
                : minimumPrice // ignore: cast_nullable_to_non_nullable
                    as ProductsOptionPriceDTO?,
        maximumPrice:
            freezed == maximumPrice
                ? _value.maximumPrice
                : maximumPrice // ignore: cast_nullable_to_non_nullable
                    as ProductsOptionPriceDTO?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductsPriceRangeDTOImpl implements _ProductsPriceRangeDTO {
  const _$ProductsPriceRangeDTOImpl({
    @JsonKey(name: 'minimum_price') this.minimumPrice,
    @JsonKey(name: 'maximum_price') this.maximumPrice,
  });

  factory _$ProductsPriceRangeDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductsPriceRangeDTOImplFromJson(json);

  @override
  @JsonKey(name: 'minimum_price')
  final ProductsOptionPriceDTO? minimumPrice;
  @override
  @JsonKey(name: 'maximum_price')
  final ProductsOptionPriceDTO? maximumPrice;

  @override
  String toString() {
    return 'ProductsPriceRangeDTO(minimumPrice: $minimumPrice, maximumPrice: $maximumPrice)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductsPriceRangeDTOImpl &&
            (identical(other.minimumPrice, minimumPrice) ||
                other.minimumPrice == minimumPrice) &&
            (identical(other.maximumPrice, maximumPrice) ||
                other.maximumPrice == maximumPrice));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, minimumPrice, maximumPrice);

  /// Create a copy of ProductsPriceRangeDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductsPriceRangeDTOImplCopyWith<_$ProductsPriceRangeDTOImpl>
  get copyWith =>
      __$$ProductsPriceRangeDTOImplCopyWithImpl<_$ProductsPriceRangeDTOImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductsPriceRangeDTOImplToJson(this);
  }
}

abstract class _ProductsPriceRangeDTO implements ProductsPriceRangeDTO {
  const factory _ProductsPriceRangeDTO({
    @JsonKey(name: 'minimum_price') final ProductsOptionPriceDTO? minimumPrice,
    @JsonKey(name: 'maximum_price') final ProductsOptionPriceDTO? maximumPrice,
  }) = _$ProductsPriceRangeDTOImpl;

  factory _ProductsPriceRangeDTO.fromJson(Map<String, dynamic> json) =
      _$ProductsPriceRangeDTOImpl.fromJson;

  @override
  @JsonKey(name: 'minimum_price')
  ProductsOptionPriceDTO? get minimumPrice;
  @override
  @JsonKey(name: 'maximum_price')
  ProductsOptionPriceDTO? get maximumPrice;

  /// Create a copy of ProductsPriceRangeDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductsPriceRangeDTOImplCopyWith<_$ProductsPriceRangeDTOImpl>
  get copyWith => throw _privateConstructorUsedError;
}

ProductsOptionPriceDTO _$ProductsOptionPriceDTOFromJson(
  Map<String, dynamic> json,
) {
  return _ProductsOptionPriceDTO.fromJson(json);
}

/// @nodoc
mixin _$ProductsOptionPriceDTO {
  ProductsDiscountDTO get discount => throw _privateConstructorUsedError;
  @JsonKey(name: 'final_price')
  ProductsDetailPriceDTO get finalPrice => throw _privateConstructorUsedError;
  @JsonKey(name: 'regular_price')
  ProductsDetailPriceDTO get regularPrice => throw _privateConstructorUsedError;

  /// Serializes this ProductsOptionPriceDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProductsOptionPriceDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductsOptionPriceDTOCopyWith<ProductsOptionPriceDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductsOptionPriceDTOCopyWith<$Res> {
  factory $ProductsOptionPriceDTOCopyWith(
    ProductsOptionPriceDTO value,
    $Res Function(ProductsOptionPriceDTO) then,
  ) = _$ProductsOptionPriceDTOCopyWithImpl<$Res, ProductsOptionPriceDTO>;
  @useResult
  $Res call({
    ProductsDiscountDTO discount,
    @JsonKey(name: 'final_price') ProductsDetailPriceDTO finalPrice,
    @JsonKey(name: 'regular_price') ProductsDetailPriceDTO regularPrice,
  });

  $ProductsDiscountDTOCopyWith<$Res> get discount;
  $ProductsDetailPriceDTOCopyWith<$Res> get finalPrice;
  $ProductsDetailPriceDTOCopyWith<$Res> get regularPrice;
}

/// @nodoc
class _$ProductsOptionPriceDTOCopyWithImpl<
  $Res,
  $Val extends ProductsOptionPriceDTO
>
    implements $ProductsOptionPriceDTOCopyWith<$Res> {
  _$ProductsOptionPriceDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductsOptionPriceDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? discount = null,
    Object? finalPrice = null,
    Object? regularPrice = null,
  }) {
    return _then(
      _value.copyWith(
            discount:
                null == discount
                    ? _value.discount
                    : discount // ignore: cast_nullable_to_non_nullable
                        as ProductsDiscountDTO,
            finalPrice:
                null == finalPrice
                    ? _value.finalPrice
                    : finalPrice // ignore: cast_nullable_to_non_nullable
                        as ProductsDetailPriceDTO,
            regularPrice:
                null == regularPrice
                    ? _value.regularPrice
                    : regularPrice // ignore: cast_nullable_to_non_nullable
                        as ProductsDetailPriceDTO,
          )
          as $Val,
    );
  }

  /// Create a copy of ProductsOptionPriceDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProductsDiscountDTOCopyWith<$Res> get discount {
    return $ProductsDiscountDTOCopyWith<$Res>(_value.discount, (value) {
      return _then(_value.copyWith(discount: value) as $Val);
    });
  }

  /// Create a copy of ProductsOptionPriceDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProductsDetailPriceDTOCopyWith<$Res> get finalPrice {
    return $ProductsDetailPriceDTOCopyWith<$Res>(_value.finalPrice, (value) {
      return _then(_value.copyWith(finalPrice: value) as $Val);
    });
  }

  /// Create a copy of ProductsOptionPriceDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProductsDetailPriceDTOCopyWith<$Res> get regularPrice {
    return $ProductsDetailPriceDTOCopyWith<$Res>(_value.regularPrice, (value) {
      return _then(_value.copyWith(regularPrice: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProductsOptionPriceDTOImplCopyWith<$Res>
    implements $ProductsOptionPriceDTOCopyWith<$Res> {
  factory _$$ProductsOptionPriceDTOImplCopyWith(
    _$ProductsOptionPriceDTOImpl value,
    $Res Function(_$ProductsOptionPriceDTOImpl) then,
  ) = __$$ProductsOptionPriceDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    ProductsDiscountDTO discount,
    @JsonKey(name: 'final_price') ProductsDetailPriceDTO finalPrice,
    @JsonKey(name: 'regular_price') ProductsDetailPriceDTO regularPrice,
  });

  @override
  $ProductsDiscountDTOCopyWith<$Res> get discount;
  @override
  $ProductsDetailPriceDTOCopyWith<$Res> get finalPrice;
  @override
  $ProductsDetailPriceDTOCopyWith<$Res> get regularPrice;
}

/// @nodoc
class __$$ProductsOptionPriceDTOImplCopyWithImpl<$Res>
    extends
        _$ProductsOptionPriceDTOCopyWithImpl<$Res, _$ProductsOptionPriceDTOImpl>
    implements _$$ProductsOptionPriceDTOImplCopyWith<$Res> {
  __$$ProductsOptionPriceDTOImplCopyWithImpl(
    _$ProductsOptionPriceDTOImpl _value,
    $Res Function(_$ProductsOptionPriceDTOImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ProductsOptionPriceDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? discount = null,
    Object? finalPrice = null,
    Object? regularPrice = null,
  }) {
    return _then(
      _$ProductsOptionPriceDTOImpl(
        discount:
            null == discount
                ? _value.discount
                : discount // ignore: cast_nullable_to_non_nullable
                    as ProductsDiscountDTO,
        finalPrice:
            null == finalPrice
                ? _value.finalPrice
                : finalPrice // ignore: cast_nullable_to_non_nullable
                    as ProductsDetailPriceDTO,
        regularPrice:
            null == regularPrice
                ? _value.regularPrice
                : regularPrice // ignore: cast_nullable_to_non_nullable
                    as ProductsDetailPriceDTO,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductsOptionPriceDTOImpl implements _ProductsOptionPriceDTO {
  const _$ProductsOptionPriceDTOImpl({
    required this.discount,
    @JsonKey(name: 'final_price') required this.finalPrice,
    @JsonKey(name: 'regular_price') required this.regularPrice,
  });

  factory _$ProductsOptionPriceDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductsOptionPriceDTOImplFromJson(json);

  @override
  final ProductsDiscountDTO discount;
  @override
  @JsonKey(name: 'final_price')
  final ProductsDetailPriceDTO finalPrice;
  @override
  @JsonKey(name: 'regular_price')
  final ProductsDetailPriceDTO regularPrice;

  @override
  String toString() {
    return 'ProductsOptionPriceDTO(discount: $discount, finalPrice: $finalPrice, regularPrice: $regularPrice)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductsOptionPriceDTOImpl &&
            (identical(other.discount, discount) ||
                other.discount == discount) &&
            (identical(other.finalPrice, finalPrice) ||
                other.finalPrice == finalPrice) &&
            (identical(other.regularPrice, regularPrice) ||
                other.regularPrice == regularPrice));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, discount, finalPrice, regularPrice);

  /// Create a copy of ProductsOptionPriceDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductsOptionPriceDTOImplCopyWith<_$ProductsOptionPriceDTOImpl>
  get copyWith =>
      __$$ProductsOptionPriceDTOImplCopyWithImpl<_$ProductsOptionPriceDTOImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductsOptionPriceDTOImplToJson(this);
  }
}

abstract class _ProductsOptionPriceDTO implements ProductsOptionPriceDTO {
  const factory _ProductsOptionPriceDTO({
    required final ProductsDiscountDTO discount,
    @JsonKey(name: 'final_price')
    required final ProductsDetailPriceDTO finalPrice,
    @JsonKey(name: 'regular_price')
    required final ProductsDetailPriceDTO regularPrice,
  }) = _$ProductsOptionPriceDTOImpl;

  factory _ProductsOptionPriceDTO.fromJson(Map<String, dynamic> json) =
      _$ProductsOptionPriceDTOImpl.fromJson;

  @override
  ProductsDiscountDTO get discount;
  @override
  @JsonKey(name: 'final_price')
  ProductsDetailPriceDTO get finalPrice;
  @override
  @JsonKey(name: 'regular_price')
  ProductsDetailPriceDTO get regularPrice;

  /// Create a copy of ProductsOptionPriceDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductsOptionPriceDTOImplCopyWith<_$ProductsOptionPriceDTOImpl>
  get copyWith => throw _privateConstructorUsedError;
}

ProductsDiscountDTO _$ProductsDiscountDTOFromJson(Map<String, dynamic> json) {
  return _ProductsDiscountDTO.fromJson(json);
}

/// @nodoc
mixin _$ProductsDiscountDTO {
  double? get amount => throw _privateConstructorUsedError;
  String? get label => throw _privateConstructorUsedError;

  /// Serializes this ProductsDiscountDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProductsDiscountDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductsDiscountDTOCopyWith<ProductsDiscountDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductsDiscountDTOCopyWith<$Res> {
  factory $ProductsDiscountDTOCopyWith(
    ProductsDiscountDTO value,
    $Res Function(ProductsDiscountDTO) then,
  ) = _$ProductsDiscountDTOCopyWithImpl<$Res, ProductsDiscountDTO>;
  @useResult
  $Res call({double? amount, String? label});
}

/// @nodoc
class _$ProductsDiscountDTOCopyWithImpl<$Res, $Val extends ProductsDiscountDTO>
    implements $ProductsDiscountDTOCopyWith<$Res> {
  _$ProductsDiscountDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductsDiscountDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? amount = freezed, Object? label = freezed}) {
    return _then(
      _value.copyWith(
            amount:
                freezed == amount
                    ? _value.amount
                    : amount // ignore: cast_nullable_to_non_nullable
                        as double?,
            label:
                freezed == label
                    ? _value.label
                    : label // ignore: cast_nullable_to_non_nullable
                        as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ProductsDiscountDTOImplCopyWith<$Res>
    implements $ProductsDiscountDTOCopyWith<$Res> {
  factory _$$ProductsDiscountDTOImplCopyWith(
    _$ProductsDiscountDTOImpl value,
    $Res Function(_$ProductsDiscountDTOImpl) then,
  ) = __$$ProductsDiscountDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double? amount, String? label});
}

/// @nodoc
class __$$ProductsDiscountDTOImplCopyWithImpl<$Res>
    extends _$ProductsDiscountDTOCopyWithImpl<$Res, _$ProductsDiscountDTOImpl>
    implements _$$ProductsDiscountDTOImplCopyWith<$Res> {
  __$$ProductsDiscountDTOImplCopyWithImpl(
    _$ProductsDiscountDTOImpl _value,
    $Res Function(_$ProductsDiscountDTOImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ProductsDiscountDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? amount = freezed, Object? label = freezed}) {
    return _then(
      _$ProductsDiscountDTOImpl(
        amount:
            freezed == amount
                ? _value.amount
                : amount // ignore: cast_nullable_to_non_nullable
                    as double?,
        label:
            freezed == label
                ? _value.label
                : label // ignore: cast_nullable_to_non_nullable
                    as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductsDiscountDTOImpl implements _ProductsDiscountDTO {
  const _$ProductsDiscountDTOImpl({this.amount, this.label});

  factory _$ProductsDiscountDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductsDiscountDTOImplFromJson(json);

  @override
  final double? amount;
  @override
  final String? label;

  @override
  String toString() {
    return 'ProductsDiscountDTO(amount: $amount, label: $label)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductsDiscountDTOImpl &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.label, label) || other.label == label));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, amount, label);

  /// Create a copy of ProductsDiscountDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductsDiscountDTOImplCopyWith<_$ProductsDiscountDTOImpl> get copyWith =>
      __$$ProductsDiscountDTOImplCopyWithImpl<_$ProductsDiscountDTOImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductsDiscountDTOImplToJson(this);
  }
}

abstract class _ProductsDiscountDTO implements ProductsDiscountDTO {
  const factory _ProductsDiscountDTO({
    final double? amount,
    final String? label,
  }) = _$ProductsDiscountDTOImpl;

  factory _ProductsDiscountDTO.fromJson(Map<String, dynamic> json) =
      _$ProductsDiscountDTOImpl.fromJson;

  @override
  double? get amount;
  @override
  String? get label;

  /// Create a copy of ProductsDiscountDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductsDiscountDTOImplCopyWith<_$ProductsDiscountDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ProductsDetailPriceDTO _$ProductsDetailPriceDTOFromJson(
  Map<String, dynamic> json,
) {
  return _ProductsDetailPriceDTO.fromJson(json);
}

/// @nodoc
mixin _$ProductsDetailPriceDTO {
  double get value => throw _privateConstructorUsedError;
  String get currency => throw _privateConstructorUsedError;

  /// Serializes this ProductsDetailPriceDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProductsDetailPriceDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductsDetailPriceDTOCopyWith<ProductsDetailPriceDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductsDetailPriceDTOCopyWith<$Res> {
  factory $ProductsDetailPriceDTOCopyWith(
    ProductsDetailPriceDTO value,
    $Res Function(ProductsDetailPriceDTO) then,
  ) = _$ProductsDetailPriceDTOCopyWithImpl<$Res, ProductsDetailPriceDTO>;
  @useResult
  $Res call({double value, String currency});
}

/// @nodoc
class _$ProductsDetailPriceDTOCopyWithImpl<
  $Res,
  $Val extends ProductsDetailPriceDTO
>
    implements $ProductsDetailPriceDTOCopyWith<$Res> {
  _$ProductsDetailPriceDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductsDetailPriceDTO
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
abstract class _$$ProductsDetailPriceDTOImplCopyWith<$Res>
    implements $ProductsDetailPriceDTOCopyWith<$Res> {
  factory _$$ProductsDetailPriceDTOImplCopyWith(
    _$ProductsDetailPriceDTOImpl value,
    $Res Function(_$ProductsDetailPriceDTOImpl) then,
  ) = __$$ProductsDetailPriceDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double value, String currency});
}

/// @nodoc
class __$$ProductsDetailPriceDTOImplCopyWithImpl<$Res>
    extends
        _$ProductsDetailPriceDTOCopyWithImpl<$Res, _$ProductsDetailPriceDTOImpl>
    implements _$$ProductsDetailPriceDTOImplCopyWith<$Res> {
  __$$ProductsDetailPriceDTOImplCopyWithImpl(
    _$ProductsDetailPriceDTOImpl _value,
    $Res Function(_$ProductsDetailPriceDTOImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ProductsDetailPriceDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? value = null, Object? currency = null}) {
    return _then(
      _$ProductsDetailPriceDTOImpl(
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
class _$ProductsDetailPriceDTOImpl implements _ProductsDetailPriceDTO {
  const _$ProductsDetailPriceDTOImpl({
    required this.value,
    required this.currency,
  });

  factory _$ProductsDetailPriceDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductsDetailPriceDTOImplFromJson(json);

  @override
  final double value;
  @override
  final String currency;

  @override
  String toString() {
    return 'ProductsDetailPriceDTO(value: $value, currency: $currency)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductsDetailPriceDTOImpl &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.currency, currency) ||
                other.currency == currency));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, value, currency);

  /// Create a copy of ProductsDetailPriceDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductsDetailPriceDTOImplCopyWith<_$ProductsDetailPriceDTOImpl>
  get copyWith =>
      __$$ProductsDetailPriceDTOImplCopyWithImpl<_$ProductsDetailPriceDTOImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductsDetailPriceDTOImplToJson(this);
  }
}

abstract class _ProductsDetailPriceDTO implements ProductsDetailPriceDTO {
  const factory _ProductsDetailPriceDTO({
    required final double value,
    required final String currency,
  }) = _$ProductsDetailPriceDTOImpl;

  factory _ProductsDetailPriceDTO.fromJson(Map<String, dynamic> json) =
      _$ProductsDetailPriceDTOImpl.fromJson;

  @override
  double get value;
  @override
  String get currency;

  /// Create a copy of ProductsDetailPriceDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductsDetailPriceDTOImplCopyWith<_$ProductsDetailPriceDTOImpl>
  get copyWith => throw _privateConstructorUsedError;
}

ProductsAtributesDTO _$ProductsAtributesDTOFromJson(Map<String, dynamic> json) {
  return _ProductsAtributesDTO.fromJson(json);
}

/// @nodoc
mixin _$ProductsAtributesDTO {
  String get uid => throw _privateConstructorUsedError;
  String get label => throw _privateConstructorUsedError;
  String get code => throw _privateConstructorUsedError;

  /// Serializes this ProductsAtributesDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProductsAtributesDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductsAtributesDTOCopyWith<ProductsAtributesDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductsAtributesDTOCopyWith<$Res> {
  factory $ProductsAtributesDTOCopyWith(
    ProductsAtributesDTO value,
    $Res Function(ProductsAtributesDTO) then,
  ) = _$ProductsAtributesDTOCopyWithImpl<$Res, ProductsAtributesDTO>;
  @useResult
  $Res call({String uid, String label, String code});
}

/// @nodoc
class _$ProductsAtributesDTOCopyWithImpl<
  $Res,
  $Val extends ProductsAtributesDTO
>
    implements $ProductsAtributesDTOCopyWith<$Res> {
  _$ProductsAtributesDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductsAtributesDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? uid = null, Object? label = null, Object? code = null}) {
    return _then(
      _value.copyWith(
            uid:
                null == uid
                    ? _value.uid
                    : uid // ignore: cast_nullable_to_non_nullable
                        as String,
            label:
                null == label
                    ? _value.label
                    : label // ignore: cast_nullable_to_non_nullable
                        as String,
            code:
                null == code
                    ? _value.code
                    : code // ignore: cast_nullable_to_non_nullable
                        as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ProductsAtributesDTOImplCopyWith<$Res>
    implements $ProductsAtributesDTOCopyWith<$Res> {
  factory _$$ProductsAtributesDTOImplCopyWith(
    _$ProductsAtributesDTOImpl value,
    $Res Function(_$ProductsAtributesDTOImpl) then,
  ) = __$$ProductsAtributesDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String uid, String label, String code});
}

/// @nodoc
class __$$ProductsAtributesDTOImplCopyWithImpl<$Res>
    extends _$ProductsAtributesDTOCopyWithImpl<$Res, _$ProductsAtributesDTOImpl>
    implements _$$ProductsAtributesDTOImplCopyWith<$Res> {
  __$$ProductsAtributesDTOImplCopyWithImpl(
    _$ProductsAtributesDTOImpl _value,
    $Res Function(_$ProductsAtributesDTOImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ProductsAtributesDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? uid = null, Object? label = null, Object? code = null}) {
    return _then(
      _$ProductsAtributesDTOImpl(
        uid:
            null == uid
                ? _value.uid
                : uid // ignore: cast_nullable_to_non_nullable
                    as String,
        label:
            null == label
                ? _value.label
                : label // ignore: cast_nullable_to_non_nullable
                    as String,
        code:
            null == code
                ? _value.code
                : code // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductsAtributesDTOImpl implements _ProductsAtributesDTO {
  const _$ProductsAtributesDTOImpl({
    required this.uid,
    required this.label,
    required this.code,
  });

  factory _$ProductsAtributesDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductsAtributesDTOImplFromJson(json);

  @override
  final String uid;
  @override
  final String label;
  @override
  final String code;

  @override
  String toString() {
    return 'ProductsAtributesDTO(uid: $uid, label: $label, code: $code)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductsAtributesDTOImpl &&
            (identical(other.uid, uid) || other.uid == uid) &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.code, code) || other.code == code));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, uid, label, code);

  /// Create a copy of ProductsAtributesDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductsAtributesDTOImplCopyWith<_$ProductsAtributesDTOImpl>
  get copyWith =>
      __$$ProductsAtributesDTOImplCopyWithImpl<_$ProductsAtributesDTOImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductsAtributesDTOImplToJson(this);
  }
}

abstract class _ProductsAtributesDTO implements ProductsAtributesDTO {
  const factory _ProductsAtributesDTO({
    required final String uid,
    required final String label,
    required final String code,
  }) = _$ProductsAtributesDTOImpl;

  factory _ProductsAtributesDTO.fromJson(Map<String, dynamic> json) =
      _$ProductsAtributesDTOImpl.fromJson;

  @override
  String get uid;
  @override
  String get label;
  @override
  String get code;

  /// Create a copy of ProductsAtributesDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductsAtributesDTOImplCopyWith<_$ProductsAtributesDTOImpl>
  get copyWith => throw _privateConstructorUsedError;
}

ProductsVariantsDTO _$ProductsVariantsDTOFromJson(Map<String, dynamic> json) {
  return _ProductsVariantsDTO.fromJson(json);
}

/// @nodoc
mixin _$ProductsVariantsDTO {
  List<ProductsAtributesDTO> get attributes =>
      throw _privateConstructorUsedError;

  /// Serializes this ProductsVariantsDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProductsVariantsDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductsVariantsDTOCopyWith<ProductsVariantsDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductsVariantsDTOCopyWith<$Res> {
  factory $ProductsVariantsDTOCopyWith(
    ProductsVariantsDTO value,
    $Res Function(ProductsVariantsDTO) then,
  ) = _$ProductsVariantsDTOCopyWithImpl<$Res, ProductsVariantsDTO>;
  @useResult
  $Res call({List<ProductsAtributesDTO> attributes});
}

/// @nodoc
class _$ProductsVariantsDTOCopyWithImpl<$Res, $Val extends ProductsVariantsDTO>
    implements $ProductsVariantsDTOCopyWith<$Res> {
  _$ProductsVariantsDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductsVariantsDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? attributes = null}) {
    return _then(
      _value.copyWith(
            attributes:
                null == attributes
                    ? _value.attributes
                    : attributes // ignore: cast_nullable_to_non_nullable
                        as List<ProductsAtributesDTO>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ProductsVariantsDTOImplCopyWith<$Res>
    implements $ProductsVariantsDTOCopyWith<$Res> {
  factory _$$ProductsVariantsDTOImplCopyWith(
    _$ProductsVariantsDTOImpl value,
    $Res Function(_$ProductsVariantsDTOImpl) then,
  ) = __$$ProductsVariantsDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<ProductsAtributesDTO> attributes});
}

/// @nodoc
class __$$ProductsVariantsDTOImplCopyWithImpl<$Res>
    extends _$ProductsVariantsDTOCopyWithImpl<$Res, _$ProductsVariantsDTOImpl>
    implements _$$ProductsVariantsDTOImplCopyWith<$Res> {
  __$$ProductsVariantsDTOImplCopyWithImpl(
    _$ProductsVariantsDTOImpl _value,
    $Res Function(_$ProductsVariantsDTOImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ProductsVariantsDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? attributes = null}) {
    return _then(
      _$ProductsVariantsDTOImpl(
        attributes:
            null == attributes
                ? _value._attributes
                : attributes // ignore: cast_nullable_to_non_nullable
                    as List<ProductsAtributesDTO>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductsVariantsDTOImpl implements _ProductsVariantsDTO {
  const _$ProductsVariantsDTOImpl({
    final List<ProductsAtributesDTO> attributes = const [],
  }) : _attributes = attributes;

  factory _$ProductsVariantsDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductsVariantsDTOImplFromJson(json);

  final List<ProductsAtributesDTO> _attributes;
  @override
  @JsonKey()
  List<ProductsAtributesDTO> get attributes {
    if (_attributes is EqualUnmodifiableListView) return _attributes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_attributes);
  }

  @override
  String toString() {
    return 'ProductsVariantsDTO(attributes: $attributes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductsVariantsDTOImpl &&
            const DeepCollectionEquality().equals(
              other._attributes,
              _attributes,
            ));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_attributes),
  );

  /// Create a copy of ProductsVariantsDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductsVariantsDTOImplCopyWith<_$ProductsVariantsDTOImpl> get copyWith =>
      __$$ProductsVariantsDTOImplCopyWithImpl<_$ProductsVariantsDTOImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductsVariantsDTOImplToJson(this);
  }
}

abstract class _ProductsVariantsDTO implements ProductsVariantsDTO {
  const factory _ProductsVariantsDTO({
    final List<ProductsAtributesDTO> attributes,
  }) = _$ProductsVariantsDTOImpl;

  factory _ProductsVariantsDTO.fromJson(Map<String, dynamic> json) =
      _$ProductsVariantsDTOImpl.fromJson;

  @override
  List<ProductsAtributesDTO> get attributes;

  /// Create a copy of ProductsVariantsDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductsVariantsDTOImplCopyWith<_$ProductsVariantsDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ProductsAggregationsDTO _$ProductsAggregationsDTOFromJson(
  Map<String, dynamic> json,
) {
  return _ProductsAggregationsDTO.fromJson(json);
}

/// @nodoc
mixin _$ProductsAggregationsDTO {
  String get label => throw _privateConstructorUsedError;
  @JsonKey(name: 'attribute_code')
  String get attributeCode => throw _privateConstructorUsedError;
  List<ProductsOptionsDTO> get options => throw _privateConstructorUsedError;

  /// Serializes this ProductsAggregationsDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProductsAggregationsDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductsAggregationsDTOCopyWith<ProductsAggregationsDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductsAggregationsDTOCopyWith<$Res> {
  factory $ProductsAggregationsDTOCopyWith(
    ProductsAggregationsDTO value,
    $Res Function(ProductsAggregationsDTO) then,
  ) = _$ProductsAggregationsDTOCopyWithImpl<$Res, ProductsAggregationsDTO>;
  @useResult
  $Res call({
    String label,
    @JsonKey(name: 'attribute_code') String attributeCode,
    List<ProductsOptionsDTO> options,
  });
}

/// @nodoc
class _$ProductsAggregationsDTOCopyWithImpl<
  $Res,
  $Val extends ProductsAggregationsDTO
>
    implements $ProductsAggregationsDTOCopyWith<$Res> {
  _$ProductsAggregationsDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductsAggregationsDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? label = null,
    Object? attributeCode = null,
    Object? options = null,
  }) {
    return _then(
      _value.copyWith(
            label:
                null == label
                    ? _value.label
                    : label // ignore: cast_nullable_to_non_nullable
                        as String,
            attributeCode:
                null == attributeCode
                    ? _value.attributeCode
                    : attributeCode // ignore: cast_nullable_to_non_nullable
                        as String,
            options:
                null == options
                    ? _value.options
                    : options // ignore: cast_nullable_to_non_nullable
                        as List<ProductsOptionsDTO>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ProductsAggregationsDTOImplCopyWith<$Res>
    implements $ProductsAggregationsDTOCopyWith<$Res> {
  factory _$$ProductsAggregationsDTOImplCopyWith(
    _$ProductsAggregationsDTOImpl value,
    $Res Function(_$ProductsAggregationsDTOImpl) then,
  ) = __$$ProductsAggregationsDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String label,
    @JsonKey(name: 'attribute_code') String attributeCode,
    List<ProductsOptionsDTO> options,
  });
}

/// @nodoc
class __$$ProductsAggregationsDTOImplCopyWithImpl<$Res>
    extends
        _$ProductsAggregationsDTOCopyWithImpl<
          $Res,
          _$ProductsAggregationsDTOImpl
        >
    implements _$$ProductsAggregationsDTOImplCopyWith<$Res> {
  __$$ProductsAggregationsDTOImplCopyWithImpl(
    _$ProductsAggregationsDTOImpl _value,
    $Res Function(_$ProductsAggregationsDTOImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ProductsAggregationsDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? label = null,
    Object? attributeCode = null,
    Object? options = null,
  }) {
    return _then(
      _$ProductsAggregationsDTOImpl(
        label:
            null == label
                ? _value.label
                : label // ignore: cast_nullable_to_non_nullable
                    as String,
        attributeCode:
            null == attributeCode
                ? _value.attributeCode
                : attributeCode // ignore: cast_nullable_to_non_nullable
                    as String,
        options:
            null == options
                ? _value._options
                : options // ignore: cast_nullable_to_non_nullable
                    as List<ProductsOptionsDTO>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductsAggregationsDTOImpl implements _ProductsAggregationsDTO {
  _$ProductsAggregationsDTOImpl({
    required this.label,
    @JsonKey(name: 'attribute_code') required this.attributeCode,
    final List<ProductsOptionsDTO> options = const [],
  }) : _options = options;

  factory _$ProductsAggregationsDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductsAggregationsDTOImplFromJson(json);

  @override
  final String label;
  @override
  @JsonKey(name: 'attribute_code')
  final String attributeCode;
  final List<ProductsOptionsDTO> _options;
  @override
  @JsonKey()
  List<ProductsOptionsDTO> get options {
    if (_options is EqualUnmodifiableListView) return _options;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_options);
  }

  @override
  String toString() {
    return 'ProductsAggregationsDTO(label: $label, attributeCode: $attributeCode, options: $options)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductsAggregationsDTOImpl &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.attributeCode, attributeCode) ||
                other.attributeCode == attributeCode) &&
            const DeepCollectionEquality().equals(other._options, _options));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    label,
    attributeCode,
    const DeepCollectionEquality().hash(_options),
  );

  /// Create a copy of ProductsAggregationsDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductsAggregationsDTOImplCopyWith<_$ProductsAggregationsDTOImpl>
  get copyWith => __$$ProductsAggregationsDTOImplCopyWithImpl<
    _$ProductsAggregationsDTOImpl
  >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductsAggregationsDTOImplToJson(this);
  }
}

abstract class _ProductsAggregationsDTO implements ProductsAggregationsDTO {
  factory _ProductsAggregationsDTO({
    required final String label,
    @JsonKey(name: 'attribute_code') required final String attributeCode,
    final List<ProductsOptionsDTO> options,
  }) = _$ProductsAggregationsDTOImpl;

  factory _ProductsAggregationsDTO.fromJson(Map<String, dynamic> json) =
      _$ProductsAggregationsDTOImpl.fromJson;

  @override
  String get label;
  @override
  @JsonKey(name: 'attribute_code')
  String get attributeCode;
  @override
  List<ProductsOptionsDTO> get options;

  /// Create a copy of ProductsAggregationsDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductsAggregationsDTOImplCopyWith<_$ProductsAggregationsDTOImpl>
  get copyWith => throw _privateConstructorUsedError;
}

ProductsOptionsDTO _$ProductsOptionsDTOFromJson(Map<String, dynamic> json) {
  return _ProductsOptionsDTO.fromJson(json);
}

/// @nodoc
mixin _$ProductsOptionsDTO {
  String get label => throw _privateConstructorUsedError;
  String get value => throw _privateConstructorUsedError;
  int get count => throw _privateConstructorUsedError;

  /// Serializes this ProductsOptionsDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProductsOptionsDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductsOptionsDTOCopyWith<ProductsOptionsDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductsOptionsDTOCopyWith<$Res> {
  factory $ProductsOptionsDTOCopyWith(
    ProductsOptionsDTO value,
    $Res Function(ProductsOptionsDTO) then,
  ) = _$ProductsOptionsDTOCopyWithImpl<$Res, ProductsOptionsDTO>;
  @useResult
  $Res call({String label, String value, int count});
}

/// @nodoc
class _$ProductsOptionsDTOCopyWithImpl<$Res, $Val extends ProductsOptionsDTO>
    implements $ProductsOptionsDTOCopyWith<$Res> {
  _$ProductsOptionsDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductsOptionsDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? label = null,
    Object? value = null,
    Object? count = null,
  }) {
    return _then(
      _value.copyWith(
            label:
                null == label
                    ? _value.label
                    : label // ignore: cast_nullable_to_non_nullable
                        as String,
            value:
                null == value
                    ? _value.value
                    : value // ignore: cast_nullable_to_non_nullable
                        as String,
            count:
                null == count
                    ? _value.count
                    : count // ignore: cast_nullable_to_non_nullable
                        as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ProductsOptionsDTOImplCopyWith<$Res>
    implements $ProductsOptionsDTOCopyWith<$Res> {
  factory _$$ProductsOptionsDTOImplCopyWith(
    _$ProductsOptionsDTOImpl value,
    $Res Function(_$ProductsOptionsDTOImpl) then,
  ) = __$$ProductsOptionsDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String label, String value, int count});
}

/// @nodoc
class __$$ProductsOptionsDTOImplCopyWithImpl<$Res>
    extends _$ProductsOptionsDTOCopyWithImpl<$Res, _$ProductsOptionsDTOImpl>
    implements _$$ProductsOptionsDTOImplCopyWith<$Res> {
  __$$ProductsOptionsDTOImplCopyWithImpl(
    _$ProductsOptionsDTOImpl _value,
    $Res Function(_$ProductsOptionsDTOImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ProductsOptionsDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? label = null,
    Object? value = null,
    Object? count = null,
  }) {
    return _then(
      _$ProductsOptionsDTOImpl(
        label:
            null == label
                ? _value.label
                : label // ignore: cast_nullable_to_non_nullable
                    as String,
        value:
            null == value
                ? _value.value
                : value // ignore: cast_nullable_to_non_nullable
                    as String,
        count:
            null == count
                ? _value.count
                : count // ignore: cast_nullable_to_non_nullable
                    as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductsOptionsDTOImpl implements _ProductsOptionsDTO {
  _$ProductsOptionsDTOImpl({
    required this.label,
    required this.value,
    required this.count,
  });

  factory _$ProductsOptionsDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductsOptionsDTOImplFromJson(json);

  @override
  final String label;
  @override
  final String value;
  @override
  final int count;

  @override
  String toString() {
    return 'ProductsOptionsDTO(label: $label, value: $value, count: $count)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductsOptionsDTOImpl &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.count, count) || other.count == count));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, label, value, count);

  /// Create a copy of ProductsOptionsDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductsOptionsDTOImplCopyWith<_$ProductsOptionsDTOImpl> get copyWith =>
      __$$ProductsOptionsDTOImplCopyWithImpl<_$ProductsOptionsDTOImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductsOptionsDTOImplToJson(this);
  }
}

abstract class _ProductsOptionsDTO implements ProductsOptionsDTO {
  factory _ProductsOptionsDTO({
    required final String label,
    required final String value,
    required final int count,
  }) = _$ProductsOptionsDTOImpl;

  factory _ProductsOptionsDTO.fromJson(Map<String, dynamic> json) =
      _$ProductsOptionsDTOImpl.fromJson;

  @override
  String get label;
  @override
  String get value;
  @override
  int get count;

  /// Create a copy of ProductsOptionsDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductsOptionsDTOImplCopyWith<_$ProductsOptionsDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ProductsCategoryDTO _$ProductsCategoryDTOFromJson(Map<String, dynamic> json) {
  return _ProductsCategoryDTO.fromJson(json);
}

/// @nodoc
mixin _$ProductsCategoryDTO {
  String get uid => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get level => throw _privateConstructorUsedError;
  @JsonKey(name: 'include_in_menu')
  int get includeInMenu => throw _privateConstructorUsedError;

  /// Serializes this ProductsCategoryDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProductsCategoryDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductsCategoryDTOCopyWith<ProductsCategoryDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductsCategoryDTOCopyWith<$Res> {
  factory $ProductsCategoryDTOCopyWith(
    ProductsCategoryDTO value,
    $Res Function(ProductsCategoryDTO) then,
  ) = _$ProductsCategoryDTOCopyWithImpl<$Res, ProductsCategoryDTO>;
  @useResult
  $Res call({
    String uid,
    String name,
    int level,
    @JsonKey(name: 'include_in_menu') int includeInMenu,
  });
}

/// @nodoc
class _$ProductsCategoryDTOCopyWithImpl<$Res, $Val extends ProductsCategoryDTO>
    implements $ProductsCategoryDTOCopyWith<$Res> {
  _$ProductsCategoryDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductsCategoryDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
    Object? name = null,
    Object? level = null,
    Object? includeInMenu = null,
  }) {
    return _then(
      _value.copyWith(
            uid:
                null == uid
                    ? _value.uid
                    : uid // ignore: cast_nullable_to_non_nullable
                        as String,
            name:
                null == name
                    ? _value.name
                    : name // ignore: cast_nullable_to_non_nullable
                        as String,
            level:
                null == level
                    ? _value.level
                    : level // ignore: cast_nullable_to_non_nullable
                        as int,
            includeInMenu:
                null == includeInMenu
                    ? _value.includeInMenu
                    : includeInMenu // ignore: cast_nullable_to_non_nullable
                        as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ProductsCategoryDTOImplCopyWith<$Res>
    implements $ProductsCategoryDTOCopyWith<$Res> {
  factory _$$ProductsCategoryDTOImplCopyWith(
    _$ProductsCategoryDTOImpl value,
    $Res Function(_$ProductsCategoryDTOImpl) then,
  ) = __$$ProductsCategoryDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String uid,
    String name,
    int level,
    @JsonKey(name: 'include_in_menu') int includeInMenu,
  });
}

/// @nodoc
class __$$ProductsCategoryDTOImplCopyWithImpl<$Res>
    extends _$ProductsCategoryDTOCopyWithImpl<$Res, _$ProductsCategoryDTOImpl>
    implements _$$ProductsCategoryDTOImplCopyWith<$Res> {
  __$$ProductsCategoryDTOImplCopyWithImpl(
    _$ProductsCategoryDTOImpl _value,
    $Res Function(_$ProductsCategoryDTOImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ProductsCategoryDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
    Object? name = null,
    Object? level = null,
    Object? includeInMenu = null,
  }) {
    return _then(
      _$ProductsCategoryDTOImpl(
        uid:
            null == uid
                ? _value.uid
                : uid // ignore: cast_nullable_to_non_nullable
                    as String,
        name:
            null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                    as String,
        level:
            null == level
                ? _value.level
                : level // ignore: cast_nullable_to_non_nullable
                    as int,
        includeInMenu:
            null == includeInMenu
                ? _value.includeInMenu
                : includeInMenu // ignore: cast_nullable_to_non_nullable
                    as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductsCategoryDTOImpl implements _ProductsCategoryDTO {
  _$ProductsCategoryDTOImpl({
    required this.uid,
    required this.name,
    required this.level,
    @JsonKey(name: 'include_in_menu') required this.includeInMenu,
  });

  factory _$ProductsCategoryDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductsCategoryDTOImplFromJson(json);

  @override
  final String uid;
  @override
  final String name;
  @override
  final int level;
  @override
  @JsonKey(name: 'include_in_menu')
  final int includeInMenu;

  @override
  String toString() {
    return 'ProductsCategoryDTO(uid: $uid, name: $name, level: $level, includeInMenu: $includeInMenu)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductsCategoryDTOImpl &&
            (identical(other.uid, uid) || other.uid == uid) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.level, level) || other.level == level) &&
            (identical(other.includeInMenu, includeInMenu) ||
                other.includeInMenu == includeInMenu));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, uid, name, level, includeInMenu);

  /// Create a copy of ProductsCategoryDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductsCategoryDTOImplCopyWith<_$ProductsCategoryDTOImpl> get copyWith =>
      __$$ProductsCategoryDTOImplCopyWithImpl<_$ProductsCategoryDTOImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductsCategoryDTOImplToJson(this);
  }
}

abstract class _ProductsCategoryDTO implements ProductsCategoryDTO {
  factory _ProductsCategoryDTO({
    required final String uid,
    required final String name,
    required final int level,
    @JsonKey(name: 'include_in_menu') required final int includeInMenu,
  }) = _$ProductsCategoryDTOImpl;

  factory _ProductsCategoryDTO.fromJson(Map<String, dynamic> json) =
      _$ProductsCategoryDTOImpl.fromJson;

  @override
  String get uid;
  @override
  String get name;
  @override
  int get level;
  @override
  @JsonKey(name: 'include_in_menu')
  int get includeInMenu;

  /// Create a copy of ProductsCategoryDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductsCategoryDTOImplCopyWith<_$ProductsCategoryDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
