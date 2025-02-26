import 'package:core/utils/error_handler/error_handler.dart';
import 'package:dartz/dartz.dart';
import '../../data/repository/place_autocomplete_repository.dart';
import '../entity/autocomplete_place_info.dart';

class GetPlacesAutocompleteUseCase {
  final PlaceAutocompleteRepository _placeRepository;

  GetPlacesAutocompleteUseCase(this._placeRepository);

  /// Returns a list of places that match the input string.
  /// The input string is a query string that is used to search for places.
  Future<Either<ErrorHandler, List<PlaceAutocomplete>>> call(String input) async {
    try {
      final places = await _placeRepository.getPlacesAutocomplete(input);
      return Right(places);
    } catch (e) {
      return Left(ErrorHandlerInternal(errorMessage: e.toString()));
    }
  }
}
