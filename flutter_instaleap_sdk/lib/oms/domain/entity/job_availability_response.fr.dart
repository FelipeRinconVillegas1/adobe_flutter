import 'package:freezed_annotation/freezed_annotation.dart';

part 'job_availability_response.fr.freezed.dart';
part 'job_availability_response.fr.g.dart';

@freezed
class JobAvailabilityResponse with _$JobAvailabilityResponse {
  const factory JobAvailabilityResponse({
    required String id,
    required String from,
    required String to,
    required Store store,
    required String description,
    required String operationalModel,
    required String expiresAt,
  }) = _JobAvailabilityResponse;

  factory JobAvailabilityResponse.fromJson(Map<String, dynamic> json) =>
      _$JobAvailabilityResponseFromJson(json);
}

@freezed
class Store with _$Store {
  const factory Store({
    required String id,
    required String name,
  }) = _Store;

  factory Store.fromJson(Map<String, dynamic> json) => _$StoreFromJson(json);
}