// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'services_health_home_dto.fr.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ServicesHealthHomeDTO _$ServicesHealthHomeDTOFromJson(
    Map<String, dynamic> json) {
  return _ServicesHealthHomeDTO.fromJson(json);
}

/// @nodoc
mixin _$ServicesHealthHomeDTO {
  List<ItemsServicesHealthHomeDTO> get items =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ServicesHealthHomeDTOCopyWith<ServicesHealthHomeDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServicesHealthHomeDTOCopyWith<$Res> {
  factory $ServicesHealthHomeDTOCopyWith(ServicesHealthHomeDTO value,
          $Res Function(ServicesHealthHomeDTO) then) =
      _$ServicesHealthHomeDTOCopyWithImpl<$Res, ServicesHealthHomeDTO>;
  @useResult
  $Res call({List<ItemsServicesHealthHomeDTO> items});
}

/// @nodoc
class _$ServicesHealthHomeDTOCopyWithImpl<$Res,
        $Val extends ServicesHealthHomeDTO>
    implements $ServicesHealthHomeDTOCopyWith<$Res> {
  _$ServicesHealthHomeDTOCopyWithImpl(this._value, this._then);

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
              as List<ItemsServicesHealthHomeDTO>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ServicesHealthHomeDTOImplCopyWith<$Res>
    implements $ServicesHealthHomeDTOCopyWith<$Res> {
  factory _$$ServicesHealthHomeDTOImplCopyWith(
          _$ServicesHealthHomeDTOImpl value,
          $Res Function(_$ServicesHealthHomeDTOImpl) then) =
      __$$ServicesHealthHomeDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<ItemsServicesHealthHomeDTO> items});
}

