import '../domain/entity/job_availability_response.fr.dart';
import 'dto/job_availability_response_dto.fr.dart';

extension MapperComputeResponseDTO on JobAvailabilityResponseDTO {
  JobAvailabilityResponse toDomain() => JobAvailabilityResponse(
    id: id,
    from: from,
    to: to,
    store: store.toDomain(),
    description: description,
    operationalModel: operationalModel,
    expiresAt: expiresAt,
  );
}

extension MapperStoreDTO on StoreDTO {
  Store toDomain() => Store(id: id, name: name);
}
