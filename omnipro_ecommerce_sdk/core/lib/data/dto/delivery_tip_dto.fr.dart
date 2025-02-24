import 'package:freezed_annotation/freezed_annotation.dart';

part 'delivery_tip_dto.fr.freezed.dart';

part 'delivery_tip_dto.fr.g.dart';

@freezed
class DeliveryTipDTO with _$DeliveryTipDTO {
  const factory DeliveryTipDTO({
    required String labelTip,
    required double value,
  }) = _DeliveryTipDTO;

  factory DeliveryTipDTO.fromJson(Map<String, Object?> json) => _$DeliveryTipDTOFromJson(json);
}
