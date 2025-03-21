import '../domain/entity/instaleap_availability_response.fr.dart';
import '../domain/entity/job_availability_response.fr.dart';
import '../domain/entity/response_stock_product.fr.dart';
import 'dto/instaleap_availability_response_dto.fr.dart';
import 'dto/job_availability_response_dto.fr.dart';
import 'dto/response_stock_product_dto.fr.dart';

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

extension MapperInstaleapAvailabilityResponseDTO on InstaleapAvailabilityResponseDTO {
  InstaleapAvailabilityResponse toDomain() => InstaleapAvailabilityResponse(
    description: description,
    expiresAt: expiresAt,
    from: from,
    to: to,
    id: id,
    operationalModel: operationalModel,
    shippingFee: shippingFee,
    store: store.toDomain(),
  );
}

extension MapperInstaleapStoreDTO on InstaleapStoreDTO {
  InstaleapStore toDomain() => InstaleapStore(id: id, name: name);
}

extension MapperResponseStockProductDTO on ResponseStockProductDTO {
  ResponseStockProduct toDomain() => ResponseStockProduct(quantity: quantity, unit: unit);
}
