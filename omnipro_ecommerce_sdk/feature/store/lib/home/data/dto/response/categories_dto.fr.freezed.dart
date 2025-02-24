// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'categories_dto.fr.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CategoriesDTO _$CategoriesDTOFromJson(Map<String, dynamic> json) {
  return _CategoriesDTO.fromJson(json);
}

/// @nodoc
mixin _$CategoriesDTO {
  List<CategoriesItemsDTO> get items => throw _privateConstructorUsedError;
  @JsonKey(name: 'page_info')
  CategoriesPageInfoDTO get pageInfo => throw _privateConstructorUsedError;

  /// Serializes this CategoriesDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CategoriesDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CategoriesDTOCopyWith<CategoriesDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoriesDTOCopyWith<$Res> {
  factory $CategoriesDTOCopyWith(
          CategoriesDTO value, $Res Function(CategoriesDTO) then) =
      _$CategoriesDTOCopyWithImpl<$Res, CategoriesDTO>;
  @useResult
  $Res call(
      {List<CategoriesItemsDTO> items,
      @JsonKey(name: 'page_info') CategoriesPageInfoDTO pageInfo});

  $CategoriesPageInfoDTOCopyWith<$Res> get pageInfo;
}

/// @nodoc
class _$CategoriesDTOCopyWithImpl<$Res, $Val extends CategoriesDTO>
    implements $CategoriesDTOCopyWith<$Res> {
  _$CategoriesDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CategoriesDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
    Object? pageInfo = null,
  }) {
    return _then(_value.copyWith(
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<CategoriesItemsDTO>,
      pageInfo: null == pageInfo
          ? _value.pageInfo
          : pageInfo // ignore: cast_nullable_to_non_nullable
              as CategoriesPageInfoDTO,
    ) as $Val);
  }

  /// Create a copy of CategoriesDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CategoriesPageInfoDTOCopyWith<$Res> get pageInfo {
    return $CategoriesPageInfoDTOCopyWith<$Res>(_value.pageInfo, (value) {
      return _then(_value.copyWith(pageInfo: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CategoriesDTOImplCopyWith<$Res>
    implements $CategoriesDTOCopyWith<$Res> {
  factory _$$CategoriesDTOImplCopyWith(
          _$CategoriesDTOImpl value, $Res Function(_$CategoriesDTOImpl) then) =
      __$$CategoriesDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<CategoriesItemsDTO> items,
      @JsonKey(name: 'page_info') CategoriesPageInfoDTO pageInfo});

  @override
  $CategoriesPageInfoDTOCopyWith<$Res> get pageInfo;
}

/// @nodoc
class __$$CategoriesDTOImplCopyWithImpl<$Res>
    extends _$CategoriesDTOCopyWithImpl<$Res, _$CategoriesDTOImpl>
    implements _$$CategoriesDTOImplCopyWith<$Res> {
  __$$CategoriesDTOImplCopyWithImpl(
      _$CategoriesDTOImpl _value, $Res Function(_$CategoriesDTOImpl) _then)
      : super(_value, _then);

  /// Create a copy of CategoriesDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
    Object? pageInfo = null,
  }) {
    return _then(_$CategoriesDTOImpl(
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<CategoriesItemsDTO>,
      pageInfo: null == pageInfo
          ? _value.pageInfo
          : pageInfo // ignore: cast_nullable_to_non_nullable
              as CategoriesPageInfoDTO,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CategoriesDTOImpl implements _CategoriesDTO {
  const _$CategoriesDTOImpl(
      {required final List<CategoriesItemsDTO> items,
      @JsonKey(name: 'page_info') required this.pageInfo})
      : _items = items;

  factory _$CategoriesDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$CategoriesDTOImplFromJson(json);

  final List<CategoriesItemsDTO> _items;
  @override
  List<CategoriesItemsDTO> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  @JsonKey(name: 'page_info')
  final CategoriesPageInfoDTO pageInfo;

  @override
  String toString() {
    return 'CategoriesDTO(items: $items, pageInfo: $pageInfo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoriesDTOImpl &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            (identical(other.pageInfo, pageInfo) ||
                other.pageInfo == pageInfo));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_items), pageInfo);

  /// Create a copy of CategoriesDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoriesDTOImplCopyWith<_$CategoriesDTOImpl> get copyWith =>
      __$$CategoriesDTOImplCopyWithImpl<_$CategoriesDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CategoriesDTOImplToJson(
      this,
    );
  }
}

