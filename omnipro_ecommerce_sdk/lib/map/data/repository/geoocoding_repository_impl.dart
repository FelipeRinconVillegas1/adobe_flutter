import 'package:flutter_google_places_sdk/flutter_google_places_sdk.dart';
import 'package:geocoding/geocoding.dart';
import 'package:omnipro_ecommerce_sdk/map/data/mapper.dart';
import '../../domain/entity/location_data.dart';
import 'geocoding_repository.dart';

class GeocodingRepositoryImpl implements GeocodingRepository {
  final GeocodingPlatform? _geocodingPlatform;
  final FlutterGooglePlacesSdk _flutterGooglePlacesSdk;

  GeocodingRepositoryImpl(this._geocodingPlatform, this._flutterGooglePlacesSdk);

  @override
  Future<LocationData?> getDetailsLocationByAddress(
    String placeId, {
    String? localeIdentifier,
  }) async {
    final FetchPlaceResponse response = await _flutterGooglePlacesSdk.fetchPlace(
      placeId,
      fields: [
        PlaceField.Location,
      ],
    );

    if (response.place != null) {
      return response.place!.toLocationData();
    } else {
      return null;
    }
  }

  @override
  Future<List<Placemark>> getDetailsPlaceByCoordinates(
    double latitude,
    double longitude, {
    String? localeIdentifier,
  }) async {
    if(_geocodingPlatform == null) {
      throw Exception('GeocodingPlatform is null');
    }
    if(localeIdentifier != null){
      await _geocodingPlatform.setLocaleIdentifier(localeIdentifier);
    }
    return _geocodingPlatform.placemarkFromCoordinates(
      latitude,
      longitude,
    );
  }
}
