import 'package:equatable/equatable.dart';

class AppointmentSelectedEntity extends Equatable {
  const AppointmentSelectedEntity(
      {required this.cartId,
      required this.omsAppointmentId,
      required this.omsShippingDate,
      required this.omsShippingTime,
      required this.omsDeliveryPrice});

  final String cartId;
  final String omsAppointmentId;
  final String omsShippingDate;
  final String omsShippingTime;
  final double omsDeliveryPrice;

  @override
  List<Object?> get props =>
      [cartId, omsAppointmentId, omsShippingDate, omsShippingTime, omsDeliveryPrice];
}