abstract class _CategoriesDTO implements CategoriesDTO {
  const factory _CategoriesDTO(
      {required final List<CategoriesItemsDTO> items,
      @JsonKey(name: 'page_info')
      required final CategoriesPageInfoDTO pageInfo}) = _$CategoriesDTOImpl;

  factory _CategoriesDTO.fromJson(Map<String, dynamic> json) =
      _$CategoriesDTOImpl.fromJson;

  @override
  List<CategoriesItemsDTO> get items;
  @override
  @JsonKey(name: 'page_info')
  CategoriesPageInfoDTO get pageInfo;

  /// Create a copy of CategoriesDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CategoriesDTOImplCopyWith<_$CategoriesDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CategoriesItemsDTO _$CategoriesItemsDTOFromJson(Map<String, dynamic> json) {
  return _CategoriesItemsDTO.fromJson(json);
}

/// @nodoc
mixin _$CategoriesItemsDTO {
  String get uid => throw _privateConstructorUsedError;
  int get level => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get position => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'app_position')
  int? get appPosition => throw _privateConstructorUsedError;
  @JsonKey(name: 'app_main_image')
  String? get appMainImage => throw _privateConstructorUsedError;
  @JsonKey(name: 'app_banner_image')
  String? get appBannerImage => throw _privateConstructorUsedError;
  @JsonKey(name: 'children_count')
  String get childrenCount => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: [])
  List<CategoriesItemsDTO>? get children => throw _privateConstructorUsedError;
  @JsonKey(name: 'url_path')
  String? get urlPath => throw _privateConstructorUsedError;
  @JsonKey(name: 'include_in_menu')
  int? get includeInMenu => throw _privateConstructorUsedError;

  /// Serializes this CategoriesItemsDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CategoriesItemsDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CategoriesItemsDTOCopyWith<CategoriesItemsDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoriesItemsDTOCopyWith<$Res> {
  factory $CategoriesItemsDTOCopyWith(
          CategoriesItemsDTO value, $Res Function(CategoriesItemsDTO) then) =
      _$CategoriesItemsDTOCopyWithImpl<$Res, CategoriesItemsDTO>;
  @useResult
  $Res call(
      {String uid,
      int level,
      String name,
      int position,
      int id,
      @JsonKey(name: 'app_position') int? appPosition,
      @JsonKey(name: 'app_main_image') String? appMainImage,
      @JsonKey(name: 'app_banner_image') String? appBannerImage,
      @JsonKey(name: 'children_count') String childrenCount,
      @JsonKey(defaultValue: []) List<CategoriesItemsDTO>? children,
      @JsonKey(name: 'url_path') String? urlPath,
      @JsonKey(name: 'include_in_menu') int? includeInMenu});
}

