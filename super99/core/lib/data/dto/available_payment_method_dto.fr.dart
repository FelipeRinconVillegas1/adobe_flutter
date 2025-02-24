import 'package:freezed_annotation/freezed_annotation.dart';

part 'available_payment_method_dto.fr.freezed.dart';

part 'available_payment_method_dto.fr.g.dart';

@freezed
class AvailablePaymentMethodDTO with _$AvailablePaymentMethodDTO {
  const factory AvailablePaymentMethodDTO({
    required String code,
    required String title,
  }) = _AvailablePaymentMethodDTO;

  factory AvailablePaymentMethodDTO.fromJson(Map<String, Object?> json) => _$AvailablePaymentMethodDTOFromJson(json);
}
