import 'package:freezed_annotation/freezed_annotation.dart';

part 'job_availability_response_dto.fr.freezed.dart';
part 'job_availability_response_dto.fr.g.dart';

@freezed
class JobAvailabilityResponseDTO with _$JobAvailabilityResponseDTO {
  const factory JobAvailabilityResponseDTO({
    required String id,
    required String from,
    required String to,
    required StoreDTO store,
    required String description,
    required String operationalModel,
    required String expiresAt,
  }) = _JobAvailabilityResponseDTO;

  factory JobAvailabilityResponseDTO.fromJson(Map<String, dynamic> json) =>
      _$JobAvailabilityResponseDTOFromJson(json);
}

@freezed
class StoreDTO with _$StoreDTO {
  const factory StoreDTO({
    required String id,
    required String name,
  }) = _StoreDTO;

  factory StoreDTO.fromJson(Map<String, dynamic> json) => _$StoreDTOFromJson(json);
}