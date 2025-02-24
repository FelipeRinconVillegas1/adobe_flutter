// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'banners_carousel_dto.fr.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BannersCarouselDTO _$BannersCarouselDTOFromJson(Map<String, dynamic> json) {
  return _BannersCarouselDTO.fromJson(json);
}

/// @nodoc
mixin _$BannersCarouselDTO {
  List<BannerCarouselDTO> get items => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BannersCarouselDTOCopyWith<BannersCarouselDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BannersCarouselDTOCopyWith<$Res> {
  factory $BannersCarouselDTOCopyWith(
          BannersCarouselDTO value, $Res Function(BannersCarouselDTO) then) =
      _$BannersCarouselDTOCopyWithImpl<$Res, BannersCarouselDTO>;
  @useResult
  $Res call({List<BannerCarouselDTO> items});
}

/// @nodoc
class _$BannersCarouselDTOCopyWithImpl<$Res, $Val extends BannersCarouselDTO>
    implements $BannersCarouselDTOCopyWith<$Res> {
  _$BannersCarouselDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
  }) {
    return _then(_value.copyWith(
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<BannerCarouselDTO>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BannersCarouselDTOImplCopyWith<$Res>
    implements $BannersCarouselDTOCopyWith<$Res> {
  factory _$$BannersCarouselDTOImplCopyWith(_$BannersCarouselDTOImpl value,
          $Res Function(_$BannersCarouselDTOImpl) then) =
      __$$BannersCarouselDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<BannerCarouselDTO> items});
}

/// @nodoc
class __$$BannersCarouselDTOImplCopyWithImpl<$Res>
    extends _$BannersCarouselDTOCopyWithImpl<$Res, _$BannersCarouselDTOImpl>
    implements _$$BannersCarouselDTOImplCopyWith<$Res> {
  __$$BannersCarouselDTOImplCopyWithImpl(_$BannersCarouselDTOImpl _value,
      $Res Function(_$BannersCarouselDTOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
  }) {
    return _then(_$BannersCarouselDTOImpl(
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<BannerCarouselDTO>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BannersCarouselDTOImpl implements _BannersCarouselDTO {
  const _$BannersCarouselDTOImpl({required final List<BannerCarouselDTO> items})
      : _items = items;

  factory _$BannersCarouselDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$BannersCarouselDTOImplFromJson(json);

  final List<BannerCarouselDTO> _items;
  @override
  List<BannerCarouselDTO> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  String toString() {
    return 'BannersCarouselDTO(items: $items)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BannersCarouselDTOImpl &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_items));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BannersCarouselDTOImplCopyWith<_$BannersCarouselDTOImpl> get copyWith =>
      __$$BannersCarouselDTOImplCopyWithImpl<_$BannersCarouselDTOImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BannersCarouselDTOImplToJson(
      this,
    );
  }
}

abstract class _BannersCarouselDTO implements BannersCarouselDTO {
  const factory _BannersCarouselDTO(
          {required final List<BannerCarouselDTO> items}) =
      _$BannersCarouselDTOImpl;

  factory _BannersCarouselDTO.fromJson(Map<String, dynamic> json) =
      _$BannersCarouselDTOImpl.fromJson;

  @override
  List<BannerCarouselDTO> get items;
  @override
  @JsonKey(ignore: true)
  _$$BannersCarouselDTOImplCopyWith<_$BannersCarouselDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

BannerCarouselDTO _$BannerCarouselDTOFromJson(Map<String, dynamic> json) {
  return _BannerCarouselDTO.fromJson(json);
}

/// @nodoc
mixin _$BannerCarouselDTO {
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'image')
  String get urlImage => throw _privateConstructorUsedError;
  ItemTypeDTO get type => throw _privateConstructorUsedError;

  ///[preference] define order of banners in carousel
  int get preference => throw _privateConstructorUsedError;
  String? get promotion => throw _privateConstructorUsedError;
  List<String> get listUidSubcategory => throw _privateConstructorUsedError;
  String get uidCategory => throw _privateConstructorUsedError;
  String get label1Eng => throw _privateConstructorUsedError;
  String get label1Spn => throw _privateConstructorUsedError;
  String get label2Eng => throw _privateConstructorUsedError;
  String get label2Spn => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;

  /// Name of module in app example: DERMASCAN.
  @JsonKey(name: 'module')
  String get moduleInApp => throw _privateConstructorUsedError;
  String get skus => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BannerCarouselDTOCopyWith<BannerCarouselDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BannerCarouselDTOCopyWith<$Res> {
  factory $BannerCarouselDTOCopyWith(
          BannerCarouselDTO value, $Res Function(BannerCarouselDTO) then) =
      _$BannerCarouselDTOCopyWithImpl<$Res, BannerCarouselDTO>;
  @useResult
  $Res call(
      {String title,
      @JsonKey(name: 'image') String urlImage,
      ItemTypeDTO type,
      int preference,
      String? promotion,
      List<String> listUidSubcategory,
      String uidCategory,
      String label1Eng,
      String label1Spn,
      String label2Eng,
      String label2Spn,
      String url,
      @JsonKey(name: 'module') String moduleInApp,
      String skus});
}

/// @nodoc
class _$BannerCarouselDTOCopyWithImpl<$Res, $Val extends BannerCarouselDTO>
    implements $BannerCarouselDTOCopyWith<$Res> {
  _$BannerCarouselDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? urlImage = null,
    Object? type = null,
    Object? preference = null,
    Object? promotion = freezed,
    Object? listUidSubcategory = null,
    Object? uidCategory = null,
    Object? label1Eng = null,
    Object? label1Spn = null,
    Object? label2Eng = null,
    Object? label2Spn = null,
    Object? url = null,
    Object? moduleInApp = null,
    Object? skus = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      urlImage: null == urlImage
          ? _value.urlImage
          : urlImage // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ItemTypeDTO,
      preference: null == preference
          ? _value.preference
          : preference // ignore: cast_nullable_to_non_nullable
              as int,
      promotion: freezed == promotion
          ? _value.promotion
          : promotion // ignore: cast_nullable_to_non_nullable
              as String?,
      listUidSubcategory: null == listUidSubcategory
          ? _value.listUidSubcategory
          : listUidSubcategory // ignore: cast_nullable_to_non_nullable
              as List<String>,
      uidCategory: null == uidCategory
          ? _value.uidCategory
          : uidCategory // ignore: cast_nullable_to_non_nullable
              as String,
      label1Eng: null == label1Eng
          ? _value.label1Eng
          : label1Eng // ignore: cast_nullable_to_non_nullable
              as String,
      label1Spn: null == label1Spn
          ? _value.label1Spn
          : label1Spn // ignore: cast_nullable_to_non_nullable
              as String,
      label2Eng: null == label2Eng
          ? _value.label2Eng
          : label2Eng // ignore: cast_nullable_to_non_nullable
              as String,
      label2Spn: null == label2Spn
          ? _value.label2Spn
          : label2Spn // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      moduleInApp: null == moduleInApp
          ? _value.moduleInApp
          : moduleInApp // ignore: cast_nullable_to_non_nullable
              as String,
      skus: null == skus
          ? _value.skus
          : skus // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BannerCarouselDTOImplCopyWith<$Res>
    implements $BannerCarouselDTOCopyWith<$Res> {
  factory _$$BannerCarouselDTOImplCopyWith(_$BannerCarouselDTOImpl value,
          $Res Function(_$BannerCarouselDTOImpl) then) =
      __$$BannerCarouselDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String title,
      @JsonKey(name: 'image') String urlImage,
      ItemTypeDTO type,
      int preference,
      String? promotion,
      List<String> listUidSubcategory,
      String uidCategory,
      String label1Eng,
      String label1Spn,
      String label2Eng,
      String label2Spn,
      String url,
      @JsonKey(name: 'module') String moduleInApp,
      String skus});
}

/// @nodoc
class __$$BannerCarouselDTOImplCopyWithImpl<$Res>
    extends _$BannerCarouselDTOCopyWithImpl<$Res, _$BannerCarouselDTOImpl>
    implements _$$BannerCarouselDTOImplCopyWith<$Res> {
  __$$BannerCarouselDTOImplCopyWithImpl(_$BannerCarouselDTOImpl _value,
      $Res Function(_$BannerCarouselDTOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? urlImage = null,
    Object? type = null,
    Object? preference = null,
    Object? promotion = freezed,
    Object? listUidSubcategory = null,
    Object? uidCategory = null,
    Object? label1Eng = null,
    Object? label1Spn = null,
    Object? label2Eng = null,
    Object? label2Spn = null,
    Object? url = null,
    Object? moduleInApp = null,
    Object? skus = null,
  }) {
    return _then(_$BannerCarouselDTOImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      urlImage: null == urlImage
          ? _value.urlImage
          : urlImage // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ItemTypeDTO,
      preference: null == preference
          ? _value.preference
          : preference // ignore: cast_nullable_to_non_nullable
              as int,
      promotion: freezed == promotion
          ? _value.promotion
          : promotion // ignore: cast_nullable_to_non_nullable
              as String?,
      listUidSubcategory: null == listUidSubcategory
          ? _value._listUidSubcategory
          : listUidSubcategory // ignore: cast_nullable_to_non_nullable
              as List<String>,
      uidCategory: null == uidCategory
          ? _value.uidCategory
          : uidCategory // ignore: cast_nullable_to_non_nullable
              as String,
      label1Eng: null == label1Eng
          ? _value.label1Eng
          : label1Eng // ignore: cast_nullable_to_non_nullable
              as String,
      label1Spn: null == label1Spn
          ? _value.label1Spn
          : label1Spn // ignore: cast_nullable_to_non_nullable
              as String,
      label2Eng: null == label2Eng
          ? _value.label2Eng
          : label2Eng // ignore: cast_nullable_to_non_nullable
              as String,
      label2Spn: null == label2Spn
          ? _value.label2Spn
          : label2Spn // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      moduleInApp: null == moduleInApp
          ? _value.moduleInApp
          : moduleInApp // ignore: cast_nullable_to_non_nullable
              as String,
      skus: null == skus
          ? _value.skus
          : skus // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BannerCarouselDTOImpl implements _BannerCarouselDTO {
  const _$BannerCarouselDTOImpl(
      {required this.title,
      @JsonKey(name: 'image') required this.urlImage,
      required this.type,
      required this.preference,
      this.promotion,
      required final List<String> listUidSubcategory,
      required this.uidCategory,
      required this.label1Eng,
      required this.label1Spn,
      required this.label2Eng,
      required this.label2Spn,
      required this.url,
      @JsonKey(name: 'module') required this.moduleInApp,
      required this.skus})
      : _listUidSubcategory = listUidSubcategory;

  factory _$BannerCarouselDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$BannerCarouselDTOImplFromJson(json);

  @override
  final String title;
  @override
  @JsonKey(name: 'image')
  final String urlImage;
  @override
  final ItemTypeDTO type;

  ///[preference] define order of banners in carousel
  @override
  final int preference;
  @override
  final String? promotion;
  final List<String> _listUidSubcategory;
  @override
  List<String> get listUidSubcategory {
    if (_listUidSubcategory is EqualUnmodifiableListView)
      return _listUidSubcategory;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_listUidSubcategory);
  }

  @override
  final String uidCategory;
  @override
  final String label1Eng;
  @override
  final String label1Spn;
  @override
  final String label2Eng;
  @override
  final String label2Spn;
  @override
  final String url;

  /// Name of module in app example: DERMASCAN.
  @override
  @JsonKey(name: 'module')
  final String moduleInApp;
  @override
  final String skus;

  @override
  String toString() {
    return 'BannerCarouselDTO(title: $title, urlImage: $urlImage, type: $type, preference: $preference, promotion: $promotion, listUidSubcategory: $listUidSubcategory, uidCategory: $uidCategory, label1Eng: $label1Eng, label1Spn: $label1Spn, label2Eng: $label2Eng, label2Spn: $label2Spn, url: $url, moduleInApp: $moduleInApp, skus: $skus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BannerCarouselDTOImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.urlImage, urlImage) ||
                other.urlImage == urlImage) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.preference, preference) ||
                other.preference == preference) &&
            (identical(other.promotion, promotion) ||
                other.promotion == promotion) &&
            const DeepCollectionEquality()
                .equals(other._listUidSubcategory, _listUidSubcategory) &&
            (identical(other.uidCategory, uidCategory) ||
                other.uidCategory == uidCategory) &&
            (identical(other.label1Eng, label1Eng) ||
                other.label1Eng == label1Eng) &&
            (identical(other.label1Spn, label1Spn) ||
                other.label1Spn == label1Spn) &&
            (identical(other.label2Eng, label2Eng) ||
                other.label2Eng == label2Eng) &&
            (identical(other.label2Spn, label2Spn) ||
                other.label2Spn == label2Spn) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.moduleInApp, moduleInApp) ||
                other.moduleInApp == moduleInApp) &&
            (identical(other.skus, skus) || other.skus == skus));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      title,
      urlImage,
      type,
      preference,
      promotion,
      const DeepCollectionEquality().hash(_listUidSubcategory),
      uidCategory,
      label1Eng,
      label1Spn,
      label2Eng,
      label2Spn,
      url,
      moduleInApp,
      skus);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BannerCarouselDTOImplCopyWith<_$BannerCarouselDTOImpl> get copyWith =>
      __$$BannerCarouselDTOImplCopyWithImpl<_$BannerCarouselDTOImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BannerCarouselDTOImplToJson(
      this,
    );
  }
}

