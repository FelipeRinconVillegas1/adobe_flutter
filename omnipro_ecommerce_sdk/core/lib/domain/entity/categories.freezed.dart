// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'categories.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$Categories {
  List<CategoriesItems> get items => throw _privateConstructorUsedError;
  CategoriesPageInfo get pageInfo => throw _privateConstructorUsedError;

  /// Create a copy of Categories
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CategoriesCopyWith<Categories> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoriesCopyWith<$Res> {
  factory $CategoriesCopyWith(
    Categories value,
    $Res Function(Categories) then,
  ) = _$CategoriesCopyWithImpl<$Res, Categories>;
  @useResult
  $Res call({List<CategoriesItems> items, CategoriesPageInfo pageInfo});

  $CategoriesPageInfoCopyWith<$Res> get pageInfo;
}

/// @nodoc
class _$CategoriesCopyWithImpl<$Res, $Val extends Categories>
    implements $CategoriesCopyWith<$Res> {
  _$CategoriesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Categories
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? items = null, Object? pageInfo = null}) {
    return _then(
      _value.copyWith(
            items:
                null == items
                    ? _value.items
                    : items // ignore: cast_nullable_to_non_nullable
                        as List<CategoriesItems>,
            pageInfo:
                null == pageInfo
                    ? _value.pageInfo
                    : pageInfo // ignore: cast_nullable_to_non_nullable
                        as CategoriesPageInfo,
          )
          as $Val,
    );
  }

  /// Create a copy of Categories
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CategoriesPageInfoCopyWith<$Res> get pageInfo {
    return $CategoriesPageInfoCopyWith<$Res>(_value.pageInfo, (value) {
      return _then(_value.copyWith(pageInfo: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CategoriesImplCopyWith<$Res>
    implements $CategoriesCopyWith<$Res> {
  factory _$$CategoriesImplCopyWith(
    _$CategoriesImpl value,
    $Res Function(_$CategoriesImpl) then,
  ) = __$$CategoriesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<CategoriesItems> items, CategoriesPageInfo pageInfo});

  @override
  $CategoriesPageInfoCopyWith<$Res> get pageInfo;
}

/// @nodoc
class __$$CategoriesImplCopyWithImpl<$Res>
    extends _$CategoriesCopyWithImpl<$Res, _$CategoriesImpl>
    implements _$$CategoriesImplCopyWith<$Res> {
  __$$CategoriesImplCopyWithImpl(
    _$CategoriesImpl _value,
    $Res Function(_$CategoriesImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Categories
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? items = null, Object? pageInfo = null}) {
    return _then(
      _$CategoriesImpl(
        items:
            null == items
                ? _value._items
                : items // ignore: cast_nullable_to_non_nullable
                    as List<CategoriesItems>,
        pageInfo:
            null == pageInfo
                ? _value.pageInfo
                : pageInfo // ignore: cast_nullable_to_non_nullable
                    as CategoriesPageInfo,
      ),
    );
  }
}

/// @nodoc

class _$CategoriesImpl with DiagnosticableTreeMixin implements _Categories {
  const _$CategoriesImpl({
    required final List<CategoriesItems> items,
    required this.pageInfo,
  }) : _items = items;

  final List<CategoriesItems> _items;
  @override
  List<CategoriesItems> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  final CategoriesPageInfo pageInfo;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Categories(items: $items, pageInfo: $pageInfo)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Categories'))
      ..add(DiagnosticsProperty('items', items))
      ..add(DiagnosticsProperty('pageInfo', pageInfo));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoriesImpl &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            (identical(other.pageInfo, pageInfo) ||
                other.pageInfo == pageInfo));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_items),
    pageInfo,
  );

  /// Create a copy of Categories
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoriesImplCopyWith<_$CategoriesImpl> get copyWith =>
      __$$CategoriesImplCopyWithImpl<_$CategoriesImpl>(this, _$identity);
}