/// @nodoc
class __$$ServicesHealthHomeDTOImplCopyWithImpl<$Res>
    extends _$ServicesHealthHomeDTOCopyWithImpl<$Res,
        _$ServicesHealthHomeDTOImpl>
    implements _$$ServicesHealthHomeDTOImplCopyWith<$Res> {
  __$$ServicesHealthHomeDTOImplCopyWithImpl(_$ServicesHealthHomeDTOImpl _value,
      $Res Function(_$ServicesHealthHomeDTOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
  }) {
    return _then(_$ServicesHealthHomeDTOImpl(
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<ItemsServicesHealthHomeDTO>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ServicesHealthHomeDTOImpl implements _ServicesHealthHomeDTO {
  const _$ServicesHealthHomeDTOImpl(
      {required final List<ItemsServicesHealthHomeDTO> items})
      : _items = items;

  factory _$ServicesHealthHomeDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$ServicesHealthHomeDTOImplFromJson(json);

  final List<ItemsServicesHealthHomeDTO> _items;
  @override
  List<ItemsServicesHealthHomeDTO> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  String toString() {
    return 'ServicesHealthHomeDTO(items: $items)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServicesHealthHomeDTOImpl &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_items));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ServicesHealthHomeDTOImplCopyWith<_$ServicesHealthHomeDTOImpl>
      get copyWith => __$$ServicesHealthHomeDTOImplCopyWithImpl<
          _$ServicesHealthHomeDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ServicesHealthHomeDTOImplToJson(
      this,
    );
  }
}

abstract class _ServicesHealthHomeDTO implements ServicesHealthHomeDTO {
  const factory _ServicesHealthHomeDTO(
          {required final List<ItemsServicesHealthHomeDTO> items}) =
      _$ServicesHealthHomeDTOImpl;

  factory _ServicesHealthHomeDTO.fromJson(Map<String, dynamic> json) =
      _$ServicesHealthHomeDTOImpl.fromJson;

  @override
  List<ItemsServicesHealthHomeDTO> get items;
  @override
  @JsonKey(ignore: true)
  _$$ServicesHealthHomeDTOImplCopyWith<_$ServicesHealthHomeDTOImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ItemsServicesHealthHomeDTO _$ItemsServicesHealthHomeDTOFromJson(
    Map<String, dynamic> json) {
  return _ItemsServicesHealthHomeDTO.fromJson(json);
}

/// @nodoc
mixin _$ItemsServicesHealthHomeDTO {
  String get title => throw _privateConstructorUsedError;
  String get urlImage => throw _privateConstructorUsedError;
  ItemTypeDTO get type => throw _privateConstructorUsedError;
  int get preference => throw _privateConstructorUsedError;
  String get categoryName => throw _privateConstructorUsedError;
  String get label1Eng => throw _privateConstructorUsedError;
  String get label1Spn => throw _privateConstructorUsedError;
  String get label2Eng => throw _privateConstructorUsedError;
  String get label2Spn => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ItemsServicesHealthHomeDTOCopyWith<ItemsServicesHealthHomeDTO>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemsServicesHealthHomeDTOCopyWith<$Res> {
  factory $ItemsServicesHealthHomeDTOCopyWith(ItemsServicesHealthHomeDTO value,
          $Res Function(ItemsServicesHealthHomeDTO) then) =
      _$ItemsServicesHealthHomeDTOCopyWithImpl<$Res,
          ItemsServicesHealthHomeDTO>;
  @useResult
  $Res call(
      {String title,
      String urlImage,
      ItemTypeDTO type,
      int preference,
      String categoryName,
      String label1Eng,
      String label1Spn,
      String label2Eng,
      String label2Spn,
      String url});
}

/// @nodoc
class _$ItemsServicesHealthHomeDTOCopyWithImpl<$Res,
        $Val extends ItemsServicesHealthHomeDTO>
    implements $ItemsServicesHealthHomeDTOCopyWith<$Res> {
  _$ItemsServicesHealthHomeDTOCopyWithImpl(this._value, this._then);

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
    Object? categoryName = null,
    Object? label1Eng = null,
    Object? label1Spn = null,
    Object? label2Eng = null,
    Object? label2Spn = null,
    Object? url = null,
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
      categoryName: null == categoryName
          ? _value.categoryName
          : categoryName // ignore: cast_nullable_to_non_nullable
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ItemsServicesHealthHomeDTOImplCopyWith<$Res>
    implements $ItemsServicesHealthHomeDTOCopyWith<$Res> {
  factory _$$ItemsServicesHealthHomeDTOImplCopyWith(
          _$ItemsServicesHealthHomeDTOImpl value,
          $Res Function(_$ItemsServicesHealthHomeDTOImpl) then) =
      __$$ItemsServicesHealthHomeDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String title,
      String urlImage,
      ItemTypeDTO type,
      int preference,
      String categoryName,
      String label1Eng,
      String label1Spn,
      String label2Eng,
      String label2Spn,
      String url});
}

/// @nodoc
class __$$ItemsServicesHealthHomeDTOImplCopyWithImpl<$Res>
    extends _$ItemsServicesHealthHomeDTOCopyWithImpl<$Res,
        _$ItemsServicesHealthHomeDTOImpl>
    implements _$$ItemsServicesHealthHomeDTOImplCopyWith<$Res> {
  __$$ItemsServicesHealthHomeDTOImplCopyWithImpl(
      _$ItemsServicesHealthHomeDTOImpl _value,
      $Res Function(_$ItemsServicesHealthHomeDTOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? urlImage = null,
    Object? type = null,
    Object? preference = null,
    Object? categoryName = null,
    Object? label1Eng = null,
    Object? label1Spn = null,
    Object? label2Eng = null,
    Object? label2Spn = null,
    Object? url = null,
  }) {
    return _then(_$ItemsServicesHealthHomeDTOImpl(
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
      categoryName: null == categoryName
          ? _value.categoryName
          : categoryName // ignore: cast_nullable_to_non_nullable
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ItemsServicesHealthHomeDTOImpl implements _ItemsServicesHealthHomeDTO {
  const _$ItemsServicesHealthHomeDTOImpl(
      {required this.title,
      required this.urlImage,
      required this.type,
      required this.preference,
      required this.categoryName,
      required this.label1Eng,
      required this.label1Spn,
      required this.label2Eng,
      required this.label2Spn,
      required this.url});

  factory _$ItemsServicesHealthHomeDTOImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ItemsServicesHealthHomeDTOImplFromJson(json);

  @override
  final String title;
  @override
  final String urlImage;
  @override
  final ItemTypeDTO type;
  @override
  final int preference;
  @override
  final String categoryName;
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

  @override
  String toString() {
    return 'ItemsServicesHealthHomeDTO(title: $title, urlImage: $urlImage, type: $type, preference: $preference, categoryName: $categoryName, label1Eng: $label1Eng, label1Spn: $label1Spn, label2Eng: $label2Eng, label2Spn: $label2Spn, url: $url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ItemsServicesHealthHomeDTOImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.urlImage, urlImage) ||
                other.urlImage == urlImage) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.preference, preference) ||
                other.preference == preference) &&
            (identical(other.categoryName, categoryName) ||
                other.categoryName == categoryName) &&
            (identical(other.label1Eng, label1Eng) ||
                other.label1Eng == label1Eng) &&
            (identical(other.label1Spn, label1Spn) ||
                other.label1Spn == label1Spn) &&
            (identical(other.label2Eng, label2Eng) ||
                other.label2Eng == label2Eng) &&
            (identical(other.label2Spn, label2Spn) ||
                other.label2Spn == label2Spn) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      title,
      urlImage,
      type,
      preference,
      categoryName,
      label1Eng,
      label1Spn,
      label2Eng,
      label2Spn,
      url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ItemsServicesHealthHomeDTOImplCopyWith<_$ItemsServicesHealthHomeDTOImpl>
      get copyWith => __$$ItemsServicesHealthHomeDTOImplCopyWithImpl<
          _$ItemsServicesHealthHomeDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ItemsServicesHealthHomeDTOImplToJson(
      this,
    );
  }
}

abstract class _ItemsServicesHealthHomeDTO
    implements ItemsServicesHealthHomeDTO {
  const factory _ItemsServicesHealthHomeDTO(
      {required final String title,
      required final String urlImage,
      required final ItemTypeDTO type,
      required final int preference,
      required final String categoryName,
      required final String label1Eng,
      required final String label1Spn,
      required final String label2Eng,
      required final String label2Spn,
      required final String url}) = _$ItemsServicesHealthHomeDTOImpl;

  factory _ItemsServicesHealthHomeDTO.fromJson(Map<String, dynamic> json) =
      _$ItemsServicesHealthHomeDTOImpl.fromJson;

  @override
  String get title;
  @override
  String get urlImage;
  @override
  ItemTypeDTO get type;
  @override
  int get preference;
  @override
  String get categoryName;
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
  @JsonKey(ignore: true)
  _$$ItemsServicesHealthHomeDTOImplCopyWith<_$ItemsServicesHealthHomeDTOImpl>
      get copyWith => throw _privateConstructorUsedError;
}
