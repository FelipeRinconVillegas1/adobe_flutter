import 'package:freezed_annotation/freezed_annotation.dart';

part 'loyalty_benefit_model_dto.freezed.dart';
part 'loyalty_benefit_model_dto.g.dart';

@freezed
class LoyaltyBenefitModelDTO with _$LoyaltyBenefitModelDTO {
  const factory LoyaltyBenefitModelDTO({
    required String image,
    required String code,
    required String title,
    required String description,
  }) = _LoyaltyBenefitModelDTO;

  factory LoyaltyBenefitModelDTO.fromJson(Map<String, dynamic> json) => _$LoyaltyBenefitModelDTOFromJson(json);
}
