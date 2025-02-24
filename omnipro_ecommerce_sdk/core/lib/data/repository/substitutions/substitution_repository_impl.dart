import 'package:core/data/datasource/substitutions/substitution_datasource.dart';
import 'package:core/data/repository/substitutions/mapper.dart';
import 'package:core/data/repository/substitutions/substitution_repository.dart';
import 'package:core/domain/entity/substitution/substitution.fr.dart';
import 'package:core/utils/error_handler/error_handler.dart';
import 'package:dartz/dartz.dart';

class SubstitutionRepositoryImpl extends SubstitutionRepository {
  final SubstitutionDatasource _substitutionDatasource;

  SubstitutionRepositoryImpl(
    this._substitutionDatasource,
  );

  @override
  Future<Either<ErrorHandler, List<Substitution>>> getSubstitutionList() {
    return _substitutionDatasource.getSubstitutionList().then((value) => value.fold(
          (errorHandler) => left(errorHandler),
          (substitutionDTOList) => right(substitutionDTOList.map((e) => e.toDomain()).toList()),
        ));
  }

  @override
  Future<Either<ErrorHandler, SubstitutionResponse>> setOmsReceivingSubstitutionOnCart(
      {required String cartId, required String receivingSubstitutions}) {
    return _substitutionDatasource
        .setOmsReceivingSubstitutionOnCart(cartId: cartId, receivingSubstitutions: receivingSubstitutions)
        .then((value) => value.fold(
              (errorHandler) => left(errorHandler),
              (substitutionResponseDTO) => right(substitutionResponseDTO.toDomain()),
            ));
  }
}
