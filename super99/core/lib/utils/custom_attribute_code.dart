enum CustomAttributeCode {
  customerIdentification('customer_identification'),
  identidicationType('identification_type'),
  children('children'),
  pets('pets'),
  customerAreaCodeTelephone('customer_area_code_telephone'),
  maritalStatus('marital_status'),
  purchasePreference('purchase_preference'),
  recceiveEventInformation('receive_event_information'),
  programKnowlege('program_knowledge'),
  customeTelephone('customer_telephone'),
  provinceOfResidence('province_of_residence'),

  // Address
  addressType('tipo_direccion'),
  stateCustom('state_custom'),
  cityCustom('city_custom'),
  zoneCustom('zone_custom'),
  areaCodeTelephone('area_code_telephone'),
  latitude("latitude"),
  longitude("longitude"),

  //Encrypted
  encryptedCustomerIdentification('customer_identification_encrypted'),
  encryptedEmail('email_encrypted'),

  // The case of none is used to avoid errors when the attribute is not found
  none('none');

  const CustomAttributeCode(this.value);

  final String value;
  static CustomAttributeCode fromString(String? value) {
    return CustomAttributeCode.values.firstWhere(
      (element) => element.value == value,
      orElse: () => CustomAttributeCode.none,
    );
  }

  /// Attributes required to create a customer in the backend
  static List<CustomAttributeCode> get attributesRequired => [
        customerIdentification,
        identidicationType,
        customerAreaCodeTelephone,
        customeTelephone,
        provinceOfResidence,
      ];
}