/// @nodoc
class _$CategoriesItemsDTOCopyWithImpl<$Res, $Val extends CategoriesItemsDTO>
    implements $CategoriesItemsDTOCopyWith<$Res> {
  _$CategoriesItemsDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CategoriesItemsDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
    Object? level = null,
    Object? name = null,
    Object? position = null,
    Object? id = null,
    Object? appPosition = freezed,
    Object? appMainImage = freezed,
    Object? appBannerImage = freezed,
    Object? childrenCount = null,
    Object? children = freezed,
    Object? urlPath = freezed,
    Object? includeInMenu = freezed,
  }) {
    return _then(_value.copyWith(
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      level: null == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      position: null == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as int,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      appPosition: freezed == appPosition
          ? _value.appPosition
          : appPosition // ignore: cast_nullable_to_non_nullable
              as int?,
      appMainImage: freezed == appMainImage
          ? _value.appMainImage
          : appMainImage // ignore: cast_nullable_to_non_nullable
              as String?,
      appBannerImage: freezed == appBannerImage
          ? _value.appBannerImage
          : appBannerImage // ignore: cast_nullable_to_non_nullable
              as String?,
      childrenCount: null == childrenCount
          ? _value.childrenCount
          : childrenCount // ignore: cast_nullable_to_non_nullable
              as String,
      children: freezed == children
          ? _value.children
          : children // ignore: cast_nullable_to_non_nullable
              as List<CategoriesItemsDTO>?,
      urlPath: freezed == urlPath
          ? _value.urlPath
          : urlPath // ignore: cast_nullable_to_non_nullable
              as String?,
      includeInMenu: freezed == includeInMenu
          ? _value.includeInMenu
          : includeInMenu // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CategoriesItemsDTOImplCopyWith<$Res>
    implements $CategoriesItemsDTOCopyWith<$Res> {
  factory _$$CategoriesItemsDTOImplCopyWith(_$CategoriesItemsDTOImpl value,
          $Res Function(_$CategoriesItemsDTOImpl) then) =
      __$$CategoriesItemsDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String uid,
      int level,
      String name,
      int position,
      int id,
      @JsonKey(name: 'app_position') int? appPosition,
      @JsonKey(name: 'app_main_image') String? appMainImage,
      @JsonKey(name: 'app_banner_image') String? appBannerImage,
      @JsonKey(name: 'children_count') String childrenCount,
      @JsonKey(defaultValue: []) List<CategoriesItemsDTO>? children,
      @JsonKey(name: 'url_path') String? urlPath,
      @JsonKey(name: 'include_in_menu') int? includeInMenu});
}

/// @nodoc
class __$$CategoriesItemsDTOImplCopyWithImpl<$Res>
    extends _$CategoriesItemsDTOCopyWithImpl<$Res, _$CategoriesItemsDTOImpl>
    implements _$$CategoriesItemsDTOImplCopyWith<$Res> {
  __$$CategoriesItemsDTOImplCopyWithImpl(_$CategoriesItemsDTOImpl _value,
      $Res Function(_$CategoriesItemsDTOImpl) _then)
      : super(_value, _then);

  /// Create a copy of CategoriesItemsDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
    Object? level = null,
    Object? name = null,
    Object? position = null,
    Object? id = null,
    Object? appPosition = freezed,
    Object? appMainImage = freezed,
    Object? appBannerImage = freezed,
    Object? childrenCount = null,
    Object? children = freezed,
    Object? urlPath = freezed,
    Object? includeInMenu = freezed,
  }) {
    return _then(_$CategoriesItemsDTOImpl(
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      level: null == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      position: null == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as int,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      appPosition: freezed == appPosition
          ? _value.appPosition
          : appPosition // ignore: cast_nullable_to_non_nullable
              as int?,
      appMainImage: freezed == appMainImage
          ? _value.appMainImage
          : appMainImage // ignore: cast_nullable_to_non_nullable
              as String?,
      appBannerImage: freezed == appBannerImage
          ? _value.appBannerImage
          : appBannerImage // ignore: cast_nullable_to_non_nullable
              as String?,
      childrenCount: null == childrenCount
          ? _value.childrenCount
          : childrenCount // ignore: cast_nullable_to_non_nullable
              as String,
      children: freezed == children
          ? _value._children
          : children // ignore: cast_nullable_to_non_nullable
              as List<CategoriesItemsDTO>?,
      urlPath: freezed == urlPath
          ? _value.urlPath
          : urlPath // ignore: cast_nullable_to_non_nullable
              as String?,
      includeInMenu: freezed == includeInMenu
          ? _value.includeInMenu
          : includeInMenu // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CategoriesItemsDTOImpl implements _CategoriesItemsDTO {
  const _$CategoriesItemsDTOImpl(
      {required this.uid,
      required this.level,
      required this.name,
      required this.position,
      required this.id,
      @JsonKey(name: 'app_position') this.appPosition,
      @JsonKey(name: 'app_main_image') this.appMainImage,
      @JsonKey(name: 'app_banner_image') this.appBannerImage,
      @JsonKey(name: 'children_count') required this.childrenCount,
      @JsonKey(defaultValue: []) final List<CategoriesItemsDTO>? children,
      @JsonKey(name: 'url_path') this.urlPath,
      @JsonKey(name: 'include_in_menu') this.includeInMenu})
      : _children = children;

  factory _$CategoriesItemsDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$CategoriesItemsDTOImplFromJson(json);

  @override
  final String uid;
  @override
  final int level;
  @override
  final String name;
  @override
  final int position;
  @override
  final int id;
  @override
  @JsonKey(name: 'app_position')
  final int? appPosition;
  @override
  @JsonKey(name: 'app_main_image')
  final String? appMainImage;
  @override
  @JsonKey(name: 'app_banner_image')
  final String? appBannerImage;
  @override
  @JsonKey(name: 'children_count')
  final String childrenCount;
  final List<CategoriesItemsDTO>? _children;
  @override
  @JsonKey(defaultValue: [])
  List<CategoriesItemsDTO>? get children {
    final value = _children;
    if (value == null) return null;
    if (_children is EqualUnmodifiableListView) return _children;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'url_path')
  final String? urlPath;
  @override
  @JsonKey(name: 'include_in_menu')
  final int? includeInMenu;

  @override
  String toString() {
    return 'CategoriesItemsDTO(uid: $uid, level: $level, name: $name, position: $position, id: $id, appPosition: $appPosition, appMainImage: $appMainImage, appBannerImage: $appBannerImage, childrenCount: $childrenCount, children: $children, urlPath: $urlPath, includeInMenu: $includeInMenu)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoriesItemsDTOImpl &&
            (identical(other.uid, uid) || other.uid == uid) &&
            (identical(other.level, level) || other.level == level) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.position, position) ||
                other.position == position) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.appPosition, appPosition) ||
                other.appPosition == appPosition) &&
            (identical(other.appMainImage, appMainImage) ||
                other.appMainImage == appMainImage) &&
            (identical(other.appBannerImage, appBannerImage) ||
                other.appBannerImage == appBannerImage) &&
            (identical(other.childrenCount, childrenCount) ||
                other.childrenCount == childrenCount) &&
            const DeepCollectionEquality().equals(other._children, _children) &&
            (identical(other.urlPath, urlPath) || other.urlPath == urlPath) &&
            (identical(other.includeInMenu, includeInMenu) ||
                other.includeInMenu == includeInMenu));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      uid,
      level,
      name,
      position,
      id,
      appPosition,
      appMainImage,
      appBannerImage,
      childrenCount,
      const DeepCollectionEquality().hash(_children),
      urlPath,
      includeInMenu);

  /// Create a copy of CategoriesItemsDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoriesItemsDTOImplCopyWith<_$CategoriesItemsDTOImpl> get copyWith =>
      __$$CategoriesItemsDTOImplCopyWithImpl<_$CategoriesItemsDTOImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CategoriesItemsDTOImplToJson(
      this,
    );
  }
}

