import 'package:core/domain/entity/store_location_entity.dart';
import 'package:core/utils/error_handler/error_handler.dart';
import 'package:dartz/dartz.dart';
import '../../data/repository/store_location_repository.dart';

class GetStoresLocationUseCase {
  GetStoresLocationUseCase(this._storesLocationRepository);

  final StoreLocationRepository _storesLocationRepository;

  Future<Either<ErrorHandler, List<StoreLocationEntity>>> call({
    double? latitude,
    double? longitude,
    double? radius,
    String? stateProvince,
  }) async {
    final result = await _storesLocationRepository.getStoresLocation(
      latitude: latitude,
      longitude: longitude,
      radius: radius,
      stateProvince: stateProvince,
    );
    return result;
  }
}
