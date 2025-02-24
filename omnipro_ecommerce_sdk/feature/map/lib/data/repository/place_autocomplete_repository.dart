import 'package:map/domain/entity/autocomplete_place_info.dart';

abstract class PlaceAutocompleteRepository {
  Future<List<PlaceAutocomplete>> getPlacesAutocomplete(String input);
}
