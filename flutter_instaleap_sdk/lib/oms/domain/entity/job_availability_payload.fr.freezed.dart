// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'job_availability_payload.fr.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

JobAvailabilityPayload _$JobAvailabilityPayloadFromJson(
  Map<String, dynamic> json,
) {
  return _JobAvailabilityPayload.fromJson(json);
}

/// @nodoc
mixin _$JobAvailabilityPayload {
  @JsonKey(name: 'currency_code')
  String get currencyCode => throw _privateConstructorUsedError;
  String get start => throw _privateConstructorUsedError;
  String get end => throw _privateConstructorUsedError;
  @JsonKey(name: 'slot_size')
  int get slotSize => throw _privateConstructorUsedError;
  @JsonKey(name: 'minimum_slot_size')
  int? get minimumSlotSize => throw _privateConstructorUsedError; // Optional
  @JsonKey(name: 'operational_models_priority')
  List<String> get operationalModelsPriority =>
      throw _privateConstructorUsedError;
  bool? get fallback =>
      throw _privateConstructorUsedError; // Optional, with default value false
  @JsonKey(name: 'store_reference')
  String get storeReference => throw _privateConstructorUsedError;
  Origin get origin => throw _privateConstructorUsedError; // Origin object
  Destination get destination =>
      throw _privateConstructorUsedError; // Destination object
  @JsonKey(name: 'job_items')
  List<JobItem> get jobItems => throw _privateConstructorUsedError;

  /// Serializes this JobAvailabilityPayload to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of JobAvailabilityPayload
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $JobAvailabilityPayloadCopyWith<JobAvailabilityPayload> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JobAvailabilityPayloadCopyWith<$Res> {
  factory $JobAvailabilityPayloadCopyWith(
    JobAvailabilityPayload value,
    $Res Function(JobAvailabilityPayload) then,
  ) = _$JobAvailabilityPayloadCopyWithImpl<$Res, JobAvailabilityPayload>;
  @useResult
  $Res call({
    @JsonKey(name: 'currency_code') String currencyCode,
    String start,
    String end,
    @JsonKey(name: 'slot_size') int slotSize,
    @JsonKey(name: 'minimum_slot_size') int? minimumSlotSize,
    @JsonKey(name: 'operational_models_priority')
    List<String> operationalModelsPriority,
    bool? fallback,
    @JsonKey(name: 'store_reference') String storeReference,
    Origin origin,
    Destination destination,
    @JsonKey(name: 'job_items') List<JobItem> jobItems,
  });

  $OriginCopyWith<$Res> get origin;
  $DestinationCopyWith<$Res> get destination;
}

/// @nodoc
class _$JobAvailabilityPayloadCopyWithImpl<
  $Res,
  $Val extends JobAvailabilityPayload
>
    implements $JobAvailabilityPayloadCopyWith<$Res> {
  _$JobAvailabilityPayloadCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of JobAvailabilityPayload
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currencyCode = null,
    Object? start = null,
    Object? end = null,
    Object? slotSize = null,
    Object? minimumSlotSize = freezed,
    Object? operationalModelsPriority = null,
    Object? fallback = freezed,
    Object? storeReference = null,
    Object? origin = null,
    Object? destination = null,
    Object? jobItems = null,
  }) {
    return _then(
      _value.copyWith(
            currencyCode:
                null == currencyCode
                    ? _value.currencyCode
                    : currencyCode // ignore: cast_nullable_to_non_nullable
                        as String,
            start:
                null == start
                    ? _value.start
                    : start // ignore: cast_nullable_to_non_nullable
                        as String,
            end:
                null == end
                    ? _value.end
                    : end // ignore: cast_nullable_to_non_nullable
                        as String,
            slotSize:
                null == slotSize
                    ? _value.slotSize
                    : slotSize // ignore: cast_nullable_to_non_nullable
                        as int,
            minimumSlotSize:
                freezed == minimumSlotSize
                    ? _value.minimumSlotSize
                    : minimumSlotSize // ignore: cast_nullable_to_non_nullable
                        as int?,
            operationalModelsPriority:
                null == operationalModelsPriority
                    ? _value.operationalModelsPriority
                    : operationalModelsPriority // ignore: cast_nullable_to_non_nullable
                        as List<String>,
            fallback:
                freezed == fallback
                    ? _value.fallback
                    : fallback // ignore: cast_nullable_to_non_nullable
                        as bool?,
            storeReference:
                null == storeReference
                    ? _value.storeReference
                    : storeReference // ignore: cast_nullable_to_non_nullable
                        as String,
            origin:
                null == origin
                    ? _value.origin
                    : origin // ignore: cast_nullable_to_non_nullable
                        as Origin,
            destination:
                null == destination
                    ? _value.destination
                    : destination // ignore: cast_nullable_to_non_nullable
                        as Destination,
            jobItems:
                null == jobItems
                    ? _value.jobItems
                    : jobItems // ignore: cast_nullable_to_non_nullable
                        as List<JobItem>,
          )
          as $Val,
    );
  }

  /// Create a copy of JobAvailabilityPayload
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OriginCopyWith<$Res> get origin {
    return $OriginCopyWith<$Res>(_value.origin, (value) {
      return _then(_value.copyWith(origin: value) as $Val);
    });
  }

  /// Create a copy of JobAvailabilityPayload
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DestinationCopyWith<$Res> get destination {
    return $DestinationCopyWith<$Res>(_value.destination, (value) {
      return _then(_value.copyWith(destination: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$JobAvailabilityPayloadImplCopyWith<$Res>
    implements $JobAvailabilityPayloadCopyWith<$Res> {
  factory _$$JobAvailabilityPayloadImplCopyWith(
    _$JobAvailabilityPayloadImpl value,
    $Res Function(_$JobAvailabilityPayloadImpl) then,
  ) = __$$JobAvailabilityPayloadImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'currency_code') String currencyCode,
    String start,
    String end,
    @JsonKey(name: 'slot_size') int slotSize,
    @JsonKey(name: 'minimum_slot_size') int? minimumSlotSize,
    @JsonKey(name: 'operational_models_priority')
    List<String> operationalModelsPriority,
    bool? fallback,
    @JsonKey(name: 'store_reference') String storeReference,
    Origin origin,
    Destination destination,
    @JsonKey(name: 'job_items') List<JobItem> jobItems,
  });

  @override
  $OriginCopyWith<$Res> get origin;
  @override
  $DestinationCopyWith<$Res> get destination;
}

/// @nodoc
class __$$JobAvailabilityPayloadImplCopyWithImpl<$Res>
    extends
        _$JobAvailabilityPayloadCopyWithImpl<$Res, _$JobAvailabilityPayloadImpl>
    implements _$$JobAvailabilityPayloadImplCopyWith<$Res> {
  __$$JobAvailabilityPayloadImplCopyWithImpl(
    _$JobAvailabilityPayloadImpl _value,
    $Res Function(_$JobAvailabilityPayloadImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of JobAvailabilityPayload
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currencyCode = null,
    Object? start = null,
    Object? end = null,
    Object? slotSize = null,
    Object? minimumSlotSize = freezed,
    Object? operationalModelsPriority = null,
    Object? fallback = freezed,
    Object? storeReference = null,
    Object? origin = null,
    Object? destination = null,
    Object? jobItems = null,
  }) {
    return _then(
      _$JobAvailabilityPayloadImpl(
        currencyCode:
            null == currencyCode
                ? _value.currencyCode
                : currencyCode // ignore: cast_nullable_to_non_nullable
                    as String,
        start:
            null == start
                ? _value.start
                : start // ignore: cast_nullable_to_non_nullable
                    as String,
        end:
            null == end
                ? _value.end
                : end // ignore: cast_nullable_to_non_nullable
                    as String,
        slotSize:
            null == slotSize
                ? _value.slotSize
                : slotSize // ignore: cast_nullable_to_non_nullable
                    as int,
        minimumSlotSize:
            freezed == minimumSlotSize
                ? _value.minimumSlotSize
                : minimumSlotSize // ignore: cast_nullable_to_non_nullable
                    as int?,
        operationalModelsPriority:
            null == operationalModelsPriority
                ? _value._operationalModelsPriority
                : operationalModelsPriority // ignore: cast_nullable_to_non_nullable
                    as List<String>,
        fallback:
            freezed == fallback
                ? _value.fallback
                : fallback // ignore: cast_nullable_to_non_nullable
                    as bool?,
        storeReference:
            null == storeReference
                ? _value.storeReference
                : storeReference // ignore: cast_nullable_to_non_nullable
                    as String,
        origin:
            null == origin
                ? _value.origin
                : origin // ignore: cast_nullable_to_non_nullable
                    as Origin,
        destination:
            null == destination
                ? _value.destination
                : destination // ignore: cast_nullable_to_non_nullable
                    as Destination,
        jobItems:
            null == jobItems
                ? _value._jobItems
                : jobItems // ignore: cast_nullable_to_non_nullable
                    as List<JobItem>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$JobAvailabilityPayloadImpl implements _JobAvailabilityPayload {
  const _$JobAvailabilityPayloadImpl({
    @JsonKey(name: 'currency_code') required this.currencyCode,
    required this.start,
    required this.end,
    @JsonKey(name: 'slot_size') required this.slotSize,
    @JsonKey(name: 'minimum_slot_size') this.minimumSlotSize,
    @JsonKey(name: 'operational_models_priority')
    required final List<String> operationalModelsPriority,
    this.fallback,
    @JsonKey(name: 'store_reference') required this.storeReference,
    required this.origin,
    required this.destination,
    @JsonKey(name: 'job_items') required final List<JobItem> jobItems,
  }) : _operationalModelsPriority = operationalModelsPriority,
       _jobItems = jobItems;

  factory _$JobAvailabilityPayloadImpl.fromJson(Map<String, dynamic> json) =>
      _$$JobAvailabilityPayloadImplFromJson(json);

  @override
  @JsonKey(name: 'currency_code')
  final String currencyCode;
  @override
  final String start;
  @override
  final String end;
  @override
  @JsonKey(name: 'slot_size')
  final int slotSize;
  @override
  @JsonKey(name: 'minimum_slot_size')
  final int? minimumSlotSize;
  // Optional
  final List<String> _operationalModelsPriority;
  // Optional
  @override
  @JsonKey(name: 'operational_models_priority')
  List<String> get operationalModelsPriority {
    if (_operationalModelsPriority is EqualUnmodifiableListView)
      return _operationalModelsPriority;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_operationalModelsPriority);
  }

  @override
  final bool? fallback;
  // Optional, with default value false
  @override
  @JsonKey(name: 'store_reference')
  final String storeReference;
  @override
  final Origin origin;
  // Origin object
  @override
  final Destination destination;
  // Destination object
  final List<JobItem> _jobItems;
  // Destination object
  @override
  @JsonKey(name: 'job_items')
  List<JobItem> get jobItems {
    if (_jobItems is EqualUnmodifiableListView) return _jobItems;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_jobItems);
  }

  @override
  String toString() {
    return 'JobAvailabilityPayload(currencyCode: $currencyCode, start: $start, end: $end, slotSize: $slotSize, minimumSlotSize: $minimumSlotSize, operationalModelsPriority: $operationalModelsPriority, fallback: $fallback, storeReference: $storeReference, origin: $origin, destination: $destination, jobItems: $jobItems)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$JobAvailabilityPayloadImpl &&
            (identical(other.currencyCode, currencyCode) ||
                other.currencyCode == currencyCode) &&
            (identical(other.start, start) || other.start == start) &&
            (identical(other.end, end) || other.end == end) &&
            (identical(other.slotSize, slotSize) ||
                other.slotSize == slotSize) &&
            (identical(other.minimumSlotSize, minimumSlotSize) ||
                other.minimumSlotSize == minimumSlotSize) &&
            const DeepCollectionEquality().equals(
              other._operationalModelsPriority,
              _operationalModelsPriority,
            ) &&
            (identical(other.fallback, fallback) ||
                other.fallback == fallback) &&
            (identical(other.storeReference, storeReference) ||
                other.storeReference == storeReference) &&
            (identical(other.origin, origin) || other.origin == origin) &&
            (identical(other.destination, destination) ||
                other.destination == destination) &&
            const DeepCollectionEquality().equals(other._jobItems, _jobItems));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    currencyCode,
    start,
    end,
    slotSize,
    minimumSlotSize,
    const DeepCollectionEquality().hash(_operationalModelsPriority),
    fallback,
    storeReference,
    origin,
    destination,
    const DeepCollectionEquality().hash(_jobItems),
  );

  /// Create a copy of JobAvailabilityPayload
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$JobAvailabilityPayloadImplCopyWith<_$JobAvailabilityPayloadImpl>
  get copyWith =>
      __$$JobAvailabilityPayloadImplCopyWithImpl<_$JobAvailabilityPayloadImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$JobAvailabilityPayloadImplToJson(this);
  }
}

abstract class _JobAvailabilityPayload implements JobAvailabilityPayload {
  const factory _JobAvailabilityPayload({
    @JsonKey(name: 'currency_code') required final String currencyCode,
    required final String start,
    required final String end,
    @JsonKey(name: 'slot_size') required final int slotSize,
    @JsonKey(name: 'minimum_slot_size') final int? minimumSlotSize,
    @JsonKey(name: 'operational_models_priority')
    required final List<String> operationalModelsPriority,
    final bool? fallback,
    @JsonKey(name: 'store_reference') required final String storeReference,
    required final Origin origin,
    required final Destination destination,
    @JsonKey(name: 'job_items') required final List<JobItem> jobItems,
  }) = _$JobAvailabilityPayloadImpl;

  factory _JobAvailabilityPayload.fromJson(Map<String, dynamic> json) =
      _$JobAvailabilityPayloadImpl.fromJson;

  @override
  @JsonKey(name: 'currency_code')
  String get currencyCode;
  @override
  String get start;
  @override
  String get end;
  @override
  @JsonKey(name: 'slot_size')
  int get slotSize;
  @override
  @JsonKey(name: 'minimum_slot_size')
  int? get minimumSlotSize; // Optional
  @override
  @JsonKey(name: 'operational_models_priority')
  List<String> get operationalModelsPriority;
  @override
  bool? get fallback; // Optional, with default value false
  @override
  @JsonKey(name: 'store_reference')
  String get storeReference;
  @override
  Origin get origin; // Origin object
  @override
  Destination get destination; // Destination object
  @override
  @JsonKey(name: 'job_items')
  List<JobItem> get jobItems;

  /// Create a copy of JobAvailabilityPayload
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$JobAvailabilityPayloadImplCopyWith<_$JobAvailabilityPayloadImpl>
  get copyWith => throw _privateConstructorUsedError;
}

Origin _$OriginFromJson(Map<String, dynamic> json) {
  return _Origin.fromJson(json);
}

/// @nodoc
mixin _$Origin {
  String get name => throw _privateConstructorUsedError; // Required
  String get address => throw _privateConstructorUsedError; // Required
  @JsonKey(name: 'address_two')
  String? get addressTwo => throw _privateConstructorUsedError; // Nullable
  String? get description => throw _privateConstructorUsedError; // Nullable
  String? get country => throw _privateConstructorUsedError; // Nullable
  String? get city => throw _privateConstructorUsedError; // Nullable
  String? get state => throw _privateConstructorUsedError; // Nullable
  @JsonKey(name: 'zip_code')
  String? get zipCode => throw _privateConstructorUsedError; // Nullable
  double get latitude => throw _privateConstructorUsedError; // Required
  double get longitude => throw _privateConstructorUsedError;

  /// Serializes this Origin to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Origin
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OriginCopyWith<Origin> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OriginCopyWith<$Res> {
  factory $OriginCopyWith(Origin value, $Res Function(Origin) then) =
      _$OriginCopyWithImpl<$Res, Origin>;
  @useResult
  $Res call({
    String name,
    String address,
    @JsonKey(name: 'address_two') String? addressTwo,
    String? description,
    String? country,
    String? city,
    String? state,
    @JsonKey(name: 'zip_code') String? zipCode,
    double latitude,
    double longitude,
  });
}

/// @nodoc
class _$OriginCopyWithImpl<$Res, $Val extends Origin>
    implements $OriginCopyWith<$Res> {
  _$OriginCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Origin
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? address = null,
    Object? addressTwo = freezed,
    Object? description = freezed,
    Object? country = freezed,
    Object? city = freezed,
    Object? state = freezed,
    Object? zipCode = freezed,
    Object? latitude = null,
    Object? longitude = null,
  }) {
    return _then(
      _value.copyWith(
            name:
                null == name
                    ? _value.name
                    : name // ignore: cast_nullable_to_non_nullable
                        as String,
            address:
                null == address
                    ? _value.address
                    : address // ignore: cast_nullable_to_non_nullable
                        as String,
            addressTwo:
                freezed == addressTwo
                    ? _value.addressTwo
                    : addressTwo // ignore: cast_nullable_to_non_nullable
                        as String?,
            description:
                freezed == description
                    ? _value.description
                    : description // ignore: cast_nullable_to_non_nullable
                        as String?,
            country:
                freezed == country
                    ? _value.country
                    : country // ignore: cast_nullable_to_non_nullable
                        as String?,
            city:
                freezed == city
                    ? _value.city
                    : city // ignore: cast_nullable_to_non_nullable
                        as String?,
            state:
                freezed == state
                    ? _value.state
                    : state // ignore: cast_nullable_to_non_nullable
                        as String?,
            zipCode:
                freezed == zipCode
                    ? _value.zipCode
                    : zipCode // ignore: cast_nullable_to_non_nullable
                        as String?,
            latitude:
                null == latitude
                    ? _value.latitude
                    : latitude // ignore: cast_nullable_to_non_nullable
                        as double,
            longitude:
                null == longitude
                    ? _value.longitude
                    : longitude // ignore: cast_nullable_to_non_nullable
                        as double,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$OriginImplCopyWith<$Res> implements $OriginCopyWith<$Res> {
  factory _$$OriginImplCopyWith(
    _$OriginImpl value,
    $Res Function(_$OriginImpl) then,
  ) = __$$OriginImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String name,
    String address,
    @JsonKey(name: 'address_two') String? addressTwo,
    String? description,
    String? country,
    String? city,
    String? state,
    @JsonKey(name: 'zip_code') String? zipCode,
    double latitude,
    double longitude,
  });
}

/// @nodoc
class __$$OriginImplCopyWithImpl<$Res>
    extends _$OriginCopyWithImpl<$Res, _$OriginImpl>
    implements _$$OriginImplCopyWith<$Res> {
  __$$OriginImplCopyWithImpl(
    _$OriginImpl _value,
    $Res Function(_$OriginImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Origin
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? address = null,
    Object? addressTwo = freezed,
    Object? description = freezed,
    Object? country = freezed,
    Object? city = freezed,
    Object? state = freezed,
    Object? zipCode = freezed,
    Object? latitude = null,
    Object? longitude = null,
  }) {
    return _then(
      _$OriginImpl(
        name:
            null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                    as String,
        address:
            null == address
                ? _value.address
                : address // ignore: cast_nullable_to_non_nullable
                    as String,
        addressTwo:
            freezed == addressTwo
                ? _value.addressTwo
                : addressTwo // ignore: cast_nullable_to_non_nullable
                    as String?,
        description:
            freezed == description
                ? _value.description
                : description // ignore: cast_nullable_to_non_nullable
                    as String?,
        country:
            freezed == country
                ? _value.country
                : country // ignore: cast_nullable_to_non_nullable
                    as String?,
        city:
            freezed == city
                ? _value.city
                : city // ignore: cast_nullable_to_non_nullable
                    as String?,
        state:
            freezed == state
                ? _value.state
                : state // ignore: cast_nullable_to_non_nullable
                    as String?,
        zipCode:
            freezed == zipCode
                ? _value.zipCode
                : zipCode // ignore: cast_nullable_to_non_nullable
                    as String?,
        latitude:
            null == latitude
                ? _value.latitude
                : latitude // ignore: cast_nullable_to_non_nullable
                    as double,
        longitude:
            null == longitude
                ? _value.longitude
                : longitude // ignore: cast_nullable_to_non_nullable
                    as double,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$OriginImpl implements _Origin {
  const _$OriginImpl({
    required this.name,
    required this.address,
    @JsonKey(name: 'address_two') this.addressTwo,
    this.description,
    this.country,
    this.city,
    this.state,
    @JsonKey(name: 'zip_code') this.zipCode,
    required this.latitude,
    required this.longitude,
  });

  factory _$OriginImpl.fromJson(Map<String, dynamic> json) =>
      _$$OriginImplFromJson(json);

  @override
  final String name;
  // Required
  @override
  final String address;
  // Required
  @override
  @JsonKey(name: 'address_two')
  final String? addressTwo;
  // Nullable
  @override
  final String? description;
  // Nullable
  @override
  final String? country;
  // Nullable
  @override
  final String? city;
  // Nullable
  @override
  final String? state;
  // Nullable
  @override
  @JsonKey(name: 'zip_code')
  final String? zipCode;
  // Nullable
  @override
  final double latitude;
  // Required
  @override
  final double longitude;

  @override
  String toString() {
    return 'Origin(name: $name, address: $address, addressTwo: $addressTwo, description: $description, country: $country, city: $city, state: $state, zipCode: $zipCode, latitude: $latitude, longitude: $longitude)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OriginImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.addressTwo, addressTwo) ||
                other.addressTwo == addressTwo) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.zipCode, zipCode) || other.zipCode == zipCode) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    name,
    address,
    addressTwo,
    description,
    country,
    city,
    state,
    zipCode,
    latitude,
    longitude,
  );

  /// Create a copy of Origin
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OriginImplCopyWith<_$OriginImpl> get copyWith =>
      __$$OriginImplCopyWithImpl<_$OriginImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OriginImplToJson(this);
  }
}

abstract class _Origin implements Origin {
  const factory _Origin({
    required final String name,
    required final String address,
    @JsonKey(name: 'address_two') final String? addressTwo,
    final String? description,
    final String? country,
    final String? city,
    final String? state,
    @JsonKey(name: 'zip_code') final String? zipCode,
    required final double latitude,
    required final double longitude,
  }) = _$OriginImpl;

  factory _Origin.fromJson(Map<String, dynamic> json) = _$OriginImpl.fromJson;

  @override
  String get name; // Required
  @override
  String get address; // Required
  @override
  @JsonKey(name: 'address_two')
  String? get addressTwo; // Nullable
  @override
  String? get description; // Nullable
  @override
  String? get country; // Nullable
  @override
  String? get city; // Nullable
  @override
  String? get state; // Nullable
  @override
  @JsonKey(name: 'zip_code')
  String? get zipCode; // Nullable
  @override
  double get latitude; // Required
  @override
  double get longitude;

  /// Create a copy of Origin
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OriginImplCopyWith<_$OriginImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Destination _$DestinationFromJson(Map<String, dynamic> json) {
  return _Destination.fromJson(json);
}

/// @nodoc
mixin _$Destination {
  String get name => throw _privateConstructorUsedError; // Required
  String get address => throw _privateConstructorUsedError; // Required
  @JsonKey(name: 'address_two')
  String? get addressTwo => throw _privateConstructorUsedError; // Nullable
  String? get description => throw _privateConstructorUsedError; // Nullable
  String? get country => throw _privateConstructorUsedError; // Nullable
  String? get city => throw _privateConstructorUsedError; // Nullable
  String? get state => throw _privateConstructorUsedError; // Nullable
  @JsonKey(name: 'zip_code')
  String? get zipCode => throw _privateConstructorUsedError; // Nullable
  double get latitude => throw _privateConstructorUsedError; // Required
  double get longitude => throw _privateConstructorUsedError;

  /// Serializes this Destination to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Destination
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DestinationCopyWith<Destination> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DestinationCopyWith<$Res> {
  factory $DestinationCopyWith(
    Destination value,
    $Res Function(Destination) then,
  ) = _$DestinationCopyWithImpl<$Res, Destination>;
  @useResult
  $Res call({
    String name,
    String address,
    @JsonKey(name: 'address_two') String? addressTwo,
    String? description,
    String? country,
    String? city,
    String? state,
    @JsonKey(name: 'zip_code') String? zipCode,
    double latitude,
    double longitude,
  });
}

/// @nodoc
class _$DestinationCopyWithImpl<$Res, $Val extends Destination>
    implements $DestinationCopyWith<$Res> {
  _$DestinationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Destination
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? address = null,
    Object? addressTwo = freezed,
    Object? description = freezed,
    Object? country = freezed,
    Object? city = freezed,
    Object? state = freezed,
    Object? zipCode = freezed,
    Object? latitude = null,
    Object? longitude = null,
  }) {
    return _then(
      _value.copyWith(
            name:
                null == name
                    ? _value.name
                    : name // ignore: cast_nullable_to_non_nullable
                        as String,
            address:
                null == address
                    ? _value.address
                    : address // ignore: cast_nullable_to_non_nullable
                        as String,
            addressTwo:
                freezed == addressTwo
                    ? _value.addressTwo
                    : addressTwo // ignore: cast_nullable_to_non_nullable
                        as String?,
            description:
                freezed == description
                    ? _value.description
                    : description // ignore: cast_nullable_to_non_nullable
                        as String?,
            country:
                freezed == country
                    ? _value.country
                    : country // ignore: cast_nullable_to_non_nullable
                        as String?,
            city:
                freezed == city
                    ? _value.city
                    : city // ignore: cast_nullable_to_non_nullable
                        as String?,
            state:
                freezed == state
                    ? _value.state
                    : state // ignore: cast_nullable_to_non_nullable
                        as String?,
            zipCode:
                freezed == zipCode
                    ? _value.zipCode
                    : zipCode // ignore: cast_nullable_to_non_nullable
                        as String?,
            latitude:
                null == latitude
                    ? _value.latitude
                    : latitude // ignore: cast_nullable_to_non_nullable
                        as double,
            longitude:
                null == longitude
                    ? _value.longitude
                    : longitude // ignore: cast_nullable_to_non_nullable
                        as double,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$DestinationImplCopyWith<$Res>
    implements $DestinationCopyWith<$Res> {
  factory _$$DestinationImplCopyWith(
    _$DestinationImpl value,
    $Res Function(_$DestinationImpl) then,
  ) = __$$DestinationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String name,
    String address,
    @JsonKey(name: 'address_two') String? addressTwo,
    String? description,
    String? country,
    String? city,
    String? state,
    @JsonKey(name: 'zip_code') String? zipCode,
    double latitude,
    double longitude,
  });
}

/// @nodoc
class __$$DestinationImplCopyWithImpl<$Res>
    extends _$DestinationCopyWithImpl<$Res, _$DestinationImpl>
    implements _$$DestinationImplCopyWith<$Res> {
  __$$DestinationImplCopyWithImpl(
    _$DestinationImpl _value,
    $Res Function(_$DestinationImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Destination
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? address = null,
    Object? addressTwo = freezed,
    Object? description = freezed,
    Object? country = freezed,
    Object? city = freezed,
    Object? state = freezed,
    Object? zipCode = freezed,
    Object? latitude = null,
    Object? longitude = null,
  }) {
    return _then(
      _$DestinationImpl(
        name:
            null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                    as String,
        address:
            null == address
                ? _value.address
                : address // ignore: cast_nullable_to_non_nullable
                    as String,
        addressTwo:
            freezed == addressTwo
                ? _value.addressTwo
                : addressTwo // ignore: cast_nullable_to_non_nullable
                    as String?,
        description:
            freezed == description
                ? _value.description
                : description // ignore: cast_nullable_to_non_nullable
                    as String?,
        country:
            freezed == country
                ? _value.country
                : country // ignore: cast_nullable_to_non_nullable
                    as String?,
        city:
            freezed == city
                ? _value.city
                : city // ignore: cast_nullable_to_non_nullable
                    as String?,
        state:
            freezed == state
                ? _value.state
                : state // ignore: cast_nullable_to_non_nullable
                    as String?,
        zipCode:
            freezed == zipCode
                ? _value.zipCode
                : zipCode // ignore: cast_nullable_to_non_nullable
                    as String?,
        latitude:
            null == latitude
                ? _value.latitude
                : latitude // ignore: cast_nullable_to_non_nullable
                    as double,
        longitude:
            null == longitude
                ? _value.longitude
                : longitude // ignore: cast_nullable_to_non_nullable
                    as double,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$DestinationImpl implements _Destination {
  const _$DestinationImpl({
    required this.name,
    required this.address,
    @JsonKey(name: 'address_two') this.addressTwo,
    this.description,
    this.country,
    this.city,
    this.state,
    @JsonKey(name: 'zip_code') this.zipCode,
    required this.latitude,
    required this.longitude,
  });

  factory _$DestinationImpl.fromJson(Map<String, dynamic> json) =>
      _$$DestinationImplFromJson(json);

  @override
  final String name;
  // Required
  @override
  final String address;
  // Required
  @override
  @JsonKey(name: 'address_two')
  final String? addressTwo;
  // Nullable
  @override
  final String? description;
  // Nullable
  @override
  final String? country;
  // Nullable
  @override
  final String? city;
  // Nullable
  @override
  final String? state;
  // Nullable
  @override
  @JsonKey(name: 'zip_code')
  final String? zipCode;
  // Nullable
  @override
  final double latitude;
  // Required
  @override
  final double longitude;

  @override
  String toString() {
    return 'Destination(name: $name, address: $address, addressTwo: $addressTwo, description: $description, country: $country, city: $city, state: $state, zipCode: $zipCode, latitude: $latitude, longitude: $longitude)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DestinationImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.addressTwo, addressTwo) ||
                other.addressTwo == addressTwo) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.zipCode, zipCode) || other.zipCode == zipCode) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    name,
    address,
    addressTwo,
    description,
    country,
    city,
    state,
    zipCode,
    latitude,
    longitude,
  );

  /// Create a copy of Destination
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DestinationImplCopyWith<_$DestinationImpl> get copyWith =>
      __$$DestinationImplCopyWithImpl<_$DestinationImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DestinationImplToJson(this);
  }
}

abstract class _Destination implements Destination {
  const factory _Destination({
    required final String name,
    required final String address,
    @JsonKey(name: 'address_two') final String? addressTwo,
    final String? description,
    final String? country,
    final String? city,
    final String? state,
    @JsonKey(name: 'zip_code') final String? zipCode,
    required final double latitude,
    required final double longitude,
  }) = _$DestinationImpl;

  factory _Destination.fromJson(Map<String, dynamic> json) =
      _$DestinationImpl.fromJson;

  @override
  String get name; // Required
  @override
  String get address; // Required
  @override
  @JsonKey(name: 'address_two')
  String? get addressTwo; // Nullable
  @override
  String? get description; // Nullable
  @override
  String? get country; // Nullable
  @override
  String? get city; // Nullable
  @override
  String? get state; // Nullable
  @override
  @JsonKey(name: 'zip_code')
  String? get zipCode; // Nullable
  @override
  double get latitude; // Required
  @override
  double get longitude;

  /// Create a copy of Destination
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DestinationImplCopyWith<_$DestinationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

JobItem _$JobItemFromJson(Map<String, dynamic> json) {
  return _JobItem.fromJson(json);
}

/// @nodoc
mixin _$JobItem {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'photo_url')
  String? get photoUrl => throw _privateConstructorUsedError;
  String get unit => throw _privateConstructorUsedError;
  @JsonKey(name: 'sub_unit')
  String get subUnit => throw _privateConstructorUsedError;
  int get quantity => throw _privateConstructorUsedError;
  @JsonKey(name: 'sub_quantity')
  int get subQuantity => throw _privateConstructorUsedError;
  @JsonKey(name: 'quantity_found_limits')
  QuantityFoundLimits? get quantityFoundLimits =>
      throw _privateConstructorUsedError; // Optional
  List<String>? get barcodes => throw _privateConstructorUsedError; // Nullable
  double? get weight => throw _privateConstructorUsedError; // Nullable
  double? get volume => throw _privateConstructorUsedError;
  Dimensions? get dimensions => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;
  String? get comment => throw _privateConstructorUsedError;
  Attributes get attributes => throw _privateConstructorUsedError;

  /// Serializes this JobItem to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of JobItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $JobItemCopyWith<JobItem> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JobItemCopyWith<$Res> {
  factory $JobItemCopyWith(JobItem value, $Res Function(JobItem) then) =
      _$JobItemCopyWithImpl<$Res, JobItem>;
  @useResult
  $Res call({
    String id,
    String name,
    @JsonKey(name: 'photo_url') String? photoUrl,
    String unit,
    @JsonKey(name: 'sub_unit') String subUnit,
    int quantity,
    @JsonKey(name: 'sub_quantity') int subQuantity,
    @JsonKey(name: 'quantity_found_limits')
    QuantityFoundLimits? quantityFoundLimits,
    List<String>? barcodes,
    double? weight,
    double? volume,
    Dimensions? dimensions,
    double price,
    String? comment,
    Attributes attributes,
  });

  $QuantityFoundLimitsCopyWith<$Res>? get quantityFoundLimits;
  $DimensionsCopyWith<$Res>? get dimensions;
  $AttributesCopyWith<$Res> get attributes;
}

/// @nodoc
class _$JobItemCopyWithImpl<$Res, $Val extends JobItem>
    implements $JobItemCopyWith<$Res> {
  _$JobItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of JobItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? photoUrl = freezed,
    Object? unit = null,
    Object? subUnit = null,
    Object? quantity = null,
    Object? subQuantity = null,
    Object? quantityFoundLimits = freezed,
    Object? barcodes = freezed,
    Object? weight = freezed,
    Object? volume = freezed,
    Object? dimensions = freezed,
    Object? price = null,
    Object? comment = freezed,
    Object? attributes = null,
  }) {
    return _then(
      _value.copyWith(
            id:
                null == id
                    ? _value.id
                    : id // ignore: cast_nullable_to_non_nullable
                        as String,
            name:
                null == name
                    ? _value.name
                    : name // ignore: cast_nullable_to_non_nullable
                        as String,
            photoUrl:
                freezed == photoUrl
                    ? _value.photoUrl
                    : photoUrl // ignore: cast_nullable_to_non_nullable
                        as String?,
            unit:
                null == unit
                    ? _value.unit
                    : unit // ignore: cast_nullable_to_non_nullable
                        as String,
            subUnit:
                null == subUnit
                    ? _value.subUnit
                    : subUnit // ignore: cast_nullable_to_non_nullable
                        as String,
            quantity:
                null == quantity
                    ? _value.quantity
                    : quantity // ignore: cast_nullable_to_non_nullable
                        as int,
            subQuantity:
                null == subQuantity
                    ? _value.subQuantity
                    : subQuantity // ignore: cast_nullable_to_non_nullable
                        as int,
            quantityFoundLimits:
                freezed == quantityFoundLimits
                    ? _value.quantityFoundLimits
                    : quantityFoundLimits // ignore: cast_nullable_to_non_nullable
                        as QuantityFoundLimits?,
            barcodes:
                freezed == barcodes
                    ? _value.barcodes
                    : barcodes // ignore: cast_nullable_to_non_nullable
                        as List<String>?,
            weight:
                freezed == weight
                    ? _value.weight
                    : weight // ignore: cast_nullable_to_non_nullable
                        as double?,
            volume:
                freezed == volume
                    ? _value.volume
                    : volume // ignore: cast_nullable_to_non_nullable
                        as double?,
            dimensions:
                freezed == dimensions
                    ? _value.dimensions
                    : dimensions // ignore: cast_nullable_to_non_nullable
                        as Dimensions?,
            price:
                null == price
                    ? _value.price
                    : price // ignore: cast_nullable_to_non_nullable
                        as double,
            comment:
                freezed == comment
                    ? _value.comment
                    : comment // ignore: cast_nullable_to_non_nullable
                        as String?,
            attributes:
                null == attributes
                    ? _value.attributes
                    : attributes // ignore: cast_nullable_to_non_nullable
                        as Attributes,
          )
          as $Val,
    );
  }

  /// Create a copy of JobItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $QuantityFoundLimitsCopyWith<$Res>? get quantityFoundLimits {
    if (_value.quantityFoundLimits == null) {
      return null;
    }

    return $QuantityFoundLimitsCopyWith<$Res>(_value.quantityFoundLimits!, (
      value,
    ) {
      return _then(_value.copyWith(quantityFoundLimits: value) as $Val);
    });
  }

  /// Create a copy of JobItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DimensionsCopyWith<$Res>? get dimensions {
    if (_value.dimensions == null) {
      return null;
    }

    return $DimensionsCopyWith<$Res>(_value.dimensions!, (value) {
      return _then(_value.copyWith(dimensions: value) as $Val);
    });
  }

  /// Create a copy of JobItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AttributesCopyWith<$Res> get attributes {
    return $AttributesCopyWith<$Res>(_value.attributes, (value) {
      return _then(_value.copyWith(attributes: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$JobItemImplCopyWith<$Res> implements $JobItemCopyWith<$Res> {
  factory _$$JobItemImplCopyWith(
    _$JobItemImpl value,
    $Res Function(_$JobItemImpl) then,
  ) = __$$JobItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    String name,
    @JsonKey(name: 'photo_url') String? photoUrl,
    String unit,
    @JsonKey(name: 'sub_unit') String subUnit,
    int quantity,
    @JsonKey(name: 'sub_quantity') int subQuantity,
    @JsonKey(name: 'quantity_found_limits')
    QuantityFoundLimits? quantityFoundLimits,
    List<String>? barcodes,
    double? weight,
    double? volume,
    Dimensions? dimensions,
    double price,
    String? comment,
    Attributes attributes,
  });

  @override
  $QuantityFoundLimitsCopyWith<$Res>? get quantityFoundLimits;
  @override
  $DimensionsCopyWith<$Res>? get dimensions;
  @override
  $AttributesCopyWith<$Res> get attributes;
}

/// @nodoc
class __$$JobItemImplCopyWithImpl<$Res>
    extends _$JobItemCopyWithImpl<$Res, _$JobItemImpl>
    implements _$$JobItemImplCopyWith<$Res> {
  __$$JobItemImplCopyWithImpl(
    _$JobItemImpl _value,
    $Res Function(_$JobItemImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of JobItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? photoUrl = freezed,
    Object? unit = null,
    Object? subUnit = null,
    Object? quantity = null,
    Object? subQuantity = null,
    Object? quantityFoundLimits = freezed,
    Object? barcodes = freezed,
    Object? weight = freezed,
    Object? volume = freezed,
    Object? dimensions = freezed,
    Object? price = null,
    Object? comment = freezed,
    Object? attributes = null,
  }) {
    return _then(
      _$JobItemImpl(
        id:
            null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                    as String,
        name:
            null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                    as String,
        photoUrl:
            freezed == photoUrl
                ? _value.photoUrl
                : photoUrl // ignore: cast_nullable_to_non_nullable
                    as String?,
        unit:
            null == unit
                ? _value.unit
                : unit // ignore: cast_nullable_to_non_nullable
                    as String,
        subUnit:
            null == subUnit
                ? _value.subUnit
                : subUnit // ignore: cast_nullable_to_non_nullable
                    as String,
        quantity:
            null == quantity
                ? _value.quantity
                : quantity // ignore: cast_nullable_to_non_nullable
                    as int,
        subQuantity:
            null == subQuantity
                ? _value.subQuantity
                : subQuantity // ignore: cast_nullable_to_non_nullable
                    as int,
        quantityFoundLimits:
            freezed == quantityFoundLimits
                ? _value.quantityFoundLimits
                : quantityFoundLimits // ignore: cast_nullable_to_non_nullable
                    as QuantityFoundLimits?,
        barcodes:
            freezed == barcodes
                ? _value._barcodes
                : barcodes // ignore: cast_nullable_to_non_nullable
                    as List<String>?,
        weight:
            freezed == weight
                ? _value.weight
                : weight // ignore: cast_nullable_to_non_nullable
                    as double?,
        volume:
            freezed == volume
                ? _value.volume
                : volume // ignore: cast_nullable_to_non_nullable
                    as double?,
        dimensions:
            freezed == dimensions
                ? _value.dimensions
                : dimensions // ignore: cast_nullable_to_non_nullable
                    as Dimensions?,
        price:
            null == price
                ? _value.price
                : price // ignore: cast_nullable_to_non_nullable
                    as double,
        comment:
            freezed == comment
                ? _value.comment
                : comment // ignore: cast_nullable_to_non_nullable
                    as String?,
        attributes:
            null == attributes
                ? _value.attributes
                : attributes // ignore: cast_nullable_to_non_nullable
                    as Attributes,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$JobItemImpl implements _JobItem {
  const _$JobItemImpl({
    required this.id,
    required this.name,
    @JsonKey(name: 'photo_url') this.photoUrl,
    required this.unit,
    @JsonKey(name: 'sub_unit') required this.subUnit,
    required this.quantity,
    @JsonKey(name: 'sub_quantity') required this.subQuantity,
    @JsonKey(name: 'quantity_found_limits') this.quantityFoundLimits,
    final List<String>? barcodes,
    this.weight,
    this.volume,
    this.dimensions,
    required this.price,
    this.comment,
    required this.attributes,
  }) : _barcodes = barcodes;

  factory _$JobItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$JobItemImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  @JsonKey(name: 'photo_url')
  final String? photoUrl;
  @override
  final String unit;
  @override
  @JsonKey(name: 'sub_unit')
  final String subUnit;
  @override
  final int quantity;
  @override
  @JsonKey(name: 'sub_quantity')
  final int subQuantity;
  @override
  @JsonKey(name: 'quantity_found_limits')
  final QuantityFoundLimits? quantityFoundLimits;
  // Optional
  final List<String>? _barcodes;
  // Optional
  @override
  List<String>? get barcodes {
    final value = _barcodes;
    if (value == null) return null;
    if (_barcodes is EqualUnmodifiableListView) return _barcodes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  // Nullable
  @override
  final double? weight;
  // Nullable
  @override
  final double? volume;
  @override
  final Dimensions? dimensions;
  @override
  final double price;
  @override
  final String? comment;
  @override
  final Attributes attributes;

  @override
  String toString() {
    return 'JobItem(id: $id, name: $name, photoUrl: $photoUrl, unit: $unit, subUnit: $subUnit, quantity: $quantity, subQuantity: $subQuantity, quantityFoundLimits: $quantityFoundLimits, barcodes: $barcodes, weight: $weight, volume: $volume, dimensions: $dimensions, price: $price, comment: $comment, attributes: $attributes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$JobItemImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.photoUrl, photoUrl) ||
                other.photoUrl == photoUrl) &&
            (identical(other.unit, unit) || other.unit == unit) &&
            (identical(other.subUnit, subUnit) || other.subUnit == subUnit) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.subQuantity, subQuantity) ||
                other.subQuantity == subQuantity) &&
            (identical(other.quantityFoundLimits, quantityFoundLimits) ||
                other.quantityFoundLimits == quantityFoundLimits) &&
            const DeepCollectionEquality().equals(other._barcodes, _barcodes) &&
            (identical(other.weight, weight) || other.weight == weight) &&
            (identical(other.volume, volume) || other.volume == volume) &&
            (identical(other.dimensions, dimensions) ||
                other.dimensions == dimensions) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.comment, comment) || other.comment == comment) &&
            (identical(other.attributes, attributes) ||
                other.attributes == attributes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    name,
    photoUrl,
    unit,
    subUnit,
    quantity,
    subQuantity,
    quantityFoundLimits,
    const DeepCollectionEquality().hash(_barcodes),
    weight,
    volume,
    dimensions,
    price,
    comment,
    attributes,
  );

  /// Create a copy of JobItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$JobItemImplCopyWith<_$JobItemImpl> get copyWith =>
      __$$JobItemImplCopyWithImpl<_$JobItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$JobItemImplToJson(this);
  }
}

abstract class _JobItem implements JobItem {
  const factory _JobItem({
    required final String id,
    required final String name,
    @JsonKey(name: 'photo_url') final String? photoUrl,
    required final String unit,
    @JsonKey(name: 'sub_unit') required final String subUnit,
    required final int quantity,
    @JsonKey(name: 'sub_quantity') required final int subQuantity,
    @JsonKey(name: 'quantity_found_limits')
    final QuantityFoundLimits? quantityFoundLimits,
    final List<String>? barcodes,
    final double? weight,
    final double? volume,
    final Dimensions? dimensions,
    required final double price,
    final String? comment,
    required final Attributes attributes,
  }) = _$JobItemImpl;

  factory _JobItem.fromJson(Map<String, dynamic> json) = _$JobItemImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  @JsonKey(name: 'photo_url')
  String? get photoUrl;
  @override
  String get unit;
  @override
  @JsonKey(name: 'sub_unit')
  String get subUnit;
  @override
  int get quantity;
  @override
  @JsonKey(name: 'sub_quantity')
  int get subQuantity;
  @override
  @JsonKey(name: 'quantity_found_limits')
  QuantityFoundLimits? get quantityFoundLimits; // Optional
  @override
  List<String>? get barcodes; // Nullable
  @override
  double? get weight; // Nullable
  @override
  double? get volume;
  @override
  Dimensions? get dimensions;
  @override
  double get price;
  @override
  String? get comment;
  @override
  Attributes get attributes;

  /// Create a copy of JobItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$JobItemImplCopyWith<_$JobItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

QuantityFoundLimits _$QuantityFoundLimitsFromJson(Map<String, dynamic> json) {
  return _QuantityFoundLimits.fromJson(json);
}

/// @nodoc
mixin _$QuantityFoundLimits {
  int get max => throw _privateConstructorUsedError;
  int get min => throw _privateConstructorUsedError;

  /// Serializes this QuantityFoundLimits to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of QuantityFoundLimits
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $QuantityFoundLimitsCopyWith<QuantityFoundLimits> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuantityFoundLimitsCopyWith<$Res> {
  factory $QuantityFoundLimitsCopyWith(
    QuantityFoundLimits value,
    $Res Function(QuantityFoundLimits) then,
  ) = _$QuantityFoundLimitsCopyWithImpl<$Res, QuantityFoundLimits>;
  @useResult
  $Res call({int max, int min});
}

/// @nodoc
class _$QuantityFoundLimitsCopyWithImpl<$Res, $Val extends QuantityFoundLimits>
    implements $QuantityFoundLimitsCopyWith<$Res> {
  _$QuantityFoundLimitsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of QuantityFoundLimits
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? max = null, Object? min = null}) {
    return _then(
      _value.copyWith(
            max:
                null == max
                    ? _value.max
                    : max // ignore: cast_nullable_to_non_nullable
                        as int,
            min:
                null == min
                    ? _value.min
                    : min // ignore: cast_nullable_to_non_nullable
                        as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$QuantityFoundLimitsImplCopyWith<$Res>
    implements $QuantityFoundLimitsCopyWith<$Res> {
  factory _$$QuantityFoundLimitsImplCopyWith(
    _$QuantityFoundLimitsImpl value,
    $Res Function(_$QuantityFoundLimitsImpl) then,
  ) = __$$QuantityFoundLimitsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int max, int min});
}

/// @nodoc
class __$$QuantityFoundLimitsImplCopyWithImpl<$Res>
    extends _$QuantityFoundLimitsCopyWithImpl<$Res, _$QuantityFoundLimitsImpl>
    implements _$$QuantityFoundLimitsImplCopyWith<$Res> {
  __$$QuantityFoundLimitsImplCopyWithImpl(
    _$QuantityFoundLimitsImpl _value,
    $Res Function(_$QuantityFoundLimitsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of QuantityFoundLimits
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? max = null, Object? min = null}) {
    return _then(
      _$QuantityFoundLimitsImpl(
        max:
            null == max
                ? _value.max
                : max // ignore: cast_nullable_to_non_nullable
                    as int,
        min:
            null == min
                ? _value.min
                : min // ignore: cast_nullable_to_non_nullable
                    as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$QuantityFoundLimitsImpl implements _QuantityFoundLimits {
  const _$QuantityFoundLimitsImpl({required this.max, required this.min});

  factory _$QuantityFoundLimitsImpl.fromJson(Map<String, dynamic> json) =>
      _$$QuantityFoundLimitsImplFromJson(json);

  @override
  final int max;
  @override
  final int min;

  @override
  String toString() {
    return 'QuantityFoundLimits(max: $max, min: $min)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuantityFoundLimitsImpl &&
            (identical(other.max, max) || other.max == max) &&
            (identical(other.min, min) || other.min == min));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, max, min);

  /// Create a copy of QuantityFoundLimits
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$QuantityFoundLimitsImplCopyWith<_$QuantityFoundLimitsImpl> get copyWith =>
      __$$QuantityFoundLimitsImplCopyWithImpl<_$QuantityFoundLimitsImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$QuantityFoundLimitsImplToJson(this);
  }
}

abstract class _QuantityFoundLimits implements QuantityFoundLimits {
  const factory _QuantityFoundLimits({
    required final int max,
    required final int min,
  }) = _$QuantityFoundLimitsImpl;

  factory _QuantityFoundLimits.fromJson(Map<String, dynamic> json) =
      _$QuantityFoundLimitsImpl.fromJson;

  @override
  int get max;
  @override
  int get min;

  /// Create a copy of QuantityFoundLimits
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$QuantityFoundLimitsImplCopyWith<_$QuantityFoundLimitsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Dimensions _$DimensionsFromJson(Map<String, dynamic> json) {
  return _Dimensions.fromJson(json);
}

/// @nodoc
mixin _$Dimensions {
  double get x => throw _privateConstructorUsedError;
  double get y => throw _privateConstructorUsedError;
  double get z => throw _privateConstructorUsedError;

  /// Serializes this Dimensions to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Dimensions
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DimensionsCopyWith<Dimensions> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DimensionsCopyWith<$Res> {
  factory $DimensionsCopyWith(
    Dimensions value,
    $Res Function(Dimensions) then,
  ) = _$DimensionsCopyWithImpl<$Res, Dimensions>;
  @useResult
  $Res call({double x, double y, double z});
}

/// @nodoc
class _$DimensionsCopyWithImpl<$Res, $Val extends Dimensions>
    implements $DimensionsCopyWith<$Res> {
  _$DimensionsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Dimensions
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? x = null, Object? y = null, Object? z = null}) {
    return _then(
      _value.copyWith(
            x:
                null == x
                    ? _value.x
                    : x // ignore: cast_nullable_to_non_nullable
                        as double,
            y:
                null == y
                    ? _value.y
                    : y // ignore: cast_nullable_to_non_nullable
                        as double,
            z:
                null == z
                    ? _value.z
                    : z // ignore: cast_nullable_to_non_nullable
                        as double,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$DimensionsImplCopyWith<$Res>
    implements $DimensionsCopyWith<$Res> {
  factory _$$DimensionsImplCopyWith(
    _$DimensionsImpl value,
    $Res Function(_$DimensionsImpl) then,
  ) = __$$DimensionsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double x, double y, double z});
}

/// @nodoc
class __$$DimensionsImplCopyWithImpl<$Res>
    extends _$DimensionsCopyWithImpl<$Res, _$DimensionsImpl>
    implements _$$DimensionsImplCopyWith<$Res> {
  __$$DimensionsImplCopyWithImpl(
    _$DimensionsImpl _value,
    $Res Function(_$DimensionsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Dimensions
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? x = null, Object? y = null, Object? z = null}) {
    return _then(
      _$DimensionsImpl(
        x:
            null == x
                ? _value.x
                : x // ignore: cast_nullable_to_non_nullable
                    as double,
        y:
            null == y
                ? _value.y
                : y // ignore: cast_nullable_to_non_nullable
                    as double,
        z:
            null == z
                ? _value.z
                : z // ignore: cast_nullable_to_non_nullable
                    as double,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$DimensionsImpl implements _Dimensions {
  const _$DimensionsImpl({required this.x, required this.y, required this.z});

  factory _$DimensionsImpl.fromJson(Map<String, dynamic> json) =>
      _$$DimensionsImplFromJson(json);

  @override
  final double x;
  @override
  final double y;
  @override
  final double z;

  @override
  String toString() {
    return 'Dimensions(x: $x, y: $y, z: $z)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DimensionsImpl &&
            (identical(other.x, x) || other.x == x) &&
            (identical(other.y, y) || other.y == y) &&
            (identical(other.z, z) || other.z == z));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, x, y, z);

  /// Create a copy of Dimensions
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DimensionsImplCopyWith<_$DimensionsImpl> get copyWith =>
      __$$DimensionsImplCopyWithImpl<_$DimensionsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DimensionsImplToJson(this);
  }
}

abstract class _Dimensions implements Dimensions {
  const factory _Dimensions({
    required final double x,
    required final double y,
    required final double z,
  }) = _$DimensionsImpl;

  factory _Dimensions.fromJson(Map<String, dynamic> json) =
      _$DimensionsImpl.fromJson;

  @override
  double get x;
  @override
  double get y;
  @override
  double get z;

  /// Create a copy of Dimensions
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DimensionsImplCopyWith<_$DimensionsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Attributes _$AttributesFromJson(Map<String, dynamic> json) {
  return _Attributes.fromJson(json);
}

/// @nodoc
mixin _$Attributes {
  String get category => throw _privateConstructorUsedError;
  String get plu => throw _privateConstructorUsedError;
  String get ean => throw _privateConstructorUsedError;
  String get location => throw _privateConstructorUsedError;
  @JsonKey(name: 'picking_index')
  String get pickingIndex => throw _privateConstructorUsedError;

  /// Serializes this Attributes to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Attributes
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AttributesCopyWith<Attributes> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AttributesCopyWith<$Res> {
  factory $AttributesCopyWith(
    Attributes value,
    $Res Function(Attributes) then,
  ) = _$AttributesCopyWithImpl<$Res, Attributes>;
  @useResult
  $Res call({
    String category,
    String plu,
    String ean,
    String location,
    @JsonKey(name: 'picking_index') String pickingIndex,
  });
}

/// @nodoc
class _$AttributesCopyWithImpl<$Res, $Val extends Attributes>
    implements $AttributesCopyWith<$Res> {
  _$AttributesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Attributes
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = null,
    Object? plu = null,
    Object? ean = null,
    Object? location = null,
    Object? pickingIndex = null,
  }) {
    return _then(
      _value.copyWith(
            category:
                null == category
                    ? _value.category
                    : category // ignore: cast_nullable_to_non_nullable
                        as String,
            plu:
                null == plu
                    ? _value.plu
                    : plu // ignore: cast_nullable_to_non_nullable
                        as String,
            ean:
                null == ean
                    ? _value.ean
                    : ean // ignore: cast_nullable_to_non_nullable
                        as String,
            location:
                null == location
                    ? _value.location
                    : location // ignore: cast_nullable_to_non_nullable
                        as String,
            pickingIndex:
                null == pickingIndex
                    ? _value.pickingIndex
                    : pickingIndex // ignore: cast_nullable_to_non_nullable
                        as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$AttributesImplCopyWith<$Res>
    implements $AttributesCopyWith<$Res> {
  factory _$$AttributesImplCopyWith(
    _$AttributesImpl value,
    $Res Function(_$AttributesImpl) then,
  ) = __$$AttributesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String category,
    String plu,
    String ean,
    String location,
    @JsonKey(name: 'picking_index') String pickingIndex,
  });
}

/// @nodoc
class __$$AttributesImplCopyWithImpl<$Res>
    extends _$AttributesCopyWithImpl<$Res, _$AttributesImpl>
    implements _$$AttributesImplCopyWith<$Res> {
  __$$AttributesImplCopyWithImpl(
    _$AttributesImpl _value,
    $Res Function(_$AttributesImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Attributes
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = null,
    Object? plu = null,
    Object? ean = null,
    Object? location = null,
    Object? pickingIndex = null,
  }) {
    return _then(
      _$AttributesImpl(
        category:
            null == category
                ? _value.category
                : category // ignore: cast_nullable_to_non_nullable
                    as String,
        plu:
            null == plu
                ? _value.plu
                : plu // ignore: cast_nullable_to_non_nullable
                    as String,
        ean:
            null == ean
                ? _value.ean
                : ean // ignore: cast_nullable_to_non_nullable
                    as String,
        location:
            null == location
                ? _value.location
                : location // ignore: cast_nullable_to_non_nullable
                    as String,
        pickingIndex:
            null == pickingIndex
                ? _value.pickingIndex
                : pickingIndex // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$AttributesImpl implements _Attributes {
  const _$AttributesImpl({
    required this.category,
    required this.plu,
    required this.ean,
    required this.location,
    @JsonKey(name: 'picking_index') required this.pickingIndex,
  });

  factory _$AttributesImpl.fromJson(Map<String, dynamic> json) =>
      _$$AttributesImplFromJson(json);

  @override
  final String category;
  @override
  final String plu;
  @override
  final String ean;
  @override
  final String location;
  @override
  @JsonKey(name: 'picking_index')
  final String pickingIndex;

  @override
  String toString() {
    return 'Attributes(category: $category, plu: $plu, ean: $ean, location: $location, pickingIndex: $pickingIndex)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AttributesImpl &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.plu, plu) || other.plu == plu) &&
            (identical(other.ean, ean) || other.ean == ean) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.pickingIndex, pickingIndex) ||
                other.pickingIndex == pickingIndex));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, category, plu, ean, location, pickingIndex);

  /// Create a copy of Attributes
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AttributesImplCopyWith<_$AttributesImpl> get copyWith =>
      __$$AttributesImplCopyWithImpl<_$AttributesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AttributesImplToJson(this);
  }
}

abstract class _Attributes implements Attributes {
  const factory _Attributes({
    required final String category,
    required final String plu,
    required final String ean,
    required final String location,
    @JsonKey(name: 'picking_index') required final String pickingIndex,
  }) = _$AttributesImpl;

  factory _Attributes.fromJson(Map<String, dynamic> json) =
      _$AttributesImpl.fromJson;

  @override
  String get category;
  @override
  String get plu;
  @override
  String get ean;
  @override
  String get location;
  @override
  @JsonKey(name: 'picking_index')
  String get pickingIndex;

  /// Create a copy of Attributes
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AttributesImplCopyWith<_$AttributesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