abstract class _Categories implements Categories {
  const factory _Categories({
    required final List<CategoriesItems> items,
    required final CategoriesPageInfo pageInfo,
  }) = _$CategoriesImpl;

  @override
  List<CategoriesItems> get items;
  @override
  CategoriesPageInfo get pageInfo;

  /// Create a copy of Categories
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CategoriesImplCopyWith<_$CategoriesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CategoriesItems {
  String get uid => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;
  int get level => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get position => throw _privateConstructorUsedError;
  String? get urlPath => throw _privateConstructorUsedError;
  int get childrenCount => throw _privateConstructorUsedError;
  int? get appPosition => throw _privateConstructorUsedError;
  String? get appMainImage => throw _privateConstructorUsedError;
  String? get appBannerImage => throw _privateConstructorUsedError;
  int? get includeInMenu => throw _privateConstructorUsedError;
  List<CategoriesItems> get children => throw _privateConstructorUsedError;

  /// Create a copy of CategoriesItems
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CategoriesItemsCopyWith<CategoriesItems> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoriesItemsCopyWith<$Res> {
  factory $CategoriesItemsCopyWith(
    CategoriesItems value,
    $Res Function(CategoriesItems) then,
  ) = _$CategoriesItemsCopyWithImpl<$Res, CategoriesItems>;
  @useResult
  $Res call({
    String uid,
    int id,
    int level,
    String name,
    int position,
    String? urlPath,
    int childrenCount,
    int? appPosition,
    String? appMainImage,
    String? appBannerImage,
    int? includeInMenu,
    List<CategoriesItems> children,
  });
}

/// @nodoc
class _$CategoriesItemsCopyWithImpl<$Res, $Val extends CategoriesItems>
    implements $CategoriesItemsCopyWith<$Res> {
  _$CategoriesItemsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CategoriesItems
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
    Object? id = null,
    Object? level = null,
    Object? name = null,
    Object? position = null,
    Object? urlPath = freezed,
    Object? childrenCount = null,
    Object? appPosition = freezed,
    Object? appMainImage = freezed,
    Object? appBannerImage = freezed,
    Object? includeInMenu = freezed,
    Object? children = null,
  }) {
    return _then(
      _value.copyWith(
            uid:
                null == uid
                    ? _value.uid
                    : uid // ignore: cast_nullable_to_non_nullable
                        as String,
            id:
                null == id
                    ? _value.id
                    : id // ignore: cast_nullable_to_non_nullable
                        as int,
            level:
                null == level
                    ? _value.level
                    : level // ignore: cast_nullable_to_non_nullable
                        as int,
            name:
                null == name
                    ? _value.name
                    : name // ignore: cast_nullable_to_non_nullable
                        as String,
            position:
                null == position
                    ? _value.position
                    : position // ignore: cast_nullable_to_non_nullable
                        as int,
            urlPath:
                freezed == urlPath
                    ? _value.urlPath
                    : urlPath // ignore: cast_nullable_to_non_nullable
                        as String?,
            childrenCount:
                null == childrenCount
                    ? _value.childrenCount
                    : childrenCount // ignore: cast_nullable_to_non_nullable
                        as int,
            appPosition:
                freezed == appPosition
                    ? _value.appPosition
                    : appPosition // ignore: cast_nullable_to_non_nullable
                        as int?,
            appMainImage:
                freezed == appMainImage
                    ? _value.appMainImage
                    : appMainImage // ignore: cast_nullable_to_non_nullable
                        as String?,
            appBannerImage:
                freezed == appBannerImage
                    ? _value.appBannerImage
                    : appBannerImage // ignore: cast_nullable_to_non_nullable
                        as String?,
            includeInMenu:
                freezed == includeInMenu
                    ? _value.includeInMenu
                    : includeInMenu // ignore: cast_nullable_to_non_nullable
                        as int?,
            children:
                null == children
                    ? _value.children
                    : children // ignore: cast_nullable_to_non_nullable
                        as List<CategoriesItems>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$CategoriesItemsImplCopyWith<$Res>
    implements $CategoriesItemsCopyWith<$Res> {
  factory _$$CategoriesItemsImplCopyWith(
    _$CategoriesItemsImpl value,
    $Res Function(_$CategoriesItemsImpl) then,
  ) = __$$CategoriesItemsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String uid,
    int id,
    int level,
    String name,
    int position,
    String? urlPath,
    int childrenCount,
    int? appPosition,
    String? appMainImage,
    String? appBannerImage,
    int? includeInMenu,
    List<CategoriesItems> children,
  });
}

/// @nodoc
class __$$CategoriesItemsImplCopyWithImpl<$Res>
    extends _$CategoriesItemsCopyWithImpl<$Res, _$CategoriesItemsImpl>
    implements _$$CategoriesItemsImplCopyWith<$Res> {
  __$$CategoriesItemsImplCopyWithImpl(
    _$CategoriesItemsImpl _value,
    $Res Function(_$CategoriesItemsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CategoriesItems
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
    Object? id = null,
    Object? level = null,
    Object? name = null,
    Object? position = null,
    Object? urlPath = freezed,
    Object? childrenCount = null,
    Object? appPosition = freezed,
    Object? appMainImage = freezed,
    Object? appBannerImage = freezed,
    Object? includeInMenu = freezed,
    Object? children = null,
  }) {
    return _then(
      _$CategoriesItemsImpl(
        uid:
            null == uid
                ? _value.uid
                : uid // ignore: cast_nullable_to_non_nullable
                    as String,
        id:
            null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                    as int,
        level:
            null == level
                ? _value.level
                : level // ignore: cast_nullable_to_non_nullable
                    as int,
        name:
            null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                    as String,
        position:
            null == position
                ? _value.position
                : position // ignore: cast_nullable_to_non_nullable
                    as int,
        urlPath:
            freezed == urlPath
                ? _value.urlPath
                : urlPath // ignore: cast_nullable_to_non_nullable
                    as String?,
        childrenCount:
            null == childrenCount
                ? _value.childrenCount
                : childrenCount // ignore: cast_nullable_to_non_nullable
                    as int,
        appPosition:
            freezed == appPosition
                ? _value.appPosition
                : appPosition // ignore: cast_nullable_to_non_nullable
                    as int?,
        appMainImage:
            freezed == appMainImage
                ? _value.appMainImage
                : appMainImage // ignore: cast_nullable_to_non_nullable
                    as String?,
        appBannerImage:
            freezed == appBannerImage
                ? _value.appBannerImage
                : appBannerImage // ignore: cast_nullable_to_non_nullable
                    as String?,
        includeInMenu:
            freezed == includeInMenu
                ? _value.includeInMenu
                : includeInMenu // ignore: cast_nullable_to_non_nullable
                    as int?,
        children:
            null == children
                ? _value._children
                : children // ignore: cast_nullable_to_non_nullable
                    as List<CategoriesItems>,
      ),
    );
  }
}

/// @nodoc

class _$CategoriesItemsImpl
    with DiagnosticableTreeMixin
    implements _CategoriesItems {
  const _$CategoriesItemsImpl({
    required this.uid,
    required this.id,
    required this.level,
    required this.name,
    required this.position,
    this.urlPath,
    required this.childrenCount,
    this.appPosition,
    this.appMainImage,
    this.appBannerImage,
    this.includeInMenu,
    required final List<CategoriesItems> children,
  }) : _children = children;

  @override
  final String uid;
  @override
  final int id;
  @override
  final int level;
  @override
  final String name;
  @override
  final int position;
  @override
  final String? urlPath;
  @override
  final int childrenCount;
  @override
  final int? appPosition;
  @override
  final String? appMainImage;
  @override
  final String? appBannerImage;
  @override
  final int? includeInMenu;
  final List<CategoriesItems> _children;
  @override
  List<CategoriesItems> get children {
    if (_children is EqualUnmodifiableListView) return _children;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_children);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CategoriesItems(uid: $uid, id: $id, level: $level, name: $name, position: $position, urlPath: $urlPath, childrenCount: $childrenCount, appPosition: $appPosition, appMainImage: $appMainImage, appBannerImage: $appBannerImage, includeInMenu: $includeInMenu, children: $children)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CategoriesItems'))
      ..add(DiagnosticsProperty('uid', uid))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('level', level))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('position', position))
      ..add(DiagnosticsProperty('urlPath', urlPath))
      ..add(DiagnosticsProperty('childrenCount', childrenCount))
      ..add(DiagnosticsProperty('appPosition', appPosition))
      ..add(DiagnosticsProperty('appMainImage', appMainImage))
      ..add(DiagnosticsProperty('appBannerImage', appBannerImage))
      ..add(DiagnosticsProperty('includeInMenu', includeInMenu))
      ..add(DiagnosticsProperty('children', children));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoriesItemsImpl &&
            (identical(other.uid, uid) || other.uid == uid) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.level, level) || other.level == level) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.position, position) ||
                other.position == position) &&
            (identical(other.urlPath, urlPath) || other.urlPath == urlPath) &&
            (identical(other.childrenCount, childrenCount) ||
                other.childrenCount == childrenCount) &&
            (identical(other.appPosition, appPosition) ||
                other.appPosition == appPosition) &&
            (identical(other.appMainImage, appMainImage) ||
                other.appMainImage == appMainImage) &&
            (identical(other.appBannerImage, appBannerImage) ||
                other.appBannerImage == appBannerImage) &&
            (identical(other.includeInMenu, includeInMenu) ||
                other.includeInMenu == includeInMenu) &&
            const DeepCollectionEquality().equals(other._children, _children));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    uid,
    id,
    level,
    name,
    position,
    urlPath,
    childrenCount,
    appPosition,
    appMainImage,
    appBannerImage,
    includeInMenu,
    const DeepCollectionEquality().hash(_children),
  );

  /// Create a copy of CategoriesItems
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoriesItemsImplCopyWith<_$CategoriesItemsImpl> get copyWith =>
      __$$CategoriesItemsImplCopyWithImpl<_$CategoriesItemsImpl>(
        this,
        _$identity,
      );
}

