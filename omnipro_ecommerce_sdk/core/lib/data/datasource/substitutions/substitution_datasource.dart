import 'package:core/data/dto/substitutions/substitution_dto.fr.dart';
import 'package:core/utils/error_handler/error_handler.dart';
import 'package:dartz/dartz.dart';

abstract class SubstitutionDatasource {
  Future<Either<ErrorHandler, List<SubstitutionDTO>>> getSubstitutionList();

  Future<Either<ErrorHandler, SubstitutionResponseDTO>> setOmsReceivingSubstitutionOnCart({
    required String cartId,
    required String receivingSubstitutions,
  });
}
