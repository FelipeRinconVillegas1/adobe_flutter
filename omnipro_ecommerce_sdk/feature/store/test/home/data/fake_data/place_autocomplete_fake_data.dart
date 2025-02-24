import 'package:map/domain/entity/autocomplete_place_info.dart';

abstract class PlaceAutocompleteFakeData {
  static const succesfulData = <PlaceAutocomplete>[
    PlaceAutocomplete('1', 'test1', 'test1 secondary', 'test1 test1 secondary'),
    PlaceAutocomplete('2', 'test2', 'test2 secondary', 'test2 test2 secondary'),
    PlaceAutocomplete('3', 'test3', 'test3 secondary', 'test3 test3 secondary'),
    PlaceAutocomplete('4', 'test4', 'test4 secondary', 'test4 test4 secondary'),
  ];
}
