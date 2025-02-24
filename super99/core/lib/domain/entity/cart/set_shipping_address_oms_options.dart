class AddressOmsOptions {
  AddressOmsOptions({
    required this.latitude,
    required this.longitude,
    required this.stateCustom,
    required this.cityCustom,
    required this.zoneCustom,
  });
  final String latitude;
  final String longitude;
  final String stateCustom;
  final String cityCustom;
  final String zoneCustom;

  AddressOmsOptions copyWith({
    String? latitude,
    String? longitude,
    String? stateCustom,
    String? cityCustom,
    String? zoneCustom,
  }) {
    return AddressOmsOptions(
      latitude: latitude ?? this.latitude,
      longitude: longitude ?? this.longitude,
      stateCustom: stateCustom ?? this.stateCustom,
      cityCustom: cityCustom ?? this.cityCustom,
      zoneCustom: zoneCustom ?? this.zoneCustom,
    );
  }
}

class SetShippingAddressOmsOptions extends AddressOmsOptions {
  SetShippingAddressOmsOptions({
    this.omsReceivingSpecialRequest,
    this.omsReceivingDeliveryInstructions,
    this.omsReceivingFullName,
    this.omsReceivingIdentification,
    this.omsReceivingTelephone,
    this.omsReceivingOption,
    required super.latitude,
    required super.longitude,
    required super.stateCustom,
    required super.cityCustom,
    required super.zoneCustom,
  });

  final String? omsReceivingSpecialRequest;
  final String? omsReceivingDeliveryInstructions;
  final String? omsReceivingFullName;
  final String? omsReceivingIdentification;
  final String? omsReceivingTelephone;
  final String? omsReceivingOption;
}
