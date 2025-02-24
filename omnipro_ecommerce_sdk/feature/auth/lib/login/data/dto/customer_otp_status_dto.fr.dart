import 'package:freezed_annotation/freezed_annotation.dart';
part 'customer_otp_status_dto.fr.freezed.dart';
part 'customer_otp_status_dto.fr.g.dart';

@freezed
class CustomerOtpStatusDTO with _$CustomerOtpStatusDTO {
  const factory CustomerOtpStatusDTO({
     required bool status,
  }) = _CustomerOtpStatusDTO;

  factory CustomerOtpStatusDTO.fromJson(Map<String, Object?> json) => _$CustomerOtpStatusDTOFromJson(json);
}
