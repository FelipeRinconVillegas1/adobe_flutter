import 'package:freezed_annotation/freezed_annotation.dart';
part 'refundable_fee_dto.fr.freezed.dart';
part 'refundable_fee_dto.fr.g.dart';

@freezed
class RefundableFeeDTO with _$RefundableFeeDTO {
  const factory RefundableFeeDTO({
    required double value,
  }) = _RefundableFeeDTO;

  factory RefundableFeeDTO.fromJson(Map<String, Object?> json) => _$RefundableFeeDTOFromJson(json);
}
