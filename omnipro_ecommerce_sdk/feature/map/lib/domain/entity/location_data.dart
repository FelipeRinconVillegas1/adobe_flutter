import 'package:equatable/equatable.dart';

class LocationData extends Equatable {
  /// Constructs an instance with the given values for testing. [Location]
  /// instances constructed this way won't actually reflect any real information
  /// from the platform, just whatever was passed in at construction time.
  const LocationData({
    required this.latitude,
    required this.longitude,
    required this.timestamp,
  });


  /// The latitude associated with the placemark.
  final double latitude;

  /// The longitude associated with the placemark.
  final double longitude;

  /// The UTC timestamp the coordinates have been requested.
  final DateTime timestamp;

  @override
  List<Object?> get props => [latitude, longitude, timestamp];
}