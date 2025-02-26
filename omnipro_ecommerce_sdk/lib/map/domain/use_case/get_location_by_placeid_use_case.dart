import 'package:core/utils/error_handler/error_handler.dart';
import 'package:dartz/dartz.dart';
import '../../data/repository/geocoding_repository.dart';
import '../entity/location_data.dart';

class GetLocationByPlaceIdUseCase {
  final GeocodingRepository _geocodingRepository;

  GetLocationByPlaceIdUseCase(this._geocodingRepository);

  Future<Either<ErrorHandler, LocationData>> call(String placeId) async {
    try {
      final locationResult = await _geocodingRepository.getDetailsLocationByAddress(placeId);

      /// If is null, show error by try catch.
      return Right(locationResult!);
    } catch (e) {
      return Left(ErrorHandlerInternal(errorMessage: e.toString()));
    }
  }
}
