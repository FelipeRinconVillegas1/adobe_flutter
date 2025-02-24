import 'package:core/data/repository/substitutions/substitution_repository.dart';
import 'package:core/domain/entity/substitution/substitution.fr.dart';
import 'package:core/utils/error_handler/error_handler.dart';
import 'package:dartz/dartz.dart';

class GetSubstitutionListUseCase {
  GetSubstitutionListUseCase(this._substitutionRepository);

  final SubstitutionRepository _substitutionRepository;

  Future<Either<ErrorHandler, List<Substitution>>> call() {
    return _substitutionRepository.getSubstitutionList();
  }
}
