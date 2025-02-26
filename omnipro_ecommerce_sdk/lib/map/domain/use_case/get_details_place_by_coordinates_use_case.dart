import 'package:core/utils/error_handler/error_handler.dart';
import 'package:geocoding/geocoding.dart';
import 'package:dartz/dartz.dart';
import '../../data/repository/geocoding_repository.dart';

class GetDetailsPlaceByCoordinatesUseCase {
  final GeocodingRepository _geocodingRepository;

  GetDetailsPlaceByCoordinatesUseCase(this._geocodingRepository);

  Future<Either<ErrorHandler, Placemark>> call({required double latitude, required double longitude}) async {
    try {
      final details = await _geocodingRepository.getDetailsPlaceByCoordinates(latitude, longitude);
      if (details.isEmpty) {
        return Left(ErrorHandlerInternal(errorMessage: 'Not found directions'));
      }
      var streets = details
          .where((placeMark) =>
              placeMark.street != null && placeMark.street!.isNotEmpty && !placeMark.street!.contains("+"))
          .toList();
      if (streets.isEmpty) {
        return Left(ErrorHandlerInternal(errorMessage: 'Not found directions'));
      }
      return Right(streets.first);
    } catch (e) {
      return Left(ErrorHandlerInternal(errorMessage: e.toString()));
    }
  }
}
