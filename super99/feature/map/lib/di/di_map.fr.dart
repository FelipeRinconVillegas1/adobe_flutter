import 'dart:io';

import 'package:flutter_google_places_sdk/flutter_google_places_sdk.dart';
import 'package:geocoding/geocoding.dart';
import 'package:map/data/datasource/locator_datasource.dart';
import 'package:map/data/datasource/locator_datasource_impl.dart';
import 'package:map/data/repository/geocoding_repository.dart';
import 'package:map/data/repository/geoocoding_repository_impl.dart';
import 'package:map/data/repository/locator_repository.dart';
import 'package:map/data/repository/locator_repository_impl.dart';
import 'package:map/data/repository/place_autocomplete_repository.dart';
import 'package:map/data/repository/place_autocomplete_repository_impl.dart';
import 'package:map/domain/use_case/check_permission_use_case.dart';
import 'package:map/domain/use_case/current_position_use_case.dart';
import 'package:map/domain/use_case/get_details_place_by_coordinates_use_case.dart';
import 'package:map/domain/use_case/get_location_by_placeid_use_case.dart';
import 'package:map/domain/use_case/get_places_automcomplete_use_case.dart';
import 'package:map/domain/use_case/location_enable_use_case.dart';
import 'package:map/domain/use_case/request_permission_use_case.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'di_map.fr.g.dart';

@riverpod
GetLocationByPlaceIdUseCase getLocationByPlaceIdUseCase(GetLocationByPlaceIdUseCaseRef ref) {
  return GetLocationByPlaceIdUseCase(ref.watch(geocodingRepositoryProvider));
}

@riverpod
GetDetailsPlaceByCoordinatesUseCase getDetailsPlaceByCoordinatesUseCase(GetDetailsPlaceByCoordinatesUseCaseRef ref) {
  return GetDetailsPlaceByCoordinatesUseCase(ref.watch(geocodingRepositoryProvider));
}

@riverpod
GeocodingRepository geocodingRepository(GeocodingRepositoryRef ref) {
  return GeocodingRepositoryImpl(
    ref.watch(geocodingPlatformProvider),
    ref.watch(flutterGooglePlacesSdkProvider),
  );
}

@riverpod
GeocodingPlatform geocodingPlatform(GeocodingPlatformRef ref) {
  return GeocodingPlatform.instance;
}

@riverpod
FlutterGooglePlacesSdk flutterGooglePlacesSdk(FlutterGooglePlacesSdkRef ref) {
  late final String key;
  if (Platform.isAndroid) {
    key = const String.fromEnvironment('GMAPS_ANDROID_API_KEY');
  } else if (Platform.isIOS) {
    key = const String.fromEnvironment('GMAPS_IOS_API_KEY');
  } else {
    key = '';
  }
  return FlutterGooglePlacesSdk(key);
}

@riverpod
GetPlacesAutocompleteUseCase getPlacesAutocompleteUseCase(GetPlacesAutocompleteUseCaseRef ref) {
  return GetPlacesAutocompleteUseCase(ref.watch(placeAutocompleteRepositoryProvider));
}

@riverpod
PlaceAutocompleteRepository placeAutocompleteRepository(PlaceAutocompleteRepositoryRef ref) {
  late final String key;
  if (Platform.isAndroid) {
    key = const String.fromEnvironment('GMAPS_ANDROID_API_KEY');
  } else if (Platform.isIOS) {
    key = const String.fromEnvironment('GMAPS_IOS_API_KEY');
  } else {
    key = '';
  }
  return PlaceAutocompleteRepositoryImpl(FlutterGooglePlacesSdk(key));
}

@Riverpod(keepAlive: true)
CheckPermissionUseCase checkPermissionUseCase(CheckPermissionUseCaseRef ref) {
  return CheckPermissionUseCase(ref.watch(locatorRepositoryProvider));
}

@Riverpod(keepAlive: true)
CurrentPositionUseCase currentPositionUseCase(CurrentPositionUseCaseRef ref) {
  return CurrentPositionUseCase(ref.watch(locatorRepositoryProvider));
}

@Riverpod(keepAlive: true)
LocationEnableUseCase locationEnableUseCase(LocationEnableUseCaseRef ref) {
  return LocationEnableUseCase(ref.watch(locatorRepositoryProvider));
}

@Riverpod(keepAlive: true)
RequestPermissionUseCase requestPermissionUseCase(RequestPermissionUseCaseRef ref) {
  return RequestPermissionUseCase(ref.watch(locatorRepositoryProvider));
}

@Riverpod(keepAlive: true)
LocatorRepository locatorRepository(LocatorRepositoryRef ref) {
  return LocatorRepositoryImpl(datasource: ref.watch(locatorDataSourceProvider));
}

@Riverpod(keepAlive: true)
LocatorDatasource locatorDataSource(LocatorDataSourceRef ref) {
  return LocatorDatasourceImpl();
}
