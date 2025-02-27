import 'package:freezed_annotation/freezed_annotation.dart';

part 'job_availability_payload.fr.freezed.dart';
part 'job_availability_payload.fr.g.dart';

@freezed
class JobAvailabilityPayload with _$JobAvailabilityPayload {
  const factory JobAvailabilityPayload({
    required String currencyCode,
    required String start,
    required String end,
    required int slotSize,
    int? minimumSlotSize, // Optional
    required List<String> operationalModelsPriority,
    bool? fallback, // Optional, with default value false
    required String storeReference,
    required Origin origin, // Origin object
    required Destination destination, // Destination object
    required List<JobItem> jobItems, // List of JobItems
  }) = _JobAvailabilityPayload;

  factory JobAvailabilityPayload.fromJson(Map<String, dynamic> json) =>
      _$JobAvailabilityPayloadFromJson(json);
}

@freezed
class Origin with _$Origin {
  const factory Origin({
    required String name, // Required
    required String address, // Required
    String? addressTwo, // Nullable
    String? description, // Nullable
    String? country, // Nullable
    String? city, // Nullable
    String? state, // Nullable
    String? zipCode, // Nullable
    required double latitude, // Required
    required double longitude, // Required
  }) = _Origin;

  factory Origin.fromJson(Map<String, dynamic> json) => _$OriginFromJson(json);
}

@freezed
class Destination with _$Destination {
  const factory Destination({
    required String name, // Required
    required String address, // Required
    String? addressTwo, // Nullable
    String? description, // Nullable
    String? country, // Nullable
    String? city, // Nullable
    String? state, // Nullable
    String? zipCode, // Nullable
    required double latitude, // Required
    required double longitude, // Required
  }) = _Destination;

  factory Destination.fromJson(Map<String, dynamic> json) =>
      _$DestinationFromJson(json);
}

@freezed
class JobItem with _$JobItem {
  const factory JobItem({
    required String id,
    required String name,
    String? photoUrl,
    required String unit,
    required String subUnit,
    required int quantity,
    required int subQuantity,
    QuantityFoundLimits? quantityFoundLimits, // Optional
    List<String>? barcodes, // Nullable
    double? weight, // Nullable
    required double volume,
    required Dimensions dimensions,
    required double price,
    String? comment,
    required Attributes attributes,
  }) = _JobItem;

  factory JobItem.fromJson(Map<String, dynamic> json) => _$JobItemFromJson(json);
}

@freezed
class QuantityFoundLimits with _$QuantityFoundLimits {
  const factory QuantityFoundLimits({
    required int max,
    required int min,
  }) = _QuantityFoundLimits;

  factory QuantityFoundLimits.fromJson(Map<String, dynamic> json) =>
      _$QuantityFoundLimitsFromJson(json);
}

@freezed
class Dimensions with _$Dimensions {
  const factory Dimensions({
    required double x,
    required double y,
    required double z,
  }) = _Dimensions;

  factory Dimensions.fromJson(Map<String, dynamic> json) =>
      _$DimensionsFromJson(json);
}

@freezed
class Attributes with _$Attributes {
  const factory Attributes({
    required String category,
    required String plu,
    required String ean,
    required String location,
    required String pickingIndex,
  }) = _Attributes;

  factory Attributes.fromJson(Map<String, dynamic> json) =>
      _$AttributesFromJson(json);
}