abstract class _BannerCarouselDTO implements BannerCarouselDTO {
  const factory _BannerCarouselDTO(
      {required final String title,
      @JsonKey(name: 'image') required final String urlImage,
      required final ItemTypeDTO type,
      required final int preference,
      final String? promotion,
      required final List<String> listUidSubcategory,
      required final String uidCategory,
      required final String label1Eng,
      required final String label1Spn,
      required final String label2Eng,
      required final String label2Spn,
      required final String url,
      @JsonKey(name: 'module') required final String moduleInApp,
      required final String skus}) = _$BannerCarouselDTOImpl;

  factory _BannerCarouselDTO.fromJson(Map<String, dynamic> json) =
      _$BannerCarouselDTOImpl.fromJson;

  @override
  String get title;
  @override
  @JsonKey(name: 'image')
  String get urlImage;
  @override
  ItemTypeDTO get type;
  @override

  ///[preference] define order of banners in carousel
  int get preference;
  @override
  String? get promotion;
  @override
  List<String> get listUidSubcategory;
  @override
  String get uidCategory;
  @override
  String get label1Eng;
  @override
  String get label1Spn;
  @override
  String get label2Eng;
  @override
  String get label2Spn;
  @override
  String get url;
  @override

  /// Name of module in app example: DERMASCAN.
  @JsonKey(name: 'module')
  String get moduleInApp;
  @override
  String get skus;
  @override
  @JsonKey(ignore: true)
  _$$BannerCarouselDTOImplCopyWith<_$BannerCarouselDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
