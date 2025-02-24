// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'products.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

Products _$ProductsFromJson(Map<String, dynamic> json) {
  return _Products.fromJson(json);
}

/// @nodoc
mixin _$Products {
  List<ProductsItems> get items => throw _privateConstructorUsedError;
  ProductsPageInfo get pageInfo => throw _privateConstructorUsedError;
  int get totalCount => throw _privateConstructorUsedError;
  List<ProductsAggregations> get aggregations =>
      throw _privateConstructorUsedError;

  /// Serializes this Products to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Products
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductsCopyWith<Products> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductsCopyWith<$Res> {
  factory $ProductsCopyWith(Products value, $Res Function(Products) then) =
      _$ProductsCopyWithImpl<$Res, Products>;
  @useResult
  $Res call({
    List<ProductsItems> items,
    ProductsPageInfo pageInfo,
    int totalCount,
    List<ProductsAggregations> aggregations,
  });

  $ProductsPageInfoCopyWith<$Res> get pageInfo;
}

/// @nodoc
class _$ProductsCopyWithImpl<$Res, $Val extends Products>
    implements $ProductsCopyWith<$Res> {
  _$ProductsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Products
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
                        as List<ProductsItems>,
            pageInfo:
                null == pageInfo
                    ? _value.pageInfo
                    : pageInfo // ignore: cast_nullable_to_non_nullable
                        as ProductsPageInfo,
            totalCount:
                null == totalCount
                    ? _value.totalCount
                    : totalCount // ignore: cast_nullable_to_non_nullable
                        as int,
            aggregations:
                null == aggregations
                    ? _value.aggregations
                    : aggregations // ignore: cast_nullable_to_non_nullable
                        as List<ProductsAggregations>,
          )
          as $Val,
    );
  }

  /// Create a copy of Products
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProductsPageInfoCopyWith<$Res> get pageInfo {
    return $ProductsPageInfoCopyWith<$Res>(_value.pageInfo, (value) {
      return _then(_value.copyWith(pageInfo: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProductsImplCopyWith<$Res>
    implements $ProductsCopyWith<$Res> {
  factory _$$ProductsImplCopyWith(
    _$ProductsImpl value,
    $Res Function(_$ProductsImpl) then,
  ) = __$$ProductsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    List<ProductsItems> items,
    ProductsPageInfo pageInfo,
    int totalCount,
    List<ProductsAggregations> aggregations,
  });

  @override
  $ProductsPageInfoCopyWith<$Res> get pageInfo;
}

/// @nodoc
class __$$ProductsImplCopyWithImpl<$Res>
    extends _$ProductsCopyWithImpl<$Res, _$ProductsImpl>
    implements _$$ProductsImplCopyWith<$Res> {
  __$$ProductsImplCopyWithImpl(
    _$ProductsImpl _value,
    $Res Function(_$ProductsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Products
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
      _$ProductsImpl(
        items:
            null == items
                ? _value.items
                : items // ignore: cast_nullable_to_non_nullable
                    as List<ProductsItems>,
        pageInfo:
            null == pageInfo
                ? _value.pageInfo
                : pageInfo // ignore: cast_nullable_to_non_nullable
                    as ProductsPageInfo,
        totalCount:
            null == totalCount
                ? _value.totalCount
                : totalCount // ignore: cast_nullable_to_non_nullable
                    as int,
        aggregations:
            null == aggregations
                ? _value.aggregations
                : aggregations // ignore: cast_nullable_to_non_nullable
                    as List<ProductsAggregations>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductsImpl implements _Products {
  const _$ProductsImpl({
    this.items = const [],
    required this.pageInfo,
    required this.totalCount,
    this.aggregations = const [],
  });

  factory _$ProductsImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductsImplFromJson(json);

  @override
  @JsonKey()
  final List<ProductsItems> items;
  @override
  final ProductsPageInfo pageInfo;
  @override
  final int totalCount;
  @override
  @JsonKey()
  final List<ProductsAggregations> aggregations;

  @override
  String toString() {
    return 'Products(items: $items, pageInfo: $pageInfo, totalCount: $totalCount, aggregations: $aggregations)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductsImpl &&
            const DeepCollectionEquality().equals(other.items, items) &&
            (identical(other.pageInfo, pageInfo) ||
                other.pageInfo == pageInfo) &&
            (identical(other.totalCount, totalCount) ||
                other.totalCount == totalCount) &&
            const DeepCollectionEquality().equals(
              other.aggregations,
              aggregations,
            ));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(items),
    pageInfo,
    totalCount,
    const DeepCollectionEquality().hash(aggregations),
  );

  /// Create a copy of Products
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductsImplCopyWith<_$ProductsImpl> get copyWith =>
      __$$ProductsImplCopyWithImpl<_$ProductsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductsImplToJson(this);
  }
}

abstract class _Products implements Products {
  const factory _Products({
    final List<ProductsItems> items,
    required final ProductsPageInfo pageInfo,
    required final int totalCount,
    final List<ProductsAggregations> aggregations,
  }) = _$ProductsImpl;

  factory _Products.fromJson(Map<String, dynamic> json) =
      _$ProductsImpl.fromJson;

  @override
  List<ProductsItems> get items;
  @override
  ProductsPageInfo get pageInfo;
  @override
  int get totalCount;
  @override
  List<ProductsAggregations> get aggregations;

  /// Create a copy of Products
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductsImplCopyWith<_$ProductsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ProductsPageInfo _$ProductsPageInfoFromJson(Map<String, dynamic> json) {
  return _ProductsPageInfo.fromJson(json);
}

/// @nodoc
mixin _$ProductsPageInfo {
  int get currentPage => throw _privateConstructorUsedError;
  int get pageSize => throw _privateConstructorUsedError;
  int get totalPages => throw _privateConstructorUsedError;

  /// Serializes this ProductsPageInfo to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProductsPageInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductsPageInfoCopyWith<ProductsPageInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductsPageInfoCopyWith<$Res> {
  factory $ProductsPageInfoCopyWith(
    ProductsPageInfo value,
    $Res Function(ProductsPageInfo) then,
  ) = _$ProductsPageInfoCopyWithImpl<$Res, ProductsPageInfo>;
  @useResult
  $Res call({int currentPage, int pageSize, int totalPages});
}

/// @nodoc
class _$ProductsPageInfoCopyWithImpl<$Res, $Val extends ProductsPageInfo>
    implements $ProductsPageInfoCopyWith<$Res> {
  _$ProductsPageInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductsPageInfo
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
abstract class _$$ProductsPageInfoImplCopyWith<$Res>
    implements $ProductsPageInfoCopyWith<$Res> {
  factory _$$ProductsPageInfoImplCopyWith(
    _$ProductsPageInfoImpl value,
    $Res Function(_$ProductsPageInfoImpl) then,
  ) = __$$ProductsPageInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int currentPage, int pageSize, int totalPages});
}

/// @nodoc
class __$$ProductsPageInfoImplCopyWithImpl<$Res>
    extends _$ProductsPageInfoCopyWithImpl<$Res, _$ProductsPageInfoImpl>
    implements _$$ProductsPageInfoImplCopyWith<$Res> {
  __$$ProductsPageInfoImplCopyWithImpl(
    _$ProductsPageInfoImpl _value,
    $Res Function(_$ProductsPageInfoImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ProductsPageInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentPage = null,
    Object? pageSize = null,
    Object? totalPages = null,
  }) {
    return _then(
      _$ProductsPageInfoImpl(
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
class _$ProductsPageInfoImpl implements _ProductsPageInfo {
  const _$ProductsPageInfoImpl({
    required this.currentPage,
    required this.pageSize,
    required this.totalPages,
  });

  factory _$ProductsPageInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductsPageInfoImplFromJson(json);

  @override
  final int currentPage;
  @override
  final int pageSize;
  @override
  final int totalPages;

  @override
  String toString() {
    return 'ProductsPageInfo(currentPage: $currentPage, pageSize: $pageSize, totalPages: $totalPages)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductsPageInfoImpl &&
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

  /// Create a copy of ProductsPageInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductsPageInfoImplCopyWith<_$ProductsPageInfoImpl> get copyWith =>
      __$$ProductsPageInfoImplCopyWithImpl<_$ProductsPageInfoImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductsPageInfoImplToJson(this);
  }
}

abstract class _ProductsPageInfo implements ProductsPageInfo {
  const factory _ProductsPageInfo({
    required final int currentPage,
    required final int pageSize,
    required final int totalPages,
  }) = _$ProductsPageInfoImpl;

  factory _ProductsPageInfo.fromJson(Map<String, dynamic> json) =
      _$ProductsPageInfoImpl.fromJson;

  @override
  int get currentPage;
  @override
  int get pageSize;
  @override
  int get totalPages;

  /// Create a copy of ProductsPageInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductsPageInfoImplCopyWith<_$ProductsPageInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ProductsItems _$ProductsItemsFromJson(Map<String, dynamic> json) {
  return _ProductsItems.fromJson(json);
}

/// @nodoc
mixin _$ProductsItems {
  int get id => throw _privateConstructorUsedError;
  set id(int value) => throw _privateConstructorUsedError;
  double get minSaleQty => throw _privateConstructorUsedError;
  set minSaleQty(double value) => throw _privateConstructorUsedError;
  double get margin => throw _privateConstructorUsedError;
  set margin(double value) => throw _privateConstructorUsedError;
  String get typeId => throw _privateConstructorUsedError;
  set typeId(String value) => throw _privateConstructorUsedError;
  String? get informacionNutricional => throw _privateConstructorUsedError;
  set informacionNutricional(String? value) =>
      throw _privateConstructorUsedError;
  String? get ingredientes => throw _privateConstructorUsedError;
  set ingredientes(String? value) => throw _privateConstructorUsedError;
  int? get marca => throw _privateConstructorUsedError;
  set marca(int? value) => throw _privateConstructorUsedError;
  List<String>? get labels => throw _privateConstructorUsedError;
  set labels(List<String>? value) => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  set type(String? value) => throw _privateConstructorUsedError;
  String? get measureUnit => throw _privateConstructorUsedError;
  set measureUnit(String? value) => throw _privateConstructorUsedError;
  String? get brandName => throw _privateConstructorUsedError;
  set brandName(String? value) => throw _privateConstructorUsedError;
  String? get upc => throw _privateConstructorUsedError;
  set upc(String? value) => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  set name(String value) => throw _privateConstructorUsedError;
  String get sku => throw _privateConstructorUsedError;
  set sku(String value) => throw _privateConstructorUsedError;
  List<String> get tags => throw _privateConstructorUsedError;
  set tags(List<String> value) => throw _privateConstructorUsedError;
  String? get uid => throw _privateConstructorUsedError;
  set uid(String? value) => throw _privateConstructorUsedError;
  String? get urlKey => throw _privateConstructorUsedError;
  set urlKey(String? value) => throw _privateConstructorUsedError;
  String? get composicion => throw _privateConstructorUsedError;
  set composicion(String? value) => throw _privateConstructorUsedError;
  double? get specialPrice => throw _privateConstructorUsedError;
  set specialPrice(double? value) => throw _privateConstructorUsedError;
  List<ProductsVariants> get variants => throw _privateConstructorUsedError;
  set variants(List<ProductsVariants> value) =>
      throw _privateConstructorUsedError;
  ProductsDescription? get description => throw _privateConstructorUsedError;
  set description(ProductsDescription? value) =>
      throw _privateConstructorUsedError;
  ProductsImage get image => throw _privateConstructorUsedError;
  set image(ProductsImage value) => throw _privateConstructorUsedError;
  ProductsImage? get smallImage => throw _privateConstructorUsedError;
  set smallImage(ProductsImage? value) => throw _privateConstructorUsedError;
  List<ProductsMediaGallery> get mediaGallery =>
      throw _privateConstructorUsedError;
  set mediaGallery(List<ProductsMediaGallery> value) =>
      throw _privateConstructorUsedError;
  int? get ratingSummary => throw _privateConstructorUsedError;
  set ratingSummary(int? value) => throw _privateConstructorUsedError;
  int? get reviewCount => throw _privateConstructorUsedError;
  set reviewCount(int? value) => throw _privateConstructorUsedError;
  ProductsPriceRange? get priceRange => throw _privateConstructorUsedError;
  set priceRange(ProductsPriceRange? value) =>
      throw _privateConstructorUsedError;
  String? get salesUnitOfMeasure => throw _privateConstructorUsedError;
  set salesUnitOfMeasure(String? value) => throw _privateConstructorUsedError;
  String? get stockStatus => throw _privateConstructorUsedError;
  set stockStatus(String? value) => throw _privateConstructorUsedError;
  ProductsDescription? get shortDescription =>
      throw _privateConstructorUsedError;
  set shortDescription(ProductsDescription? value) =>
      throw _privateConstructorUsedError;
  List<TaxAmount> get taxAmount => throw _privateConstructorUsedError;
  set taxAmount(List<TaxAmount> value) => throw _privateConstructorUsedError;
  List<Ribbons> get ribbons => throw _privateConstructorUsedError;
  set ribbons(List<Ribbons> value) => throw _privateConstructorUsedError;
  List<ProductsCategory> get categories => throw _privateConstructorUsedError;
  set categories(List<ProductsCategory> value) =>
      throw _privateConstructorUsedError;
  List<ProductsRelatedProducts> get relatedProducts =>
      throw _privateConstructorUsedError;
  set relatedProducts(List<ProductsRelatedProducts> value) =>
      throw _privateConstructorUsedError;
  List<ProductsRelatedProducts> get upsellProducts =>
      throw _privateConstructorUsedError;
  set upsellProducts(List<ProductsRelatedProducts> value) =>
      throw _privateConstructorUsedError;
  List<ProductsRelatedProducts> get crosssellProducts =>
      throw _privateConstructorUsedError;
  set crosssellProducts(List<ProductsRelatedProducts> value) =>
      throw _privateConstructorUsedError;
  List<ProductsItems> get associatedProducts =>
      throw _privateConstructorUsedError;
  set associatedProducts(List<ProductsItems> value) =>
      throw _privateConstructorUsedError;
  int get isCatalogExtended => throw _privateConstructorUsedError;
  set isCatalogExtended(int value) => throw _privateConstructorUsedError;
  double get quantity => throw _privateConstructorUsedError;
  set quantity(double value) => throw _privateConstructorUsedError;

  /// Serializes this ProductsItems to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProductsItems
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductsItemsCopyWith<ProductsItems> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductsItemsCopyWith<$Res> {
  factory $ProductsItemsCopyWith(
    ProductsItems value,
    $Res Function(ProductsItems) then,
  ) = _$ProductsItemsCopyWithImpl<$Res, ProductsItems>;
  @useResult
  $Res call({
    int id,
    double minSaleQty,
    double margin,
    String typeId,
    String? informacionNutricional,
    String? ingredientes,
    int? marca,
    List<String>? labels,
    String? type,
    String? measureUnit,
    String? brandName,
    String? upc,
    String name,
    String sku,
    List<String> tags,
    String? uid,
    String? urlKey,
    String? composicion,
    double? specialPrice,
    List<ProductsVariants> variants,
    ProductsDescription? description,
    ProductsImage image,
    ProductsImage? smallImage,
    List<ProductsMediaGallery> mediaGallery,
    int? ratingSummary,
    int? reviewCount,
    ProductsPriceRange? priceRange,
    String? salesUnitOfMeasure,
    String? stockStatus,
    ProductsDescription? shortDescription,
    List<TaxAmount> taxAmount,
    List<Ribbons> ribbons,
    List<ProductsCategory> categories,
    List<ProductsRelatedProducts> relatedProducts,
    List<ProductsRelatedProducts> upsellProducts,
    List<ProductsRelatedProducts> crosssellProducts,
    List<ProductsItems> associatedProducts,
    int isCatalogExtended,
    double quantity,
  });

  $ProductsDescriptionCopyWith<$Res>? get description;
  $ProductsImageCopyWith<$Res> get image;
  $ProductsImageCopyWith<$Res>? get smallImage;
  $ProductsPriceRangeCopyWith<$Res>? get priceRange;
  $ProductsDescriptionCopyWith<$Res>? get shortDescription;
}

/// @nodoc
class _$ProductsItemsCopyWithImpl<$Res, $Val extends ProductsItems>
    implements $ProductsItemsCopyWith<$Res> {
  _$ProductsItemsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductsItems
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? minSaleQty = null,
    Object? margin = null,
    Object? typeId = null,
    Object? informacionNutricional = freezed,
    Object? ingredientes = freezed,
    Object? marca = freezed,
    Object? labels = freezed,
    Object? type = freezed,
    Object? measureUnit = freezed,
    Object? brandName = freezed,
    Object? upc = freezed,
    Object? name = null,
    Object? sku = null,
    Object? tags = null,
    Object? uid = freezed,
    Object? urlKey = freezed,
    Object? composicion = freezed,
    Object? specialPrice = freezed,
    Object? variants = null,
    Object? description = freezed,
    Object? image = null,
    Object? smallImage = freezed,
    Object? mediaGallery = null,
    Object? ratingSummary = freezed,
    Object? reviewCount = freezed,
    Object? priceRange = freezed,
    Object? salesUnitOfMeasure = freezed,
    Object? stockStatus = freezed,
    Object? shortDescription = freezed,
    Object? taxAmount = null,
    Object? ribbons = null,
    Object? categories = null,
    Object? relatedProducts = null,
    Object? upsellProducts = null,
    Object? crosssellProducts = null,
    Object? associatedProducts = null,
    Object? isCatalogExtended = null,
    Object? quantity = null,
  }) {
    return _then(
      _value.copyWith(
            id:
                null == id
                    ? _value.id
                    : id // ignore: cast_nullable_to_non_nullable
                        as int,
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
            typeId:
                null == typeId
                    ? _value.typeId
                    : typeId // ignore: cast_nullable_to_non_nullable
                        as String,
            informacionNutricional:
                freezed == informacionNutricional
                    ? _value.informacionNutricional
                    : informacionNutricional // ignore: cast_nullable_to_non_nullable
                        as String?,
            ingredientes:
                freezed == ingredientes
                    ? _value.ingredientes
                    : ingredientes // ignore: cast_nullable_to_non_nullable
                        as String?,
            marca:
                freezed == marca
                    ? _value.marca
                    : marca // ignore: cast_nullable_to_non_nullable
                        as int?,
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
            measureUnit:
                freezed == measureUnit
                    ? _value.measureUnit
                    : measureUnit // ignore: cast_nullable_to_non_nullable
                        as String?,
            brandName:
                freezed == brandName
                    ? _value.brandName
                    : brandName // ignore: cast_nullable_to_non_nullable
                        as String?,
            upc:
                freezed == upc
                    ? _value.upc
                    : upc // ignore: cast_nullable_to_non_nullable
                        as String?,
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
            tags:
                null == tags
                    ? _value.tags
                    : tags // ignore: cast_nullable_to_non_nullable
                        as List<String>,
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
            composicion:
                freezed == composicion
                    ? _value.composicion
                    : composicion // ignore: cast_nullable_to_non_nullable
                        as String?,
            specialPrice:
                freezed == specialPrice
                    ? _value.specialPrice
                    : specialPrice // ignore: cast_nullable_to_non_nullable
                        as double?,
            variants:
                null == variants
                    ? _value.variants
                    : variants // ignore: cast_nullable_to_non_nullable
                        as List<ProductsVariants>,
            description:
                freezed == description
                    ? _value.description
                    : description // ignore: cast_nullable_to_non_nullable
                        as ProductsDescription?,
            image:
                null == image
                    ? _value.image
                    : image // ignore: cast_nullable_to_non_nullable
                        as ProductsImage,
            smallImage:
                freezed == smallImage
                    ? _value.smallImage
                    : smallImage // ignore: cast_nullable_to_non_nullable
                        as ProductsImage?,
            mediaGallery:
                null == mediaGallery
                    ? _value.mediaGallery
                    : mediaGallery // ignore: cast_nullable_to_non_nullable
                        as List<ProductsMediaGallery>,
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
            priceRange:
                freezed == priceRange
                    ? _value.priceRange
                    : priceRange // ignore: cast_nullable_to_non_nullable
                        as ProductsPriceRange?,
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
            shortDescription:
                freezed == shortDescription
                    ? _value.shortDescription
                    : shortDescription // ignore: cast_nullable_to_non_nullable
                        as ProductsDescription?,
            taxAmount:
                null == taxAmount
                    ? _value.taxAmount
                    : taxAmount // ignore: cast_nullable_to_non_nullable
                        as List<TaxAmount>,
            ribbons:
                null == ribbons
                    ? _value.ribbons
                    : ribbons // ignore: cast_nullable_to_non_nullable
                        as List<Ribbons>,
            categories:
                null == categories
                    ? _value.categories
                    : categories // ignore: cast_nullable_to_non_nullable
                        as List<ProductsCategory>,
            relatedProducts:
                null == relatedProducts
                    ? _value.relatedProducts
                    : relatedProducts // ignore: cast_nullable_to_non_nullable
                        as List<ProductsRelatedProducts>,
            upsellProducts:
                null == upsellProducts
                    ? _value.upsellProducts
                    : upsellProducts // ignore: cast_nullable_to_non_nullable
                        as List<ProductsRelatedProducts>,
            crosssellProducts:
                null == crosssellProducts
                    ? _value.crosssellProducts
                    : crosssellProducts // ignore: cast_nullable_to_non_nullable
                        as List<ProductsRelatedProducts>,
            associatedProducts:
                null == associatedProducts
                    ? _value.associatedProducts
                    : associatedProducts // ignore: cast_nullable_to_non_nullable
                        as List<ProductsItems>,
            isCatalogExtended:
                null == isCatalogExtended
                    ? _value.isCatalogExtended
                    : isCatalogExtended // ignore: cast_nullable_to_non_nullable
                        as int,
            quantity:
                null == quantity
                    ? _value.quantity
                    : quantity // ignore: cast_nullable_to_non_nullable
                        as double,
          )
          as $Val,
    );
  }

  /// Create a copy of ProductsItems
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProductsDescriptionCopyWith<$Res>? get description {
    if (_value.description == null) {
      return null;
    }

    return $ProductsDescriptionCopyWith<$Res>(_value.description!, (value) {
      return _then(_value.copyWith(description: value) as $Val);
    });
  }

  /// Create a copy of ProductsItems
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProductsImageCopyWith<$Res> get image {
    return $ProductsImageCopyWith<$Res>(_value.image, (value) {
      return _then(_value.copyWith(image: value) as $Val);
    });
  }

  /// Create a copy of ProductsItems
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProductsImageCopyWith<$Res>? get smallImage {
    if (_value.smallImage == null) {
      return null;
    }

    return $ProductsImageCopyWith<$Res>(_value.smallImage!, (value) {
      return _then(_value.copyWith(smallImage: value) as $Val);
    });
  }

  /// Create a copy of ProductsItems
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProductsPriceRangeCopyWith<$Res>? get priceRange {
    if (_value.priceRange == null) {
      return null;
    }

    return $ProductsPriceRangeCopyWith<$Res>(_value.priceRange!, (value) {
      return _then(_value.copyWith(priceRange: value) as $Val);
    });
  }

  /// Create a copy of ProductsItems
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProductsDescriptionCopyWith<$Res>? get shortDescription {
    if (_value.shortDescription == null) {
      return null;
    }

    return $ProductsDescriptionCopyWith<$Res>(_value.shortDescription!, (
      value,
    ) {
      return _then(_value.copyWith(shortDescription: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProductsItemsImplCopyWith<$Res>
    implements $ProductsItemsCopyWith<$Res> {
  factory _$$ProductsItemsImplCopyWith(
    _$ProductsItemsImpl value,
    $Res Function(_$ProductsItemsImpl) then,
  ) = __$$ProductsItemsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int id,
    double minSaleQty,
    double margin,
    String typeId,
    String? informacionNutricional,
    String? ingredientes,
    int? marca,
    List<String>? labels,
    String? type,
    String? measureUnit,
    String? brandName,
    String? upc,
    String name,
    String sku,
    List<String> tags,
    String? uid,
    String? urlKey,
    String? composicion,
    double? specialPrice,
    List<ProductsVariants> variants,
    ProductsDescription? description,
    ProductsImage image,
    ProductsImage? smallImage,
    List<ProductsMediaGallery> mediaGallery,
    int? ratingSummary,
    int? reviewCount,
    ProductsPriceRange? priceRange,
    String? salesUnitOfMeasure,
    String? stockStatus,
    ProductsDescription? shortDescription,
    List<TaxAmount> taxAmount,
    List<Ribbons> ribbons,
    List<ProductsCategory> categories,
    List<ProductsRelatedProducts> relatedProducts,
    List<ProductsRelatedProducts> upsellProducts,
    List<ProductsRelatedProducts> crosssellProducts,
    List<ProductsItems> associatedProducts,
    int isCatalogExtended,
    double quantity,
  });

  @override
  $ProductsDescriptionCopyWith<$Res>? get description;
  @override
  $ProductsImageCopyWith<$Res> get image;
  @override
  $ProductsImageCopyWith<$Res>? get smallImage;
  @override
  $ProductsPriceRangeCopyWith<$Res>? get priceRange;
  @override
  $ProductsDescriptionCopyWith<$Res>? get shortDescription;
}

/// @nodoc
class __$$ProductsItemsImplCopyWithImpl<$Res>
    extends _$ProductsItemsCopyWithImpl<$Res, _$ProductsItemsImpl>
    implements _$$ProductsItemsImplCopyWith<$Res> {
  __$$ProductsItemsImplCopyWithImpl(
    _$ProductsItemsImpl _value,
    $Res Function(_$ProductsItemsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ProductsItems
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? minSaleQty = null,
    Object? margin = null,
    Object? typeId = null,
    Object? informacionNutricional = freezed,
    Object? ingredientes = freezed,
    Object? marca = freezed,
    Object? labels = freezed,
    Object? type = freezed,
    Object? measureUnit = freezed,
    Object? brandName = freezed,
    Object? upc = freezed,
    Object? name = null,
    Object? sku = null,
    Object? tags = null,
    Object? uid = freezed,
    Object? urlKey = freezed,
    Object? composicion = freezed,
    Object? specialPrice = freezed,
    Object? variants = null,
    Object? description = freezed,
    Object? image = null,
    Object? smallImage = freezed,
    Object? mediaGallery = null,
    Object? ratingSummary = freezed,
    Object? reviewCount = freezed,
    Object? priceRange = freezed,
    Object? salesUnitOfMeasure = freezed,
    Object? stockStatus = freezed,
    Object? shortDescription = freezed,
    Object? taxAmount = null,
    Object? ribbons = null,
    Object? categories = null,
    Object? relatedProducts = null,
    Object? upsellProducts = null,
    Object? crosssellProducts = null,
    Object? associatedProducts = null,
    Object? isCatalogExtended = null,
    Object? quantity = null,
  }) {
    return _then(
      _$ProductsItemsImpl(
        id:
            null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                    as int,
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
        typeId:
            null == typeId
                ? _value.typeId
                : typeId // ignore: cast_nullable_to_non_nullable
                    as String,
        informacionNutricional:
            freezed == informacionNutricional
                ? _value.informacionNutricional
                : informacionNutricional // ignore: cast_nullable_to_non_nullable
                    as String?,
        ingredientes:
            freezed == ingredientes
                ? _value.ingredientes
                : ingredientes // ignore: cast_nullable_to_non_nullable
                    as String?,
        marca:
            freezed == marca
                ? _value.marca
                : marca // ignore: cast_nullable_to_non_nullable
                    as int?,
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
        measureUnit:
            freezed == measureUnit
                ? _value.measureUnit
                : measureUnit // ignore: cast_nullable_to_non_nullable
                    as String?,
        brandName:
            freezed == brandName
                ? _value.brandName
                : brandName // ignore: cast_nullable_to_non_nullable
                    as String?,
        upc:
            freezed == upc
                ? _value.upc
                : upc // ignore: cast_nullable_to_non_nullable
                    as String?,
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
        tags:
            null == tags
                ? _value.tags
                : tags // ignore: cast_nullable_to_non_nullable
                    as List<String>,
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
        composicion:
            freezed == composicion
                ? _value.composicion
                : composicion // ignore: cast_nullable_to_non_nullable
                    as String?,
        specialPrice:
            freezed == specialPrice
                ? _value.specialPrice
                : specialPrice // ignore: cast_nullable_to_non_nullable
                    as double?,
        variants:
            null == variants
                ? _value.variants
                : variants // ignore: cast_nullable_to_non_nullable
                    as List<ProductsVariants>,
        description:
            freezed == description
                ? _value.description
                : description // ignore: cast_nullable_to_non_nullable
                    as ProductsDescription?,
        image:
            null == image
                ? _value.image
                : image // ignore: cast_nullable_to_non_nullable
                    as ProductsImage,
        smallImage:
            freezed == smallImage
                ? _value.smallImage
                : smallImage // ignore: cast_nullable_to_non_nullable
                    as ProductsImage?,
        mediaGallery:
            null == mediaGallery
                ? _value.mediaGallery
                : mediaGallery // ignore: cast_nullable_to_non_nullable
                    as List<ProductsMediaGallery>,
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
        priceRange:
            freezed == priceRange
                ? _value.priceRange
                : priceRange // ignore: cast_nullable_to_non_nullable
                    as ProductsPriceRange?,
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
        shortDescription:
            freezed == shortDescription
                ? _value.shortDescription
                : shortDescription // ignore: cast_nullable_to_non_nullable
                    as ProductsDescription?,
        taxAmount:
            null == taxAmount
                ? _value.taxAmount
                : taxAmount // ignore: cast_nullable_to_non_nullable
                    as List<TaxAmount>,
        ribbons:
            null == ribbons
                ? _value.ribbons
                : ribbons // ignore: cast_nullable_to_non_nullable
                    as List<Ribbons>,
        categories:
            null == categories
                ? _value.categories
                : categories // ignore: cast_nullable_to_non_nullable
                    as List<ProductsCategory>,
        relatedProducts:
            null == relatedProducts
                ? _value.relatedProducts
                : relatedProducts // ignore: cast_nullable_to_non_nullable
                    as List<ProductsRelatedProducts>,
        upsellProducts:
            null == upsellProducts
                ? _value.upsellProducts
                : upsellProducts // ignore: cast_nullable_to_non_nullable
                    as List<ProductsRelatedProducts>,
        crosssellProducts:
            null == crosssellProducts
                ? _value.crosssellProducts
                : crosssellProducts // ignore: cast_nullable_to_non_nullable
                    as List<ProductsRelatedProducts>,
        associatedProducts:
            null == associatedProducts
                ? _value.associatedProducts
                : associatedProducts // ignore: cast_nullable_to_non_nullable
                    as List<ProductsItems>,
        isCatalogExtended:
            null == isCatalogExtended
                ? _value.isCatalogExtended
                : isCatalogExtended // ignore: cast_nullable_to_non_nullable
                    as int,
        quantity:
            null == quantity
                ? _value.quantity
                : quantity // ignore: cast_nullable_to_non_nullable
                    as double,
      ),
    );
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$ProductsItemsImpl implements _ProductsItems {
  _$ProductsItemsImpl({
    required this.id,
    required this.minSaleQty,
    required this.margin,
    required this.typeId,
    this.informacionNutricional,
    this.ingredientes,
    this.marca,
    this.labels,
    this.type,
    this.measureUnit,
    this.brandName,
    this.upc,
    required this.name,
    required this.sku,
    required this.tags,
    this.uid,
    this.urlKey,
    this.composicion,
    this.specialPrice,
    this.variants = const [],
    this.description,
    required this.image,
    this.smallImage,
    this.mediaGallery = const [],
    this.ratingSummary,
    this.reviewCount,
    this.priceRange,
    this.salesUnitOfMeasure,
    this.stockStatus,
    this.shortDescription,
    this.taxAmount = const [],
    this.ribbons = const [],
    this.categories = const [],
    this.relatedProducts = const [],
    this.upsellProducts = const [],
    this.crosssellProducts = const [],
    this.associatedProducts = const [],
    this.isCatalogExtended = 0,
    this.quantity = 0,
  });

  factory _$ProductsItemsImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductsItemsImplFromJson(json);

  @override
  int id;
  @override
  double minSaleQty;
  @override
  double margin;
  @override
  String typeId;
  @override
  String? informacionNutricional;
  @override
  String? ingredientes;
  @override
  int? marca;
  @override
  List<String>? labels;
  @override
  String? type;
  @override
  String? measureUnit;
  @override
  String? brandName;
  @override
  String? upc;
  @override
  String name;
  @override
  String sku;
  @override
  List<String> tags;
  @override
  String? uid;
  @override
  String? urlKey;
  @override
  String? composicion;
  @override
  double? specialPrice;
  @override
  @JsonKey()
  List<ProductsVariants> variants;
  @override
  ProductsDescription? description;
  @override
  ProductsImage image;
  @override
  ProductsImage? smallImage;
  @override
  @JsonKey()
  List<ProductsMediaGallery> mediaGallery;
  @override
  int? ratingSummary;
  @override
  int? reviewCount;
  @override
  ProductsPriceRange? priceRange;
  @override
  String? salesUnitOfMeasure;
  @override
  String? stockStatus;
  @override
  ProductsDescription? shortDescription;
  @override
  @JsonKey()
  List<TaxAmount> taxAmount;
  @override
  @JsonKey()
  List<Ribbons> ribbons;
  @override
  @JsonKey()
  List<ProductsCategory> categories;
  @override
  @JsonKey()
  List<ProductsRelatedProducts> relatedProducts;
  @override
  @JsonKey()
  List<ProductsRelatedProducts> upsellProducts;
  @override
  @JsonKey()
  List<ProductsRelatedProducts> crosssellProducts;
  @override
  @JsonKey()
  List<ProductsItems> associatedProducts;
  @override
  @JsonKey()
  int isCatalogExtended;
  @override
  @JsonKey()
  double quantity;

  @override
  String toString() {
    return 'ProductsItems(id: $id, minSaleQty: $minSaleQty, margin: $margin, typeId: $typeId, informacionNutricional: $informacionNutricional, ingredientes: $ingredientes, marca: $marca, labels: $labels, type: $type, measureUnit: $measureUnit, brandName: $brandName, upc: $upc, name: $name, sku: $sku, tags: $tags, uid: $uid, urlKey: $urlKey, composicion: $composicion, specialPrice: $specialPrice, variants: $variants, description: $description, image: $image, smallImage: $smallImage, mediaGallery: $mediaGallery, ratingSummary: $ratingSummary, reviewCount: $reviewCount, priceRange: $priceRange, salesUnitOfMeasure: $salesUnitOfMeasure, stockStatus: $stockStatus, shortDescription: $shortDescription, taxAmount: $taxAmount, ribbons: $ribbons, categories: $categories, relatedProducts: $relatedProducts, upsellProducts: $upsellProducts, crosssellProducts: $crosssellProducts, associatedProducts: $associatedProducts, isCatalogExtended: $isCatalogExtended, quantity: $quantity)';
  }

  /// Create a copy of ProductsItems
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductsItemsImplCopyWith<_$ProductsItemsImpl> get copyWith =>
      __$$ProductsItemsImplCopyWithImpl<_$ProductsItemsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductsItemsImplToJson(this);
  }
}

abstract class _ProductsItems implements ProductsItems {
  factory _ProductsItems({
    required int id,
    required double minSaleQty,
    required double margin,
    required String typeId,
    String? informacionNutricional,
    String? ingredientes,
    int? marca,
    List<String>? labels,
    String? type,
    String? measureUnit,
    String? brandName,
    String? upc,
    required String name,
    required String sku,
    required List<String> tags,
    String? uid,
    String? urlKey,
    String? composicion,
    double? specialPrice,
    List<ProductsVariants> variants,
    ProductsDescription? description,
    required ProductsImage image,
    ProductsImage? smallImage,
    List<ProductsMediaGallery> mediaGallery,
    int? ratingSummary,
    int? reviewCount,
    ProductsPriceRange? priceRange,
    String? salesUnitOfMeasure,
    String? stockStatus,
    ProductsDescription? shortDescription,
    List<TaxAmount> taxAmount,
    List<Ribbons> ribbons,
    List<ProductsCategory> categories,
    List<ProductsRelatedProducts> relatedProducts,
    List<ProductsRelatedProducts> upsellProducts,
    List<ProductsRelatedProducts> crosssellProducts,
    List<ProductsItems> associatedProducts,
    int isCatalogExtended,
    double quantity,
  }) = _$ProductsItemsImpl;

  factory _ProductsItems.fromJson(Map<String, dynamic> json) =
      _$ProductsItemsImpl.fromJson;

  @override
  int get id;
  set id(int value);
  @override
  double get minSaleQty;
  set minSaleQty(double value);
  @override
  double get margin;
  set margin(double value);
  @override
  String get typeId;
  set typeId(String value);
  @override
  String? get informacionNutricional;
  set informacionNutricional(String? value);
  @override
  String? get ingredientes;
  set ingredientes(String? value);
  @override
  int? get marca;
  set marca(int? value);
  @override
  List<String>? get labels;
  set labels(List<String>? value);
  @override
  String? get type;
  set type(String? value);
  @override
  String? get measureUnit;
  set measureUnit(String? value);
  @override
  String? get brandName;
  set brandName(String? value);
  @override
  String? get upc;
  set upc(String? value);
  @override
  String get name;
  set name(String value);
  @override
  String get sku;
  set sku(String value);
  @override
  List<String> get tags;
  set tags(List<String> value);
  @override
  String? get uid;
  set uid(String? value);
  @override
  String? get urlKey;
  set urlKey(String? value);
  @override
  String? get composicion;
  set composicion(String? value);
  @override
  double? get specialPrice;
  set specialPrice(double? value);
  @override
  List<ProductsVariants> get variants;
  set variants(List<ProductsVariants> value);
  @override
  ProductsDescription? get description;
  set description(ProductsDescription? value);
  @override
  ProductsImage get image;
  set image(ProductsImage value);
  @override
  ProductsImage? get smallImage;
  set smallImage(ProductsImage? value);
  @override
  List<ProductsMediaGallery> get mediaGallery;
  set mediaGallery(List<ProductsMediaGallery> value);
  @override
  int? get ratingSummary;
  set ratingSummary(int? value);
  @override
  int? get reviewCount;
  set reviewCount(int? value);
  @override
  ProductsPriceRange? get priceRange;
  set priceRange(ProductsPriceRange? value);
  @override
  String? get salesUnitOfMeasure;
  set salesUnitOfMeasure(String? value);
  @override
  String? get stockStatus;
  set stockStatus(String? value);
  @override
  ProductsDescription? get shortDescription;
  set shortDescription(ProductsDescription? value);
  @override
  List<TaxAmount> get taxAmount;
  set taxAmount(List<TaxAmount> value);
  @override
  List<Ribbons> get ribbons;
  set ribbons(List<Ribbons> value);
  @override
  List<ProductsCategory> get categories;
  set categories(List<ProductsCategory> value);
  @override
  List<ProductsRelatedProducts> get relatedProducts;
  set relatedProducts(List<ProductsRelatedProducts> value);
  @override
  List<ProductsRelatedProducts> get upsellProducts;
  set upsellProducts(List<ProductsRelatedProducts> value);
  @override
  List<ProductsRelatedProducts> get crosssellProducts;
  set crosssellProducts(List<ProductsRelatedProducts> value);
  @override
  List<ProductsItems> get associatedProducts;
  set associatedProducts(List<ProductsItems> value);
  @override
  int get isCatalogExtended;
  set isCatalogExtended(int value);
  @override
  double get quantity;
  set quantity(double value);

  /// Create a copy of ProductsItems
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductsItemsImplCopyWith<_$ProductsItemsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TaxAmount _$TaxAmountFromJson(Map<String, dynamic> json) {
  return _TaxAmount.fromJson(json);
}

/// @nodoc
mixin _$TaxAmount {
  int get id => throw _privateConstructorUsedError;
  double get value => throw _privateConstructorUsedError;

  /// Serializes this TaxAmount to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TaxAmount
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TaxAmountCopyWith<TaxAmount> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaxAmountCopyWith<$Res> {
  factory $TaxAmountCopyWith(TaxAmount value, $Res Function(TaxAmount) then) =
      _$TaxAmountCopyWithImpl<$Res, TaxAmount>;
  @useResult
  $Res call({int id, double value});
}

/// @nodoc
class _$TaxAmountCopyWithImpl<$Res, $Val extends TaxAmount>
    implements $TaxAmountCopyWith<$Res> {
  _$TaxAmountCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TaxAmount
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
abstract class _$$TaxAmountImplCopyWith<$Res>
    implements $TaxAmountCopyWith<$Res> {
  factory _$$TaxAmountImplCopyWith(
    _$TaxAmountImpl value,
    $Res Function(_$TaxAmountImpl) then,
  ) = __$$TaxAmountImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, double value});
}

/// @nodoc
class __$$TaxAmountImplCopyWithImpl<$Res>
    extends _$TaxAmountCopyWithImpl<$Res, _$TaxAmountImpl>
    implements _$$TaxAmountImplCopyWith<$Res> {
  __$$TaxAmountImplCopyWithImpl(
    _$TaxAmountImpl _value,
    $Res Function(_$TaxAmountImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TaxAmount
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? id = null, Object? value = null}) {
    return _then(
      _$TaxAmountImpl(
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
class _$TaxAmountImpl implements _TaxAmount {
  const _$TaxAmountImpl({required this.id, required this.value});

  factory _$TaxAmountImpl.fromJson(Map<String, dynamic> json) =>
      _$$TaxAmountImplFromJson(json);

  @override
  final int id;
  @override
  final double value;

  @override
  String toString() {
    return 'TaxAmount(id: $id, value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TaxAmountImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, value);

  /// Create a copy of TaxAmount
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TaxAmountImplCopyWith<_$TaxAmountImpl> get copyWith =>
      __$$TaxAmountImplCopyWithImpl<_$TaxAmountImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TaxAmountImplToJson(this);
  }
}

abstract class _TaxAmount implements TaxAmount {
  const factory _TaxAmount({
    required final int id,
    required final double value,
  }) = _$TaxAmountImpl;

  factory _TaxAmount.fromJson(Map<String, dynamic> json) =
      _$TaxAmountImpl.fromJson;

  @override
  int get id;
  @override
  double get value;

  /// Create a copy of TaxAmount
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TaxAmountImplCopyWith<_$TaxAmountImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Ribbons _$RibbonsFromJson(Map<String, dynamic> json) {
  return _Ribbons.fromJson(json);
}

/// @nodoc
mixin _$Ribbons {
  String get code => throw _privateConstructorUsedError;
  String get color => throw _privateConstructorUsedError;
  String get text => throw _privateConstructorUsedError;

  /// Serializes this Ribbons to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Ribbons
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RibbonsCopyWith<Ribbons> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RibbonsCopyWith<$Res> {
  factory $RibbonsCopyWith(Ribbons value, $Res Function(Ribbons) then) =
      _$RibbonsCopyWithImpl<$Res, Ribbons>;
  @useResult
  $Res call({String code, String color, String text});
}

/// @nodoc
class _$RibbonsCopyWithImpl<$Res, $Val extends Ribbons>
    implements $RibbonsCopyWith<$Res> {
  _$RibbonsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Ribbons
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
abstract class _$$RibbonsImplCopyWith<$Res> implements $RibbonsCopyWith<$Res> {
  factory _$$RibbonsImplCopyWith(
    _$RibbonsImpl value,
    $Res Function(_$RibbonsImpl) then,
  ) = __$$RibbonsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String code, String color, String text});
}

/// @nodoc
class __$$RibbonsImplCopyWithImpl<$Res>
    extends _$RibbonsCopyWithImpl<$Res, _$RibbonsImpl>
    implements _$$RibbonsImplCopyWith<$Res> {
  __$$RibbonsImplCopyWithImpl(
    _$RibbonsImpl _value,
    $Res Function(_$RibbonsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Ribbons
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? code = null, Object? color = null, Object? text = null}) {
    return _then(
      _$RibbonsImpl(
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
class _$RibbonsImpl implements _Ribbons {
  const _$RibbonsImpl({
    required this.code,
    required this.color,
    required this.text,
  });

  factory _$RibbonsImpl.fromJson(Map<String, dynamic> json) =>
      _$$RibbonsImplFromJson(json);

  @override
  final String code;
  @override
  final String color;
  @override
  final String text;

  @override
  String toString() {
    return 'Ribbons(code: $code, color: $color, text: $text)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RibbonsImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.text, text) || other.text == text));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, code, color, text);

  /// Create a copy of Ribbons
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RibbonsImplCopyWith<_$RibbonsImpl> get copyWith =>
      __$$RibbonsImplCopyWithImpl<_$RibbonsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RibbonsImplToJson(this);
  }
}

abstract class _Ribbons implements Ribbons {
  const factory _Ribbons({
    required final String code,
    required final String color,
    required final String text,
  }) = _$RibbonsImpl;

  factory _Ribbons.fromJson(Map<String, dynamic> json) = _$RibbonsImpl.fromJson;

  @override
  String get code;
  @override
  String get color;
  @override
  String get text;

  /// Create a copy of Ribbons
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RibbonsImplCopyWith<_$RibbonsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ProductsRelatedProducts _$ProductsRelatedProductsFromJson(
  Map<String, dynamic> json,
) {
  return _ProductsRelatedProducts.fromJson(json);
}

/// @nodoc
mixin _$ProductsRelatedProducts {
  String get name => throw _privateConstructorUsedError;
  String get uid => throw _privateConstructorUsedError;
  String get sku => throw _privateConstructorUsedError;

  /// Serializes this ProductsRelatedProducts to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProductsRelatedProducts
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductsRelatedProductsCopyWith<ProductsRelatedProducts> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductsRelatedProductsCopyWith<$Res> {
  factory $ProductsRelatedProductsCopyWith(
    ProductsRelatedProducts value,
    $Res Function(ProductsRelatedProducts) then,
  ) = _$ProductsRelatedProductsCopyWithImpl<$Res, ProductsRelatedProducts>;
  @useResult
  $Res call({String name, String uid, String sku});
}

/// @nodoc
class _$ProductsRelatedProductsCopyWithImpl<
  $Res,
  $Val extends ProductsRelatedProducts
>
    implements $ProductsRelatedProductsCopyWith<$Res> {
  _$ProductsRelatedProductsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductsRelatedProducts
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
abstract class _$$ProductsRelatedProductsImplCopyWith<$Res>
    implements $ProductsRelatedProductsCopyWith<$Res> {
  factory _$$ProductsRelatedProductsImplCopyWith(
    _$ProductsRelatedProductsImpl value,
    $Res Function(_$ProductsRelatedProductsImpl) then,
  ) = __$$ProductsRelatedProductsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String uid, String sku});
}

/// @nodoc
class __$$ProductsRelatedProductsImplCopyWithImpl<$Res>
    extends
        _$ProductsRelatedProductsCopyWithImpl<
          $Res,
          _$ProductsRelatedProductsImpl
        >
    implements _$$ProductsRelatedProductsImplCopyWith<$Res> {
  __$$ProductsRelatedProductsImplCopyWithImpl(
    _$ProductsRelatedProductsImpl _value,
    $Res Function(_$ProductsRelatedProductsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ProductsRelatedProducts
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? name = null, Object? uid = null, Object? sku = null}) {
    return _then(
      _$ProductsRelatedProductsImpl(
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
class _$ProductsRelatedProductsImpl implements _ProductsRelatedProducts {
  const _$ProductsRelatedProductsImpl({
    required this.name,
    required this.uid,
    required this.sku,
  });

  factory _$ProductsRelatedProductsImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductsRelatedProductsImplFromJson(json);

  @override
  final String name;
  @override
  final String uid;
  @override
  final String sku;

  @override
  String toString() {
    return 'ProductsRelatedProducts(name: $name, uid: $uid, sku: $sku)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductsRelatedProductsImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.uid, uid) || other.uid == uid) &&
            (identical(other.sku, sku) || other.sku == sku));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, uid, sku);

  /// Create a copy of ProductsRelatedProducts
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductsRelatedProductsImplCopyWith<_$ProductsRelatedProductsImpl>
  get copyWith => __$$ProductsRelatedProductsImplCopyWithImpl<
    _$ProductsRelatedProductsImpl
  >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductsRelatedProductsImplToJson(this);
  }
}

abstract class _ProductsRelatedProducts implements ProductsRelatedProducts {
  const factory _ProductsRelatedProducts({
    required final String name,
    required final String uid,
    required final String sku,
  }) = _$ProductsRelatedProductsImpl;

  factory _ProductsRelatedProducts.fromJson(Map<String, dynamic> json) =
      _$ProductsRelatedProductsImpl.fromJson;

  @override
  String get name;
  @override
  String get uid;
  @override
  String get sku;

  /// Create a copy of ProductsRelatedProducts
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductsRelatedProductsImplCopyWith<_$ProductsRelatedProductsImpl>
  get copyWith => throw _privateConstructorUsedError;
}

ProductsDescription _$ProductsDescriptionFromJson(Map<String, dynamic> json) {
  return _ProductsDescription.fromJson(json);
}

/// @nodoc
mixin _$ProductsDescription {
  String get html => throw _privateConstructorUsedError;

  /// Serializes this ProductsDescription to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProductsDescription
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductsDescriptionCopyWith<ProductsDescription> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductsDescriptionCopyWith<$Res> {
  factory $ProductsDescriptionCopyWith(
    ProductsDescription value,
    $Res Function(ProductsDescription) then,
  ) = _$ProductsDescriptionCopyWithImpl<$Res, ProductsDescription>;
  @useResult
  $Res call({String html});
}

/// @nodoc
class _$ProductsDescriptionCopyWithImpl<$Res, $Val extends ProductsDescription>
    implements $ProductsDescriptionCopyWith<$Res> {
  _$ProductsDescriptionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductsDescription
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
abstract class _$$ProductsDescriptionImplCopyWith<$Res>
    implements $ProductsDescriptionCopyWith<$Res> {
  factory _$$ProductsDescriptionImplCopyWith(
    _$ProductsDescriptionImpl value,
    $Res Function(_$ProductsDescriptionImpl) then,
  ) = __$$ProductsDescriptionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String html});
}

/// @nodoc
class __$$ProductsDescriptionImplCopyWithImpl<$Res>
    extends _$ProductsDescriptionCopyWithImpl<$Res, _$ProductsDescriptionImpl>
    implements _$$ProductsDescriptionImplCopyWith<$Res> {
  __$$ProductsDescriptionImplCopyWithImpl(
    _$ProductsDescriptionImpl _value,
    $Res Function(_$ProductsDescriptionImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ProductsDescription
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? html = null}) {
    return _then(
      _$ProductsDescriptionImpl(
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
class _$ProductsDescriptionImpl implements _ProductsDescription {
  const _$ProductsDescriptionImpl({required this.html});

  factory _$ProductsDescriptionImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductsDescriptionImplFromJson(json);

  @override
  final String html;

  @override
  String toString() {
    return 'ProductsDescription(html: $html)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductsDescriptionImpl &&
            (identical(other.html, html) || other.html == html));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, html);

  /// Create a copy of ProductsDescription
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductsDescriptionImplCopyWith<_$ProductsDescriptionImpl> get copyWith =>
      __$$ProductsDescriptionImplCopyWithImpl<_$ProductsDescriptionImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductsDescriptionImplToJson(this);
  }
}

abstract class _ProductsDescription implements ProductsDescription {
  const factory _ProductsDescription({required final String html}) =
      _$ProductsDescriptionImpl;

  factory _ProductsDescription.fromJson(Map<String, dynamic> json) =
      _$ProductsDescriptionImpl.fromJson;

  @override
  String get html;

  /// Create a copy of ProductsDescription
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductsDescriptionImplCopyWith<_$ProductsDescriptionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ProductsImage _$ProductsImageFromJson(Map<String, dynamic> json) {
  return _ProductsImage.fromJson(json);
}

/// @nodoc
mixin _$ProductsImage {
  String get label => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;

  /// Serializes this ProductsImage to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProductsImage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductsImageCopyWith<ProductsImage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductsImageCopyWith<$Res> {
  factory $ProductsImageCopyWith(
    ProductsImage value,
    $Res Function(ProductsImage) then,
  ) = _$ProductsImageCopyWithImpl<$Res, ProductsImage>;
  @useResult
  $Res call({String label, String? url});
}

/// @nodoc
class _$ProductsImageCopyWithImpl<$Res, $Val extends ProductsImage>
    implements $ProductsImageCopyWith<$Res> {
  _$ProductsImageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductsImage
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
abstract class _$$ProductsImageImplCopyWith<$Res>
    implements $ProductsImageCopyWith<$Res> {
  factory _$$ProductsImageImplCopyWith(
    _$ProductsImageImpl value,
    $Res Function(_$ProductsImageImpl) then,
  ) = __$$ProductsImageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String label, String? url});
}

/// @nodoc
class __$$ProductsImageImplCopyWithImpl<$Res>
    extends _$ProductsImageCopyWithImpl<$Res, _$ProductsImageImpl>
    implements _$$ProductsImageImplCopyWith<$Res> {
  __$$ProductsImageImplCopyWithImpl(
    _$ProductsImageImpl _value,
    $Res Function(_$ProductsImageImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ProductsImage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? label = null, Object? url = freezed}) {
    return _then(
      _$ProductsImageImpl(
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
class _$ProductsImageImpl implements _ProductsImage {
  const _$ProductsImageImpl({required this.label, this.url});

  factory _$ProductsImageImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductsImageImplFromJson(json);

  @override
  final String label;
  @override
  final String? url;

  @override
  String toString() {
    return 'ProductsImage(label: $label, url: $url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductsImageImpl &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, label, url);

  /// Create a copy of ProductsImage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductsImageImplCopyWith<_$ProductsImageImpl> get copyWith =>
      __$$ProductsImageImplCopyWithImpl<_$ProductsImageImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductsImageImplToJson(this);
  }
}

abstract class _ProductsImage implements ProductsImage {
  const factory _ProductsImage({
    required final String label,
    final String? url,
  }) = _$ProductsImageImpl;

  factory _ProductsImage.fromJson(Map<String, dynamic> json) =
      _$ProductsImageImpl.fromJson;

  @override
  String get label;
  @override
  String? get url;

  /// Create a copy of ProductsImage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductsImageImplCopyWith<_$ProductsImageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ProductsMediaGallery _$ProductsMediaGalleryFromJson(Map<String, dynamic> json) {
  return _ProductsMediaGallery.fromJson(json);
}

/// @nodoc
mixin _$ProductsMediaGallery {
  String? get label => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;
  int get position => throw _privateConstructorUsedError;
  bool get disabled => throw _privateConstructorUsedError;

  /// Serializes this ProductsMediaGallery to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProductsMediaGallery
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductsMediaGalleryCopyWith<ProductsMediaGallery> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductsMediaGalleryCopyWith<$Res> {
  factory $ProductsMediaGalleryCopyWith(
    ProductsMediaGallery value,
    $Res Function(ProductsMediaGallery) then,
  ) = _$ProductsMediaGalleryCopyWithImpl<$Res, ProductsMediaGallery>;
  @useResult
  $Res call({String? label, String? url, int position, bool disabled});
}

/// @nodoc
class _$ProductsMediaGalleryCopyWithImpl<
  $Res,
  $Val extends ProductsMediaGallery
>
    implements $ProductsMediaGalleryCopyWith<$Res> {
  _$ProductsMediaGalleryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductsMediaGallery
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? label = freezed,
    Object? url = freezed,
    Object? position = null,
    Object? disabled = null,
  }) {
    return _then(
      _value.copyWith(
            label:
                freezed == label
                    ? _value.label
                    : label // ignore: cast_nullable_to_non_nullable
                        as String?,
            url:
                freezed == url
                    ? _value.url
                    : url // ignore: cast_nullable_to_non_nullable
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
abstract class _$$ProductsMediaGalleryImplCopyWith<$Res>
    implements $ProductsMediaGalleryCopyWith<$Res> {
  factory _$$ProductsMediaGalleryImplCopyWith(
    _$ProductsMediaGalleryImpl value,
    $Res Function(_$ProductsMediaGalleryImpl) then,
  ) = __$$ProductsMediaGalleryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? label, String? url, int position, bool disabled});
}

/// @nodoc
class __$$ProductsMediaGalleryImplCopyWithImpl<$Res>
    extends _$ProductsMediaGalleryCopyWithImpl<$Res, _$ProductsMediaGalleryImpl>
    implements _$$ProductsMediaGalleryImplCopyWith<$Res> {
  __$$ProductsMediaGalleryImplCopyWithImpl(
    _$ProductsMediaGalleryImpl _value,
    $Res Function(_$ProductsMediaGalleryImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ProductsMediaGallery
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? label = freezed,
    Object? url = freezed,
    Object? position = null,
    Object? disabled = null,
  }) {
    return _then(
      _$ProductsMediaGalleryImpl(
        label:
            freezed == label
                ? _value.label
                : label // ignore: cast_nullable_to_non_nullable
                    as String?,
        url:
            freezed == url
                ? _value.url
                : url // ignore: cast_nullable_to_non_nullable
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
class _$ProductsMediaGalleryImpl implements _ProductsMediaGallery {
  const _$ProductsMediaGalleryImpl({
    this.label,
    this.url,
    required this.position,
    required this.disabled,
  });

  factory _$ProductsMediaGalleryImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductsMediaGalleryImplFromJson(json);

  @override
  final String? label;
  @override
  final String? url;
  @override
  final int position;
  @override
  final bool disabled;

  @override
  String toString() {
    return 'ProductsMediaGallery(label: $label, url: $url, position: $position, disabled: $disabled)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductsMediaGalleryImpl &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.position, position) ||
                other.position == position) &&
            (identical(other.disabled, disabled) ||
                other.disabled == disabled));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, label, url, position, disabled);

  /// Create a copy of ProductsMediaGallery
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductsMediaGalleryImplCopyWith<_$ProductsMediaGalleryImpl>
  get copyWith =>
      __$$ProductsMediaGalleryImplCopyWithImpl<_$ProductsMediaGalleryImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductsMediaGalleryImplToJson(this);
  }
}

abstract class _ProductsMediaGallery implements ProductsMediaGallery {
  const factory _ProductsMediaGallery({
    final String? label,
    final String? url,
    required final int position,
    required final bool disabled,
  }) = _$ProductsMediaGalleryImpl;

  factory _ProductsMediaGallery.fromJson(Map<String, dynamic> json) =
      _$ProductsMediaGalleryImpl.fromJson;

  @override
  String? get label;
  @override
  String? get url;
  @override
  int get position;
  @override
  bool get disabled;

  /// Create a copy of ProductsMediaGallery
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductsMediaGalleryImplCopyWith<_$ProductsMediaGalleryImpl>
  get copyWith => throw _privateConstructorUsedError;
}

ProductsPriceRange _$ProductsPriceRangeFromJson(Map<String, dynamic> json) {
  return _ProductsPriceRange.fromJson(json);
}

/// @nodoc
mixin _$ProductsPriceRange {
  ProductsOptionPrice? get minimumPrice => throw _privateConstructorUsedError;
  ProductsOptionPrice? get maximumPrice => throw _privateConstructorUsedError;

  /// Serializes this ProductsPriceRange to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProductsPriceRange
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductsPriceRangeCopyWith<ProductsPriceRange> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductsPriceRangeCopyWith<$Res> {
  factory $ProductsPriceRangeCopyWith(
    ProductsPriceRange value,
    $Res Function(ProductsPriceRange) then,
  ) = _$ProductsPriceRangeCopyWithImpl<$Res, ProductsPriceRange>;
  @useResult
  $Res call({
    ProductsOptionPrice? minimumPrice,
    ProductsOptionPrice? maximumPrice,
  });

  $ProductsOptionPriceCopyWith<$Res>? get minimumPrice;
  $ProductsOptionPriceCopyWith<$Res>? get maximumPrice;
}

/// @nodoc
class _$ProductsPriceRangeCopyWithImpl<$Res, $Val extends ProductsPriceRange>
    implements $ProductsPriceRangeCopyWith<$Res> {
  _$ProductsPriceRangeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductsPriceRange
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
                        as ProductsOptionPrice?,
            maximumPrice:
                freezed == maximumPrice
                    ? _value.maximumPrice
                    : maximumPrice // ignore: cast_nullable_to_non_nullable
                        as ProductsOptionPrice?,
          )
          as $Val,
    );
  }

  /// Create a copy of ProductsPriceRange
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProductsOptionPriceCopyWith<$Res>? get minimumPrice {
    if (_value.minimumPrice == null) {
      return null;
    }

    return $ProductsOptionPriceCopyWith<$Res>(_value.minimumPrice!, (value) {
      return _then(_value.copyWith(minimumPrice: value) as $Val);
    });
  }

  /// Create a copy of ProductsPriceRange
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProductsOptionPriceCopyWith<$Res>? get maximumPrice {
    if (_value.maximumPrice == null) {
      return null;
    }

    return $ProductsOptionPriceCopyWith<$Res>(_value.maximumPrice!, (value) {
      return _then(_value.copyWith(maximumPrice: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProductsPriceRangeImplCopyWith<$Res>
    implements $ProductsPriceRangeCopyWith<$Res> {
  factory _$$ProductsPriceRangeImplCopyWith(
    _$ProductsPriceRangeImpl value,
    $Res Function(_$ProductsPriceRangeImpl) then,
  ) = __$$ProductsPriceRangeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    ProductsOptionPrice? minimumPrice,
    ProductsOptionPrice? maximumPrice,
  });

  @override
  $ProductsOptionPriceCopyWith<$Res>? get minimumPrice;
  @override
  $ProductsOptionPriceCopyWith<$Res>? get maximumPrice;
}

/// @nodoc
class __$$ProductsPriceRangeImplCopyWithImpl<$Res>
    extends _$ProductsPriceRangeCopyWithImpl<$Res, _$ProductsPriceRangeImpl>
    implements _$$ProductsPriceRangeImplCopyWith<$Res> {
  __$$ProductsPriceRangeImplCopyWithImpl(
    _$ProductsPriceRangeImpl _value,
    $Res Function(_$ProductsPriceRangeImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ProductsPriceRange
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? minimumPrice = freezed, Object? maximumPrice = freezed}) {
    return _then(
      _$ProductsPriceRangeImpl(
        minimumPrice:
            freezed == minimumPrice
                ? _value.minimumPrice
                : minimumPrice // ignore: cast_nullable_to_non_nullable
                    as ProductsOptionPrice?,
        maximumPrice:
            freezed == maximumPrice
                ? _value.maximumPrice
                : maximumPrice // ignore: cast_nullable_to_non_nullable
                    as ProductsOptionPrice?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductsPriceRangeImpl implements _ProductsPriceRange {
  const _$ProductsPriceRangeImpl({this.minimumPrice, this.maximumPrice});

  factory _$ProductsPriceRangeImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductsPriceRangeImplFromJson(json);

  @override
  final ProductsOptionPrice? minimumPrice;
  @override
  final ProductsOptionPrice? maximumPrice;

  @override
  String toString() {
    return 'ProductsPriceRange(minimumPrice: $minimumPrice, maximumPrice: $maximumPrice)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductsPriceRangeImpl &&
            (identical(other.minimumPrice, minimumPrice) ||
                other.minimumPrice == minimumPrice) &&
            (identical(other.maximumPrice, maximumPrice) ||
                other.maximumPrice == maximumPrice));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, minimumPrice, maximumPrice);

  /// Create a copy of ProductsPriceRange
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductsPriceRangeImplCopyWith<_$ProductsPriceRangeImpl> get copyWith =>
      __$$ProductsPriceRangeImplCopyWithImpl<_$ProductsPriceRangeImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductsPriceRangeImplToJson(this);
  }
}

abstract class _ProductsPriceRange implements ProductsPriceRange {
  const factory _ProductsPriceRange({
    final ProductsOptionPrice? minimumPrice,
    final ProductsOptionPrice? maximumPrice,
  }) = _$ProductsPriceRangeImpl;

  factory _ProductsPriceRange.fromJson(Map<String, dynamic> json) =
      _$ProductsPriceRangeImpl.fromJson;

  @override
  ProductsOptionPrice? get minimumPrice;
  @override
  ProductsOptionPrice? get maximumPrice;

  /// Create a copy of ProductsPriceRange
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductsPriceRangeImplCopyWith<_$ProductsPriceRangeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ProductsOptionPrice _$ProductsOptionPriceFromJson(Map<String, dynamic> json) {
  return _ProductsOptionPrice.fromJson(json);
}

/// @nodoc
mixin _$ProductsOptionPrice {
  Money get discount => throw _privateConstructorUsedError;
  Money get finalPrice => throw _privateConstructorUsedError;
  Money get regularPrice => throw _privateConstructorUsedError;

  /// Serializes this ProductsOptionPrice to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProductsOptionPrice
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductsOptionPriceCopyWith<ProductsOptionPrice> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductsOptionPriceCopyWith<$Res> {
  factory $ProductsOptionPriceCopyWith(
    ProductsOptionPrice value,
    $Res Function(ProductsOptionPrice) then,
  ) = _$ProductsOptionPriceCopyWithImpl<$Res, ProductsOptionPrice>;
  @useResult
  $Res call({Money discount, Money finalPrice, Money regularPrice});
}

/// @nodoc
class _$ProductsOptionPriceCopyWithImpl<$Res, $Val extends ProductsOptionPrice>
    implements $ProductsOptionPriceCopyWith<$Res> {
  _$ProductsOptionPriceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductsOptionPrice
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
                        as Money,
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
abstract class _$$ProductsOptionPriceImplCopyWith<$Res>
    implements $ProductsOptionPriceCopyWith<$Res> {
  factory _$$ProductsOptionPriceImplCopyWith(
    _$ProductsOptionPriceImpl value,
    $Res Function(_$ProductsOptionPriceImpl) then,
  ) = __$$ProductsOptionPriceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Money discount, Money finalPrice, Money regularPrice});
}

/// @nodoc
class __$$ProductsOptionPriceImplCopyWithImpl<$Res>
    extends _$ProductsOptionPriceCopyWithImpl<$Res, _$ProductsOptionPriceImpl>
    implements _$$ProductsOptionPriceImplCopyWith<$Res> {
  __$$ProductsOptionPriceImplCopyWithImpl(
    _$ProductsOptionPriceImpl _value,
    $Res Function(_$ProductsOptionPriceImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ProductsOptionPrice
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? discount = null,
    Object? finalPrice = null,
    Object? regularPrice = null,
  }) {
    return _then(
      _$ProductsOptionPriceImpl(
        discount:
            null == discount
                ? _value.discount
                : discount // ignore: cast_nullable_to_non_nullable
                    as Money,
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
class _$ProductsOptionPriceImpl implements _ProductsOptionPrice {
  const _$ProductsOptionPriceImpl({
    required this.discount,
    required this.finalPrice,
    required this.regularPrice,
  });

  factory _$ProductsOptionPriceImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductsOptionPriceImplFromJson(json);

  @override
  final Money discount;
  @override
  final Money finalPrice;
  @override
  final Money regularPrice;

  @override
  String toString() {
    return 'ProductsOptionPrice(discount: $discount, finalPrice: $finalPrice, regularPrice: $regularPrice)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductsOptionPriceImpl &&
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

  /// Create a copy of ProductsOptionPrice
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductsOptionPriceImplCopyWith<_$ProductsOptionPriceImpl> get copyWith =>
      __$$ProductsOptionPriceImplCopyWithImpl<_$ProductsOptionPriceImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductsOptionPriceImplToJson(this);
  }
}

abstract class _ProductsOptionPrice implements ProductsOptionPrice {
  const factory _ProductsOptionPrice({
    required final Money discount,
    required final Money finalPrice,
    required final Money regularPrice,
  }) = _$ProductsOptionPriceImpl;

  factory _ProductsOptionPrice.fromJson(Map<String, dynamic> json) =
      _$ProductsOptionPriceImpl.fromJson;

  @override
  Money get discount;
  @override
  Money get finalPrice;
  @override
  Money get regularPrice;

  /// Create a copy of ProductsOptionPrice
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductsOptionPriceImplCopyWith<_$ProductsOptionPriceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ProductsAtributes _$ProductsAtributesFromJson(Map<String, dynamic> json) {
  return _ProductsAtributes.fromJson(json);
}

/// @nodoc
mixin _$ProductsAtributes {
  String get uid => throw _privateConstructorUsedError;
  String get label => throw _privateConstructorUsedError;
  String get code => throw _privateConstructorUsedError;

  /// Serializes this ProductsAtributes to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProductsAtributes
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductsAtributesCopyWith<ProductsAtributes> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductsAtributesCopyWith<$Res> {
  factory $ProductsAtributesCopyWith(
    ProductsAtributes value,
    $Res Function(ProductsAtributes) then,
  ) = _$ProductsAtributesCopyWithImpl<$Res, ProductsAtributes>;
  @useResult
  $Res call({String uid, String label, String code});
}

/// @nodoc
class _$ProductsAtributesCopyWithImpl<$Res, $Val extends ProductsAtributes>
    implements $ProductsAtributesCopyWith<$Res> {
  _$ProductsAtributesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductsAtributes
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
abstract class _$$ProductsAtributesImplCopyWith<$Res>
    implements $ProductsAtributesCopyWith<$Res> {
  factory _$$ProductsAtributesImplCopyWith(
    _$ProductsAtributesImpl value,
    $Res Function(_$ProductsAtributesImpl) then,
  ) = __$$ProductsAtributesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String uid, String label, String code});
}

/// @nodoc
class __$$ProductsAtributesImplCopyWithImpl<$Res>
    extends _$ProductsAtributesCopyWithImpl<$Res, _$ProductsAtributesImpl>
    implements _$$ProductsAtributesImplCopyWith<$Res> {
  __$$ProductsAtributesImplCopyWithImpl(
    _$ProductsAtributesImpl _value,
    $Res Function(_$ProductsAtributesImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ProductsAtributes
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? uid = null, Object? label = null, Object? code = null}) {
    return _then(
      _$ProductsAtributesImpl(
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
class _$ProductsAtributesImpl implements _ProductsAtributes {
  const _$ProductsAtributesImpl({
    required this.uid,
    required this.label,
    required this.code,
  });

  factory _$ProductsAtributesImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductsAtributesImplFromJson(json);

  @override
  final String uid;
  @override
  final String label;
  @override
  final String code;

  @override
  String toString() {
    return 'ProductsAtributes(uid: $uid, label: $label, code: $code)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductsAtributesImpl &&
            (identical(other.uid, uid) || other.uid == uid) &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.code, code) || other.code == code));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, uid, label, code);

  /// Create a copy of ProductsAtributes
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductsAtributesImplCopyWith<_$ProductsAtributesImpl> get copyWith =>
      __$$ProductsAtributesImplCopyWithImpl<_$ProductsAtributesImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductsAtributesImplToJson(this);
  }
}

abstract class _ProductsAtributes implements ProductsAtributes {
  const factory _ProductsAtributes({
    required final String uid,
    required final String label,
    required final String code,
  }) = _$ProductsAtributesImpl;

  factory _ProductsAtributes.fromJson(Map<String, dynamic> json) =
      _$ProductsAtributesImpl.fromJson;

  @override
  String get uid;
  @override
  String get label;
  @override
  String get code;

  /// Create a copy of ProductsAtributes
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductsAtributesImplCopyWith<_$ProductsAtributesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ProductsVariants _$ProductsVariantsFromJson(Map<String, dynamic> json) {
  return _ProductsVariants.fromJson(json);
}

/// @nodoc
mixin _$ProductsVariants {
  List<ProductsAtributes> get attributes => throw _privateConstructorUsedError;

  /// Serializes this ProductsVariants to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProductsVariants
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductsVariantsCopyWith<ProductsVariants> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductsVariantsCopyWith<$Res> {
  factory $ProductsVariantsCopyWith(
    ProductsVariants value,
    $Res Function(ProductsVariants) then,
  ) = _$ProductsVariantsCopyWithImpl<$Res, ProductsVariants>;
  @useResult
  $Res call({List<ProductsAtributes> attributes});
}

/// @nodoc
class _$ProductsVariantsCopyWithImpl<$Res, $Val extends ProductsVariants>
    implements $ProductsVariantsCopyWith<$Res> {
  _$ProductsVariantsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductsVariants
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
                        as List<ProductsAtributes>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ProductsVariantsImplCopyWith<$Res>
    implements $ProductsVariantsCopyWith<$Res> {
  factory _$$ProductsVariantsImplCopyWith(
    _$ProductsVariantsImpl value,
    $Res Function(_$ProductsVariantsImpl) then,
  ) = __$$ProductsVariantsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<ProductsAtributes> attributes});
}

/// @nodoc
class __$$ProductsVariantsImplCopyWithImpl<$Res>
    extends _$ProductsVariantsCopyWithImpl<$Res, _$ProductsVariantsImpl>
    implements _$$ProductsVariantsImplCopyWith<$Res> {
  __$$ProductsVariantsImplCopyWithImpl(
    _$ProductsVariantsImpl _value,
    $Res Function(_$ProductsVariantsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ProductsVariants
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? attributes = null}) {
    return _then(
      _$ProductsVariantsImpl(
        attributes:
            null == attributes
                ? _value._attributes
                : attributes // ignore: cast_nullable_to_non_nullable
                    as List<ProductsAtributes>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductsVariantsImpl implements _ProductsVariants {
  const _$ProductsVariantsImpl({
    final List<ProductsAtributes> attributes = const [],
  }) : _attributes = attributes;

  factory _$ProductsVariantsImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductsVariantsImplFromJson(json);

  final List<ProductsAtributes> _attributes;
  @override
  @JsonKey()
  List<ProductsAtributes> get attributes {
    if (_attributes is EqualUnmodifiableListView) return _attributes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_attributes);
  }

  @override
  String toString() {
    return 'ProductsVariants(attributes: $attributes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductsVariantsImpl &&
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

  /// Create a copy of ProductsVariants
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductsVariantsImplCopyWith<_$ProductsVariantsImpl> get copyWith =>
      __$$ProductsVariantsImplCopyWithImpl<_$ProductsVariantsImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductsVariantsImplToJson(this);
  }
}

abstract class _ProductsVariants implements ProductsVariants {
  const factory _ProductsVariants({final List<ProductsAtributes> attributes}) =
      _$ProductsVariantsImpl;

  factory _ProductsVariants.fromJson(Map<String, dynamic> json) =
      _$ProductsVariantsImpl.fromJson;

  @override
  List<ProductsAtributes> get attributes;

  /// Create a copy of ProductsVariants
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductsVariantsImplCopyWith<_$ProductsVariantsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ProductsAggregations _$ProductsAggregationsFromJson(Map<String, dynamic> json) {
  return _ProductsAggregations.fromJson(json);
}

/// @nodoc
mixin _$ProductsAggregations {
  String get label => throw _privateConstructorUsedError;
  String get attributeCode => throw _privateConstructorUsedError;
  List<ProductsOptions> get options => throw _privateConstructorUsedError;

  /// Serializes this ProductsAggregations to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProductsAggregations
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductsAggregationsCopyWith<ProductsAggregations> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductsAggregationsCopyWith<$Res> {
  factory $ProductsAggregationsCopyWith(
    ProductsAggregations value,
    $Res Function(ProductsAggregations) then,
  ) = _$ProductsAggregationsCopyWithImpl<$Res, ProductsAggregations>;
  @useResult
  $Res call({
    String label,
    String attributeCode,
    List<ProductsOptions> options,
  });
}

/// @nodoc
class _$ProductsAggregationsCopyWithImpl<
  $Res,
  $Val extends ProductsAggregations
>
    implements $ProductsAggregationsCopyWith<$Res> {
  _$ProductsAggregationsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductsAggregations
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
                        as List<ProductsOptions>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ProductsAggregationsImplCopyWith<$Res>
    implements $ProductsAggregationsCopyWith<$Res> {
  factory _$$ProductsAggregationsImplCopyWith(
    _$ProductsAggregationsImpl value,
    $Res Function(_$ProductsAggregationsImpl) then,
  ) = __$$ProductsAggregationsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String label,
    String attributeCode,
    List<ProductsOptions> options,
  });
}

/// @nodoc
class __$$ProductsAggregationsImplCopyWithImpl<$Res>
    extends _$ProductsAggregationsCopyWithImpl<$Res, _$ProductsAggregationsImpl>
    implements _$$ProductsAggregationsImplCopyWith<$Res> {
  __$$ProductsAggregationsImplCopyWithImpl(
    _$ProductsAggregationsImpl _value,
    $Res Function(_$ProductsAggregationsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ProductsAggregations
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? label = null,
    Object? attributeCode = null,
    Object? options = null,
  }) {
    return _then(
      _$ProductsAggregationsImpl(
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
                    as List<ProductsOptions>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductsAggregationsImpl implements _ProductsAggregations {
  _$ProductsAggregationsImpl({
    required this.label,
    required this.attributeCode,
    final List<ProductsOptions> options = const [],
  }) : _options = options;

  factory _$ProductsAggregationsImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductsAggregationsImplFromJson(json);

  @override
  final String label;
  @override
  final String attributeCode;
  final List<ProductsOptions> _options;
  @override
  @JsonKey()
  List<ProductsOptions> get options {
    if (_options is EqualUnmodifiableListView) return _options;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_options);
  }

  @override
  String toString() {
    return 'ProductsAggregations(label: $label, attributeCode: $attributeCode, options: $options)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductsAggregationsImpl &&
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

  /// Create a copy of ProductsAggregations
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductsAggregationsImplCopyWith<_$ProductsAggregationsImpl>
  get copyWith =>
      __$$ProductsAggregationsImplCopyWithImpl<_$ProductsAggregationsImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductsAggregationsImplToJson(this);
  }
}

abstract class _ProductsAggregations implements ProductsAggregations {
  factory _ProductsAggregations({
    required final String label,
    required final String attributeCode,
    final List<ProductsOptions> options,
  }) = _$ProductsAggregationsImpl;

  factory _ProductsAggregations.fromJson(Map<String, dynamic> json) =
      _$ProductsAggregationsImpl.fromJson;

  @override
  String get label;
  @override
  String get attributeCode;
  @override
  List<ProductsOptions> get options;

  /// Create a copy of ProductsAggregations
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductsAggregationsImplCopyWith<_$ProductsAggregationsImpl>
  get copyWith => throw _privateConstructorUsedError;
}

ProductsOptions _$ProductsOptionsFromJson(Map<String, dynamic> json) {
  return _ProductsOptions.fromJson(json);
}

/// @nodoc
mixin _$ProductsOptions {
  String get label => throw _privateConstructorUsedError;
  String get value => throw _privateConstructorUsedError;
  int get count => throw _privateConstructorUsedError;

  /// Serializes this ProductsOptions to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProductsOptions
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductsOptionsCopyWith<ProductsOptions> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductsOptionsCopyWith<$Res> {
  factory $ProductsOptionsCopyWith(
    ProductsOptions value,
    $Res Function(ProductsOptions) then,
  ) = _$ProductsOptionsCopyWithImpl<$Res, ProductsOptions>;
  @useResult
  $Res call({String label, String value, int count});
}

/// @nodoc
class _$ProductsOptionsCopyWithImpl<$Res, $Val extends ProductsOptions>
    implements $ProductsOptionsCopyWith<$Res> {
  _$ProductsOptionsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductsOptions
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
abstract class _$$ProductsOptionsImplCopyWith<$Res>
    implements $ProductsOptionsCopyWith<$Res> {
  factory _$$ProductsOptionsImplCopyWith(
    _$ProductsOptionsImpl value,
    $Res Function(_$ProductsOptionsImpl) then,
  ) = __$$ProductsOptionsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String label, String value, int count});
}

/// @nodoc
class __$$ProductsOptionsImplCopyWithImpl<$Res>
    extends _$ProductsOptionsCopyWithImpl<$Res, _$ProductsOptionsImpl>
    implements _$$ProductsOptionsImplCopyWith<$Res> {
  __$$ProductsOptionsImplCopyWithImpl(
    _$ProductsOptionsImpl _value,
    $Res Function(_$ProductsOptionsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ProductsOptions
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? label = null,
    Object? value = null,
    Object? count = null,
  }) {
    return _then(
      _$ProductsOptionsImpl(
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
class _$ProductsOptionsImpl implements _ProductsOptions {
  _$ProductsOptionsImpl({
    required this.label,
    required this.value,
    required this.count,
  });

  factory _$ProductsOptionsImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductsOptionsImplFromJson(json);

  @override
  final String label;
  @override
  final String value;
  @override
  final int count;

  @override
  String toString() {
    return 'ProductsOptions(label: $label, value: $value, count: $count)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductsOptionsImpl &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.count, count) || other.count == count));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, label, value, count);

  /// Create a copy of ProductsOptions
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductsOptionsImplCopyWith<_$ProductsOptionsImpl> get copyWith =>
      __$$ProductsOptionsImplCopyWithImpl<_$ProductsOptionsImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductsOptionsImplToJson(this);
  }
}

abstract class _ProductsOptions implements ProductsOptions {
  factory _ProductsOptions({
    required final String label,
    required final String value,
    required final int count,
  }) = _$ProductsOptionsImpl;

  factory _ProductsOptions.fromJson(Map<String, dynamic> json) =
      _$ProductsOptionsImpl.fromJson;

  @override
  String get label;
  @override
  String get value;
  @override
  int get count;

  /// Create a copy of ProductsOptions
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductsOptionsImplCopyWith<_$ProductsOptionsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ProductsCategory _$ProductsCategoryFromJson(Map<String, dynamic> json) {
  return _ProductsCategory.fromJson(json);
}

/// @nodoc
mixin _$ProductsCategory {
  String get uid => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get level => throw _privateConstructorUsedError;
  int get includeInMenu => throw _privateConstructorUsedError;

  /// Serializes this ProductsCategory to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProductsCategory
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductsCategoryCopyWith<ProductsCategory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductsCategoryCopyWith<$Res> {
  factory $ProductsCategoryCopyWith(
    ProductsCategory value,
    $Res Function(ProductsCategory) then,
  ) = _$ProductsCategoryCopyWithImpl<$Res, ProductsCategory>;
  @useResult
  $Res call({String uid, String name, int level, int includeInMenu});
}

/// @nodoc
class _$ProductsCategoryCopyWithImpl<$Res, $Val extends ProductsCategory>
    implements $ProductsCategoryCopyWith<$Res> {
  _$ProductsCategoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductsCategory
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
abstract class _$$ProductsCategoryImplCopyWith<$Res>
    implements $ProductsCategoryCopyWith<$Res> {
  factory _$$ProductsCategoryImplCopyWith(
    _$ProductsCategoryImpl value,
    $Res Function(_$ProductsCategoryImpl) then,
  ) = __$$ProductsCategoryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String uid, String name, int level, int includeInMenu});
}

/// @nodoc
class __$$ProductsCategoryImplCopyWithImpl<$Res>
    extends _$ProductsCategoryCopyWithImpl<$Res, _$ProductsCategoryImpl>
    implements _$$ProductsCategoryImplCopyWith<$Res> {
  __$$ProductsCategoryImplCopyWithImpl(
    _$ProductsCategoryImpl _value,
    $Res Function(_$ProductsCategoryImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ProductsCategory
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
      _$ProductsCategoryImpl(
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
class _$ProductsCategoryImpl implements _ProductsCategory {
  _$ProductsCategoryImpl({
    required this.uid,
    required this.name,
    required this.level,
    required this.includeInMenu,
  });

  factory _$ProductsCategoryImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductsCategoryImplFromJson(json);

  @override
  final String uid;
  @override
  final String name;
  @override
  final int level;
  @override
  final int includeInMenu;

  @override
  String toString() {
    return 'ProductsCategory(uid: $uid, name: $name, level: $level, includeInMenu: $includeInMenu)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductsCategoryImpl &&
            (identical(other.uid, uid) || other.uid == uid) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.level, level) || other.level == level) &&
            (identical(other.includeInMenu, includeInMenu) ||
                other.includeInMenu == includeInMenu));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, uid, name, level, includeInMenu);

  /// Create a copy of ProductsCategory
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductsCategoryImplCopyWith<_$ProductsCategoryImpl> get copyWith =>
      __$$ProductsCategoryImplCopyWithImpl<_$ProductsCategoryImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductsCategoryImplToJson(this);
  }
}

abstract class _ProductsCategory implements ProductsCategory {
  factory _ProductsCategory({
    required final String uid,
    required final String name,
    required final int level,
    required final int includeInMenu,
  }) = _$ProductsCategoryImpl;

  factory _ProductsCategory.fromJson(Map<String, dynamic> json) =
      _$ProductsCategoryImpl.fromJson;

  @override
  String get uid;
  @override
  String get name;
  @override
  int get level;
  @override
  int get includeInMenu;

  /// Create a copy of ProductsCategory
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductsCategoryImplCopyWith<_$ProductsCategoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