abstract class _CategoriesItemsDTO implements CategoriesItemsDTO {
  const factory _CategoriesItemsDTO(
          {required final String uid,
          required final int level,
          required final String name,
          required final int position,
          required final int id,
          @JsonKey(name: 'app_position') final int? appPosition,
          @JsonKey(name: 'app_main_image') final String? appMainImage,
          @JsonKey(name: 'app_banner_image') final String? appBannerImage,
          @JsonKey(name: 'children_count') required final String childrenCount,
          @JsonKey(defaultValue: []) final List<CategoriesItemsDTO>? children,
          @JsonKey(name: 'url_path') final String? urlPath,
          @JsonKey(name: 'include_in_menu') final int? includeInMenu}) =
      _$CategoriesItemsDTOImpl;

  factory _CategoriesItemsDTO.fromJson(Map<String, dynamic> json) =
      _$CategoriesItemsDTOImpl.fromJson;

  @override
  String get uid;
  @override
  int get level;
  @override
  String get name;
  @override
  int get position;
  @override
  int get id;
  @override
  @JsonKey(name: 'app_position')
  int? get appPosition;
  @override
  @JsonKey(name: 'app_main_image')
  String? get appMainImage;
  @override
  @JsonKey(name: 'app_banner_image')
  String? get appBannerImage;
  @override
  @JsonKey(name: 'children_count')
  String get childrenCount;
  @override
  @JsonKey(defaultValue: [])
  List<CategoriesItemsDTO>? get children;
  @override
  @JsonKey(name: 'url_path')
  String? get urlPath;
  @override
  @JsonKey(name: 'include_in_menu')
  int? get includeInMenu;

  /// Create a copy of CategoriesItemsDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CategoriesItemsDTOImplCopyWith<_$CategoriesItemsDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CategoriesPageInfoDTO _$CategoriesPageInfoDTOFromJson(
    Map<String, dynamic> json) {
  return _CategoriesPageInfoDTO.fromJson(json);
}

/// @nodoc
mixin _$CategoriesPageInfoDTO {
  @JsonKey(name: 'current_page')
  int get currentPage => throw _privateConstructorUsedError;
  @JsonKey(name: 'page_size')
  int get pageSize => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_pages')
  int get totalPages => throw _privateConstructorUsedError;

  /// Serializes this CategoriesPageInfoDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CategoriesPageInfoDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CategoriesPageInfoDTOCopyWith<CategoriesPageInfoDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoriesPageInfoDTOCopyWith<$Res> {
  factory $CategoriesPageInfoDTOCopyWith(CategoriesPageInfoDTO value,
          $Res Function(CategoriesPageInfoDTO) then) =
      _$CategoriesPageInfoDTOCopyWithImpl<$Res, CategoriesPageInfoDTO>;
  @useResult
  $Res call(
      {@JsonKey(name: 'current_page') int currentPage,
      @JsonKey(name: 'page_size') int pageSize,
      @JsonKey(name: 'total_pages') int totalPages});
}

