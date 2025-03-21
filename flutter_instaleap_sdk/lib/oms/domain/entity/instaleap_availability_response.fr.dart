import 'package:freezed_annotation/freezed_annotation.dart';

part 'instaleap_availability_response.fr.freezed.dart';
part 'instaleap_availability_response.fr.g.dart';

@freezed
class InstaleapAvailabilityResponse with _$InstaleapAvailabilityResponse {
  const factory InstaleapAvailabilityResponse({
        required String description,
        @JsonKey(name: 'expires_at') required String expiresAt,
        required String from,
        required String to,
        required String id,
        @JsonKey(name: 'operational_model') required String operationalModel,
        @JsonKey(name: 'shipping_fee') required bool shippingFee,
        required InstaleapStore store,

  }) = _InstaleapAvailabilityResponse;

  factory InstaleapAvailabilityResponse.fromJson(Map<String, dynamic> json) => _$InstaleapAvailabilityResponseFromJson(json);
}

@freezed
class InstaleapStore with _$InstaleapStore {
  const factory InstaleapStore({
    required String id,
    required String name,
  }) = _InstaleapStore;

  factory InstaleapStore.fromJson(Map<String, dynamic> json) => _$InstaleapStoreFromJson(json);
}