abstract class _CategoriesItems implements CategoriesItems {
  const factory _CategoriesItems({
    required final String uid,
    required final int id,
    required final int level,
    required final String name,
    required final int position,
    final String? urlPath,
    required final int childrenCount,
    final int? appPosition,
    final String? appMainImage,
    final String? appBannerImage,
    final int? includeInMenu,
    required final List<CategoriesItems> children,
  }) = _$CategoriesItemsImpl;

  @override
  String get uid;
  @override
  int get id;
  @override
  int get level;
  @override
  String get name;
  @override
  int get position;
  @override
  String? get urlPath;
  @override
  int get childrenCount;
  @override
  int? get appPosition;
  @override
  String? get appMainImage;
  @override
  String? get appBannerImage;
  @override
  int? get includeInMenu;
  @override
  List<CategoriesItems> get children;

  /// Create a copy of CategoriesItems
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CategoriesItemsImplCopyWith<_$CategoriesItemsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CategoriesPageInfo {
  int get currentPage => throw _privateConstructorUsedError;
  int get pageSize => throw _privateConstructorUsedError;
  int get totalPages => throw _privateConstructorUsedError;

  /// Create a copy of CategoriesPageInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CategoriesPageInfoCopyWith<CategoriesPageInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoriesPageInfoCopyWith<$Res> {
  factory $CategoriesPageInfoCopyWith(
    CategoriesPageInfo value,
    $Res Function(CategoriesPageInfo) then,
  ) = _$CategoriesPageInfoCopyWithImpl<$Res, CategoriesPageInfo>;
  @useResult
  $Res call({int currentPage, int pageSize, int totalPages});
}

/// @nodoc
class _$CategoriesPageInfoCopyWithImpl<$Res, $Val extends CategoriesPageInfo>
    implements $CategoriesPageInfoCopyWith<$Res> {
  _$CategoriesPageInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CategoriesPageInfo
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
abstract class _$$CategoriesPageInfoImplCopyWith<$Res>
    implements $CategoriesPageInfoCopyWith<$Res> {
  factory _$$CategoriesPageInfoImplCopyWith(
    _$CategoriesPageInfoImpl value,
    $Res Function(_$CategoriesPageInfoImpl) then,
  ) = __$$CategoriesPageInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int currentPage, int pageSize, int totalPages});
}