/// @nodoc
class _$CategoriesPageInfoDTOCopyWithImpl<$Res,
        $Val extends CategoriesPageInfoDTO>
    implements $CategoriesPageInfoDTOCopyWith<$Res> {
  _$CategoriesPageInfoDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CategoriesPageInfoDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentPage = null,
    Object? pageSize = null,
    Object? totalPages = null,
  }) {
    return _then(_value.copyWith(
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      pageSize: null == pageSize
          ? _value.pageSize
          : pageSize // ignore: cast_nullable_to_non_nullable
              as int,
      totalPages: null == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CategoriesPageInfoDTOImplCopyWith<$Res>
    implements $CategoriesPageInfoDTOCopyWith<$Res> {
  factory _$$CategoriesPageInfoDTOImplCopyWith(
          _$CategoriesPageInfoDTOImpl value,
          $Res Function(_$CategoriesPageInfoDTOImpl) then) =
      __$$CategoriesPageInfoDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'current_page') int currentPage,
      @JsonKey(name: 'page_size') int pageSize,
      @JsonKey(name: 'total_pages') int totalPages});
}

/// @nodoc
class __$$CategoriesPageInfoDTOImplCopyWithImpl<$Res>
    extends _$CategoriesPageInfoDTOCopyWithImpl<$Res,
        _$CategoriesPageInfoDTOImpl>
    implements _$$CategoriesPageInfoDTOImplCopyWith<$Res> {
  __$$CategoriesPageInfoDTOImplCopyWithImpl(_$CategoriesPageInfoDTOImpl _value,
      $Res Function(_$CategoriesPageInfoDTOImpl) _then)
      : super(_value, _then);

  /// Create a copy of CategoriesPageInfoDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentPage = null,
    Object? pageSize = null,
    Object? totalPages = null,
  }) {
    return _then(_$CategoriesPageInfoDTOImpl(
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      pageSize: null == pageSize
          ? _value.pageSize
          : pageSize // ignore: cast_nullable_to_non_nullable
              as int,
      totalPages: null == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CategoriesPageInfoDTOImpl implements _CategoriesPageInfoDTO {
  const _$CategoriesPageInfoDTOImpl(
      {@JsonKey(name: 'current_page') required this.currentPage,
      @JsonKey(name: 'page_size') required this.pageSize,
      @JsonKey(name: 'total_pages') required this.totalPages});

  factory _$CategoriesPageInfoDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$CategoriesPageInfoDTOImplFromJson(json);

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
    return 'CategoriesPageInfoDTO(currentPage: $currentPage, pageSize: $pageSize, totalPages: $totalPages)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoriesPageInfoDTOImpl &&
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

  /// Create a copy of CategoriesPageInfoDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoriesPageInfoDTOImplCopyWith<_$CategoriesPageInfoDTOImpl>
      get copyWith => __$$CategoriesPageInfoDTOImplCopyWithImpl<
          _$CategoriesPageInfoDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CategoriesPageInfoDTOImplToJson(
      this,
    );
  }
}

abstract class _CategoriesPageInfoDTO implements CategoriesPageInfoDTO {
  const factory _CategoriesPageInfoDTO(
          {@JsonKey(name: 'current_page') required final int currentPage,
          @JsonKey(name: 'page_size') required final int pageSize,
          @JsonKey(name: 'total_pages') required final int totalPages}) =
      _$CategoriesPageInfoDTOImpl;

  factory _CategoriesPageInfoDTO.fromJson(Map<String, dynamic> json) =
      _$CategoriesPageInfoDTOImpl.fromJson;

  @override
  @JsonKey(name: 'current_page')
  int get currentPage;
  @override
  @JsonKey(name: 'page_size')
  int get pageSize;
  @override
  @JsonKey(name: 'total_pages')
  int get totalPages;

  /// Create a copy of CategoriesPageInfoDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CategoriesPageInfoDTOImplCopyWith<_$CategoriesPageInfoDTOImpl>
      get copyWith => throw _privateConstructorUsedError;
}
