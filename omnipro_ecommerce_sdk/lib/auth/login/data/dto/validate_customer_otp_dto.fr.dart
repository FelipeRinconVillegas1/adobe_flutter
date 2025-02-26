import 'package:core/data/dto/customer_dto.fr.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'validate_customer_otp_dto.fr.freezed.dart';
part 'validate_customer_otp_dto.fr.g.dart';

@freezed
class ValidateCustomerOtpDTO with _$ValidateCustomerOtpDTO {
  @JsonSerializable(explicitToJson: true)
  const factory ValidateCustomerOtpDTO({
    @JsonValue('customer') required CustomerDTO? customer,
    required bool status,
    required String? token,
  }) = _ValidateCustomerOtpDTO;

  factory ValidateCustomerOtpDTO.fromJson(Map<String, Object?> json) => _$ValidateCustomerOtpDTOFromJson(json);
}
