import 'package:equatable/equatable.dart';

/// A class that represents a place returned by the autocomplete API.
class PlaceAutocomplete extends Equatable {
  /// the place ID of the place being referred to by this prediction.
  final String placeId;

  /// the primary text of a place. EX: "Eiffel Tower"
  final String primaryText;

  /// the secondary text of a place. EX: "Avenue Anatole France, Paris, France"
  final String secondaryText;

  /// The full text of a place. EX: "Eiffel Tower, Avenue Anatole France, Paris, France"
  final String fullText;

  const PlaceAutocomplete(this.placeId, this.primaryText, this.secondaryText, this.fullText);

  @override
  List<Object?> get props => [placeId, primaryText, secondaryText, fullText];
}
