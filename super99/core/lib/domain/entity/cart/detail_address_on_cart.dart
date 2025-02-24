import 'package:core/domain/entity/localization_item.dart';
import 'package:equatable/equatable.dart';

class DetailAddressOnCart extends Equatable {
  final String firstname;
  final String lastname;
  final List<String> street;
  final String city;
  final String telephone;
  final String? postcode;
  final LocalizationItem country;
  final String? cityCustom;
  final String? stateCustom;
  final String? zoneCustom;

  const DetailAddressOnCart({
    required this.firstname,
    required this.lastname,
    required this.street,
    required this.city,
    required this.telephone,
    required this.country,
    this.postcode,
    this.cityCustom,
    this.stateCustom,
    this.zoneCustom,
  });

  @override
  List<Object?> get props => [firstname, lastname, street, city, telephone, country, postcode];

  //Copy with
  DetailAddressOnCart copyWith({
    String? firstname,
    String? lastname,
    List<String>? street,
    String? city,
    String? telephone,
    LocalizationItem? country,
    String? postcode,
    String? category,
    String? latitude,
    String? longitude,
    String? cityCustom,
    String? stateCustom,
    String? zoneCustom,
  }) {
    return DetailAddressOnCart(
      firstname: firstname ?? this.firstname,
      lastname: lastname ?? this.lastname,
      street: street ?? this.street,
      city: city ?? this.city,
      telephone: telephone ?? this.telephone,
      country: country ?? this.country,
      postcode: postcode ?? this.postcode,
      cityCustom: cityCustom ?? this.cityCustom,
      stateCustom: stateCustom ?? this.stateCustom,
      zoneCustom: zoneCustom ?? this.zoneCustom,
    );
  }
}
