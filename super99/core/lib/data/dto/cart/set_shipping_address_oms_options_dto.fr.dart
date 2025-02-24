import 'dart:convert';
import 'package:core/utils/extension.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'set_shipping_address_oms_options_dto.fr.freezed.dart';

part 'set_shipping_address_oms_options_dto.fr.g.dart';

@freezed
class SetShippingAddressOmsOptionsDTO with _$SetShippingAddressOmsOptionsDTO {
  const factory SetShippingAddressOmsOptionsDTO({
    required String latitude,
    required String longitude,
    @JsonKey(name: 'state_custom') required String stateCustom,
    @JsonKey(name: 'city_custom') required String cityCustom,
    @JsonKey(name: 'zone_custom') required String zoneCustom,
    @JsonKey(name: 'oms_receiving_special_request', includeIfNull: false) String? omsReceivingSpecialRequest,
    @JsonKey(name: 'oms_receiving_delivery_instructions', includeIfNull: false)
    String? omsReceivingDeliveryInstructions,
    @JsonKey(name: 'oms_receiving_full_name', includeIfNull: false) String? omsReceivingFullName,
    @JsonKey(name: 'oms_receiving_identification', includeIfNull: false) String? omsReceivingIdentification,
    @JsonKey(name: 'oms_receiving_phone_number', includeIfNull: false) String? omsReceivingTelephone,
    @JsonKey(name: 'oms_receiving_option', includeIfNull: false) String? omsReceivingOption,
  }) = _SetShippingAddressOmsOptionsDTO;

  factory SetShippingAddressOmsOptionsDTO.fromJson(Map<String, Object?> json) =>
      _$SetShippingAddressOmsOptionsDTOFromJson(json);
}

extension ToMutation on SetShippingAddressOmsOptionsDTO {
  String toParamMutation() => toParamMutationHelper(jsonEncode(toJson()));
}
