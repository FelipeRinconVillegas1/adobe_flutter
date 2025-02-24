import 'package:freezed_annotation/freezed_annotation.dart';

part 'set_appointment_information_on_cart_dto.fr.freezed.dart';
part 'set_appointment_information_on_cart_dto.fr.g.dart';

@freezed
class SetAppointmentOnCartDTO with _$SetAppointmentOnCartDTO {
  const factory SetAppointmentOnCartDTO({
    @JsonKey(name: 'cart_id') required String cartId,
    @JsonKey(name: 'oms_appointment_id') required String omsAppointmentId,
    @JsonKey(name: 'oms_shipping_date') required String omsShippingDate,
    @JsonKey(name: 'oms_shipping_time') required String omsShippingTime,
    @JsonKey(name: 'oms_delivery_price') required double omsDeliveryPrice
  }) = _SetAppointmentOnCartDTO;

  factory SetAppointmentOnCartDTO.fromJson(Map<String, dynamic> json) => _$SetAppointmentOnCartDTOFromJson(json);
}