/// @nodoc
class __$$CategoriesPageInfoImplCopyWithImpl<$Res>
    extends _$CategoriesPageInfoCopyWithImpl<$Res, _$CategoriesPageInfoImpl>
    implements _$$CategoriesPageInfoImplCopyWith<$Res> {
  __$$CategoriesPageInfoImplCopyWithImpl(
    _$CategoriesPageInfoImpl _value,
    $Res Function(_$CategoriesPageInfoImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CategoriesPageInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentPage = null,
    Object? pageSize = null,
    Object? totalPages = null,
  }) {
    return _then(
      _$CategoriesPageInfoImpl(
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

class _$CategoriesPageInfoImpl
    with DiagnosticableTreeMixin
    implements _CategoriesPageInfo {
  const _$CategoriesPageInfoImpl({
    required this.currentPage,
    required this.pageSize,
    required this.totalPages,
  });

  @override
  final int currentPage;
  @override
  final int pageSize;
  @override
  final int totalPages;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CategoriesPageInfo(currentPage: $currentPage, pageSize: $pageSize, totalPages: $totalPages)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CategoriesPageInfo'))
      ..add(DiagnosticsProperty('currentPage', currentPage))
      ..add(DiagnosticsProperty('pageSize', pageSize))
      ..add(DiagnosticsProperty('totalPages', totalPages));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoriesPageInfoImpl &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage) &&
            (identical(other.pageSize, pageSize) ||
                other.pageSize == pageSize) &&
            (identical(other.totalPages, totalPages) ||
                other.totalPages == totalPages));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, currentPage, pageSize, totalPages);

  /// Create a copy of CategoriesPageInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoriesPageInfoImplCopyWith<_$CategoriesPageInfoImpl> get copyWith =>
      __$$CategoriesPageInfoImplCopyWithImpl<_$CategoriesPageInfoImpl>(
        this,
        _$identity,
      );
}

abstract class _CategoriesPageInfo implements CategoriesPageInfo {
  const factory _CategoriesPageInfo({
    required final int currentPage,
    required final int pageSize,
    required final int totalPages,
  }) = _$CategoriesPageInfoImpl;

  @override
  int get currentPage;
  @override
  int get pageSize;
  @override
  int get totalPages;

  /// Create a copy of CategoriesPageInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CategoriesPageInfoImplCopyWith<_$CategoriesPageInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CategoryDetailPageData {
  CategoriesItems get category => throw _privateConstructorUsedError;
  CategoriesItems get parentCategory => throw _privateConstructorUsedError;
  VoidCallback? get backButtonTap => throw _privateConstructorUsedError;
  VoidCallback? get searchButtonTap => throw _privateConstructorUsedError;
  VoidCallback? get cartButtonTap => throw _privateConstructorUsedError;

  /// Create a copy of CategoryDetailPageData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CategoryDetailPageDataCopyWith<CategoryDetailPageData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryDetailPageDataCopyWith<$Res> {
  factory $CategoryDetailPageDataCopyWith(
    CategoryDetailPageData value,
    $Res Function(CategoryDetailPageData) then,
  ) = _$CategoryDetailPageDataCopyWithImpl<$Res, CategoryDetailPageData>;
  @useResult
  $Res call({
    CategoriesItems category,
    CategoriesItems parentCategory,
    VoidCallback? backButtonTap,
    VoidCallback? searchButtonTap,
    VoidCallback? cartButtonTap,
  });

  $CategoriesItemsCopyWith<$Res> get category;
  $CategoriesItemsCopyWith<$Res> get parentCategory;
}

/// @nodoc
class _$CategoryDetailPageDataCopyWithImpl<
  $Res,
  $Val extends CategoryDetailPageData
>
    implements $CategoryDetailPageDataCopyWith<$Res> {
  _$CategoryDetailPageDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CategoryDetailPageData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = null,
    Object? parentCategory = null,
    Object? backButtonTap = freezed,
    Object? searchButtonTap = freezed,
    Object? cartButtonTap = freezed,
  }) {
    return _then(
      _value.copyWith(
            category:
                null == category
                    ? _value.category
                    : category // ignore: cast_nullable_to_non_nullable
                        as CategoriesItems,
            parentCategory:
                null == parentCategory
                    ? _value.parentCategory
                    : parentCategory // ignore: cast_nullable_to_non_nullable
                        as CategoriesItems,
            backButtonTap:
                freezed == backButtonTap
                    ? _value.backButtonTap
                    : backButtonTap // ignore: cast_nullable_to_non_nullable
                        as VoidCallback?,
            searchButtonTap:
                freezed == searchButtonTap
                    ? _value.searchButtonTap
                    : searchButtonTap // ignore: cast_nullable_to_non_nullable
                        as VoidCallback?,
            cartButtonTap:
                freezed == cartButtonTap
                    ? _value.cartButtonTap
                    : cartButtonTap // ignore: cast_nullable_to_non_nullable
                        as VoidCallback?,
          )
          as $Val,
    );
  }

  /// Create a copy of CategoryDetailPageData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CategoriesItemsCopyWith<$Res> get category {
    return $CategoriesItemsCopyWith<$Res>(_value.category, (value) {
      return _then(_value.copyWith(category: value) as $Val);
    });
  }

  /// Create a copy of CategoryDetailPageData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CategoriesItemsCopyWith<$Res> get parentCategory {
    return $CategoriesItemsCopyWith<$Res>(_value.parentCategory, (value) {
      return _then(_value.copyWith(parentCategory: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CategoryDetailPageDataImplCopyWith<$Res>
    implements $CategoryDetailPageDataCopyWith<$Res> {
  factory _$$CategoryDetailPageDataImplCopyWith(
    _$CategoryDetailPageDataImpl value,
    $Res Function(_$CategoryDetailPageDataImpl) then,
  ) = __$$CategoryDetailPageDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    CategoriesItems category,
    CategoriesItems parentCategory,
    VoidCallback? backButtonTap,
    VoidCallback? searchButtonTap,
    VoidCallback? cartButtonTap,
  });

  @override
  $CategoriesItemsCopyWith<$Res> get category;
  @override
  $CategoriesItemsCopyWith<$Res> get parentCategory;
}

/// @nodoc
class __$$CategoryDetailPageDataImplCopyWithImpl<$Res>
    extends
        _$CategoryDetailPageDataCopyWithImpl<$Res, _$CategoryDetailPageDataImpl>
    implements _$$CategoryDetailPageDataImplCopyWith<$Res> {
  __$$CategoryDetailPageDataImplCopyWithImpl(
    _$CategoryDetailPageDataImpl _value,
    $Res Function(_$CategoryDetailPageDataImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CategoryDetailPageData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = null,
    Object? parentCategory = null,
    Object? backButtonTap = freezed,
    Object? searchButtonTap = freezed,
    Object? cartButtonTap = freezed,
  }) {
    return _then(
      _$CategoryDetailPageDataImpl(
        category:
            null == category
                ? _value.category
                : category // ignore: cast_nullable_to_non_nullable
                    as CategoriesItems,
        parentCategory:
            null == parentCategory
                ? _value.parentCategory
                : parentCategory // ignore: cast_nullable_to_non_nullable
                    as CategoriesItems,
        backButtonTap:
            freezed == backButtonTap
                ? _value.backButtonTap
                : backButtonTap // ignore: cast_nullable_to_non_nullable
                    as VoidCallback?,
        searchButtonTap:
            freezed == searchButtonTap
                ? _value.searchButtonTap
                : searchButtonTap // ignore: cast_nullable_to_non_nullable
                    as VoidCallback?,
        cartButtonTap:
            freezed == cartButtonTap
                ? _value.cartButtonTap
                : cartButtonTap // ignore: cast_nullable_to_non_nullable
                    as VoidCallback?,
      ),
    );
  }
}

/// @nodoc

class _$CategoryDetailPageDataImpl
    with DiagnosticableTreeMixin
    implements _CategoryDetailPageData {
  const _$CategoryDetailPageDataImpl({
    required this.category,
    required this.parentCategory,
    this.backButtonTap,
    this.searchButtonTap,
    this.cartButtonTap,
  });

  @override
  final CategoriesItems category;
  @override
  final CategoriesItems parentCategory;
  @override
  final VoidCallback? backButtonTap;
  @override
  final VoidCallback? searchButtonTap;
  @override
  final VoidCallback? cartButtonTap;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CategoryDetailPageData(category: $category, parentCategory: $parentCategory, backButtonTap: $backButtonTap, searchButtonTap: $searchButtonTap, cartButtonTap: $cartButtonTap)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CategoryDetailPageData'))
      ..add(DiagnosticsProperty('category', category))
      ..add(DiagnosticsProperty('parentCategory', parentCategory))
      ..add(DiagnosticsProperty('backButtonTap', backButtonTap))
      ..add(DiagnosticsProperty('searchButtonTap', searchButtonTap))
      ..add(DiagnosticsProperty('cartButtonTap', cartButtonTap));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryDetailPageDataImpl &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.parentCategory, parentCategory) ||
                other.parentCategory == parentCategory) &&
            (identical(other.backButtonTap, backButtonTap) ||
                other.backButtonTap == backButtonTap) &&
            (identical(other.searchButtonTap, searchButtonTap) ||
                other.searchButtonTap == searchButtonTap) &&
            (identical(other.cartButtonTap, cartButtonTap) ||
                other.cartButtonTap == cartButtonTap));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    category,
    parentCategory,
    backButtonTap,
    searchButtonTap,
    cartButtonTap,
  );

  /// Create a copy of CategoryDetailPageData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoryDetailPageDataImplCopyWith<_$CategoryDetailPageDataImpl>
  get copyWith =>
      __$$CategoryDetailPageDataImplCopyWithImpl<_$CategoryDetailPageDataImpl>(
        this,
        _$identity,
      );
}

abstract class _CategoryDetailPageData implements CategoryDetailPageData {
  const factory _CategoryDetailPageData({
    required final CategoriesItems category,
    required final CategoriesItems parentCategory,
    final VoidCallback? backButtonTap,
    final VoidCallback? searchButtonTap,
    final VoidCallback? cartButtonTap,
  }) = _$CategoryDetailPageDataImpl;

  @override
  CategoriesItems get category;
  @override
  CategoriesItems get parentCategory;
  @override
  VoidCallback? get backButtonTap;
  @override
  VoidCallback? get searchButtonTap;
  @override
  VoidCallback? get cartButtonTap;

  /// Create a copy of CategoryDetailPageData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CategoryDetailPageDataImplCopyWith<_$CategoryDetailPageDataImpl>
  get copyWith => throw _privateConstructorUsedError;
}
