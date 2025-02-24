import 'dart:convert';
import 'package:core/utils/extension.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'set_billing_address_oms_options_dto.fr.freezed.dart';

part 'set_billing_address_oms_options_dto.fr.g.dart';

@freezed
class SetBillingAddressOmsOptionsDTO with _$SetBillingAddressOmsOptionsDTO {
  const factory SetBillingAddressOmsOptionsDTO({
    required String latitude,
    required String longitude,
    @JsonKey(name: 'state_custom') required String stateCustom,
    @JsonKey(name: 'city_custom') required String cityCustom,
    @JsonKey(name: 'zone_custom') required String zoneCustom,
  }) = _SetBillingAddressOmsOptionsDTO;

  factory SetBillingAddressOmsOptionsDTO.fromJson(Map<String, Object?> json) =>
      _$SetBillingAddressOmsOptionsDTOFromJson(json);
}

extension ToMutation on SetBillingAddressOmsOptionsDTO {
  String toParamMutation() => toParamMutationHelper(jsonEncode(toJson()));
}
