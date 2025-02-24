import 'package:geocoding/geocoding.dart';
import 'package:map/domain/entity/location_data.dart';

abstract class GeocodingRepository {
  Future<LocationData?> getDetailsLocationByAddress(String address);

  Future<List<Placemark>> getDetailsPlaceByCoordinates(double latitude, double longitude);
}

