import 'package:core/data/dto/substitutions/substitution_dto.fr.dart';
import 'package:core/domain/entity/substitution/substitution.fr.dart';

extension MapperSubstitutionDTO on SubstitutionDTO {
  Substitution toDomain() {
    return Substitution(
      customCode: customCode,
      option: option,
      cssClassname: cssClassname,
      description: description,
    );
  }
}

extension MapperSubstitutionResponseDTO on SubstitutionResponseDTO {
  SubstitutionResponse toDomain() {
    return SubstitutionResponse(
      cartId: cartId,
      receivingSubstitutions: receivingSubstitutions,
    );
  }
}
