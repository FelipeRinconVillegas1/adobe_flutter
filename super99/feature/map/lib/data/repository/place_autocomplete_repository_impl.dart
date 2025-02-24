import 'package:core/utils/constants.dart';
import 'package:flutter_google_places_sdk/flutter_google_places_sdk.dart';
import 'package:map/data/repository/place_autocomplete_repository.dart';
import 'package:map/domain/entity/autocomplete_place_info.dart';

class PlaceAutocompleteRepositoryImpl extends PlaceAutocompleteRepository {
  final FlutterGooglePlacesSdk _flutterGooglePlacesSdk;

  PlaceAutocompleteRepositoryImpl(this._flutterGooglePlacesSdk);

  @override
  Future<List<PlaceAutocomplete>> getPlacesAutocomplete(String input) {
    return _flutterGooglePlacesSdk.findAutocompletePredictions(input, countries: [ Constants.defaultCountry.code]).then(
        (value) => value.predictions
            .map((e) => PlaceAutocomplete(e.placeId, e.primaryText, e.secondaryText, e.fullText))
            .toList());
  }
}
