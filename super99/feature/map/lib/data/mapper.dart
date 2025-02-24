import 'package:flutter_google_places_sdk/flutter_google_places_sdk.dart';
import 'package:geocoding/geocoding.dart';
import 'package:map/domain/entity/location_data.dart';

extension LocationMapper on Location {
  LocationData toEntity() {
    return LocationData(
      latitude: latitude,
      longitude: longitude,
      timestamp: timestamp,
    );
  }
}

extension PlaceMapper on Place {
  LocationData toLocationData() {
    return LocationData(
      latitude: latLng!.lat,
      longitude: latLng!.lng,
      timestamp: DateTime.now(),
    );
  }
}
