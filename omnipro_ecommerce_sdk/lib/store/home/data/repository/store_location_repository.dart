import 'package:core/domain/entity/store_location_entity.dart';
import 'package:core/utils/error_handler/error_handler.dart';
import 'package:dartz/dartz.dart';

abstract class StoreLocationRepository {
  Future<Either<ErrorHandler, List<StoreLocationEntity>>> getStoresLocation({
    double? latitude,
    double? longitude,
    double? radius,
    String? stateProvince,
  });
}
