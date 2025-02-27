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
    required this.specialInstructions,
    required this.city,
    required this.detailAddress,
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

  /// Street and detailAddress , specialInstructions COMPONENT THE STREET
  /// List<String> street = ['street', 'detailAddress', 'specialInstructions'];
  String street;
  String detailAddress;
  String specialInstructions;
  String city;

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
    city,
    specialInstructions,
    detailAddress,
  ];

  String get showAddress => '$street, $city.';

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
  }) {
    return CustomerAddressEntity(
      id: id ?? this.id,
      firstname: firstname ?? this.firstname,
      lastname: lastname ?? this.lastname,
      region: region ?? this.region,
      countryCode: countryCode ?? this.countryCode,
      street: street ?? this.street,
      telephone: telephone ?? this.telephone,
      postcode: postcode ?? this.postcode,
      defaultShipping: defaultShipping ?? this.defaultShipping,
      defaultBilling: defaultBilling ?? this.defaultBilling,
      specialInstructions: specialInstructions ?? this.specialInstructions,
      city: city ?? this.city,
      detailAddress: detailAddress ?? this.detailAddress,
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
        postcode == compareAddress?.postcode);
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
