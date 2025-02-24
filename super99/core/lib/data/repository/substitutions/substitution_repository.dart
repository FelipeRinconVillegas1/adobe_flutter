import 'package:core/domain/entity/substitution/substitution.fr.dart';
import 'package:core/utils/error_handler/error_handler.dart';
import 'package:dartz/dartz.dart';

abstract class SubstitutionRepository {
  Future<Either<ErrorHandler, List<Substitution>>> getSubstitutionList();

  Future<Either<ErrorHandler, SubstitutionResponse>> setOmsReceivingSubstitutionOnCart({
    required String cartId,
    required String receivingSubstitutions,
  });
}
