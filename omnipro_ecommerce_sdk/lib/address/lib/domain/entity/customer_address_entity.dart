import 'package:equatable/equatable.dart';

class CustomerAddressEntity extends Equatable {
  CustomerAddressEntity({
    required this.id,
    required this.firstname,
    required this.lastname,
    required this.region,
    required this.countryCode,
    required this.street,
    required this.telephone,
    required this.postcode,
    required this.defaultShipping,
    required this.defaultBilling,
    required this.category,
    required this.specialInstructions,
    required this.state,
    required this.city,
    required this.zone,
    required this.detailAddress,
    required this.areaCodeTelephone,
    required this.cityCustom,
    this.longitude,
    this.latitude,
  });

  int id;
  String firstname;
  String lastname;

  @Deprecated('Only use for pass the validation of the API')
  RegionEntity region;
  String countryCode;
  String telephone;
  String? postcode;
  bool defaultShipping;
  bool defaultBilling;
  String category;

  /// Street and detailAddress , specialInstructions COMPONENT THE STREET
  /// List<String> street = ['street', 'detailAddress', 'specialInstructions'];
  String street;
  String detailAddress;
  String specialInstructions;

  /// City and zone are custom attributes
  String state;
  String city;
  String cityCustom;
  String zone;
  String? latitude;
  String? longitude;
  String areaCodeTelephone;

  String getAddressDescription() => showAddress;

  @override
  List<Object?> get props => [
        id,
        firstname,
        lastname,
        countryCode,
        street,
        telephone,
        postcode,
        city,
        defaultShipping,
        defaultBilling,
        category,
        city,
        specialInstructions,
        areaCodeTelephone,
        detailAddress,
        state,
        zone,
        latitude,
        longitude,
        cityCustom
      ];

  String get showAddress => '$street, $zone, $city.';

  CustomerAddressEntity copyWith({
    int? id,
    String? firstname,
    String? lastname,
    RegionEntity? region,
    String? countryCode,
    String? street,
    String? telephone,
    String? postcode,
    bool? defaultShipping,
    bool? defaultBilling,
    String? category,
    String? specialInstructions,
    String? state,
    String? city,
    String? zone,
    String? detailAddress,
    String? areaCodeTelephone,
    String? latitude,
    String? longitude,
    String? cityCustom,
  }) {
    return CustomerAddressEntity(
      id: id ?? this.id,
      cityCustom: cityCustom ?? this.cityCustom,
      firstname: firstname ?? this.firstname,
      lastname: lastname ?? this.lastname,
      region: region ?? this.region,
      countryCode: countryCode ?? this.countryCode,
      street: street ?? this.street,
      telephone: telephone ?? this.telephone,
      postcode: postcode ?? this.postcode,
      defaultShipping: defaultShipping ?? this.defaultShipping,
      defaultBilling: defaultBilling ?? this.defaultBilling,
      category: category ?? this.category,
      specialInstructions: specialInstructions ?? this.specialInstructions,
      state: state ?? this.state,
      city: city ?? this.city,
      zone: zone ?? this.zone,
      detailAddress: detailAddress ?? this.detailAddress,
      areaCodeTelephone: areaCodeTelephone ?? this.areaCodeTelephone,
      latitude: latitude ?? this.latitude,
      longitude: longitude ?? this.longitude,
    );
  }

  bool isSameAddress(CustomerAddressEntity? compareAddress) {
    return (firstname == compareAddress?.firstname &&
        lastname == compareAddress?.lastname &&
        street == compareAddress?.street &&
        city == compareAddress?.city &&
        region.region == compareAddress?.region.region &&
        telephone == compareAddress?.telephone &&
        countryCode == compareAddress?.countryCode &&
        postcode == compareAddress?.postcode &&
        state == compareAddress?.state &&
        latitude == compareAddress?.latitude &&
        longitude == compareAddress?.longitude &&
        zone == compareAddress?.zone);
  }
}

class RegionEntity extends Equatable {

  const RegionEntity({required this.region, required this.regionId, required this.code});
  final String region;
  final String code;
  final int regionId;

  @override
  List<Object?> get props => [region, regionId];
}
