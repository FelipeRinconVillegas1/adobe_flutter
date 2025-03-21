import 'package:freezed_annotation/freezed_annotation.dart';

part 'instaleap_availability_response_dto.fr.freezed.dart';
part 'instaleap_availability_response_dto.fr.g.dart';

@freezed
class InstaleapAvailabilityResponseDTO with _$InstaleapAvailabilityResponseDTO {
  const factory InstaleapAvailabilityResponseDTO({
        required String description,
        @JsonKey(name: 'expires_at') required String expiresAt,
        required String from,
        required String to,
        required String id,
        @JsonKey(name: 'operational_model') required String operationalModel,
        @JsonKey(name: 'shipping_fee') required bool shippingFee,
        required InstaleapStoreDTO store,

  }) = _InstaleapAvailabilityResponseDTO;

  factory InstaleapAvailabilityResponseDTO.fromJson(Map<String, dynamic> json) => _$InstaleapAvailabilityResponseDTOFromJson(json);
}

@freezed
class InstaleapStoreDTO with _$InstaleapStoreDTO {
  const factory InstaleapStoreDTO({
    required String id,
    required String name,
  }) = _InstaleapStoreDTO;

  factory InstaleapStoreDTO.fromJson(Map<String, dynamic> json) => _$InstaleapStoreDTOFromJson(json);
}
