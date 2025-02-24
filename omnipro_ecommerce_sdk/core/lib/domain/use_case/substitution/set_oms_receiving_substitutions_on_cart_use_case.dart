import 'package:core/data/repository/substitutions/substitution_repository.dart';
import 'package:core/domain/entity/substitution/substitution.fr.dart';
import 'package:core/domain/use_case/cart/get_cart_id_use_case.dart';
import 'package:core/utils/error_handler/error_handler.dart';
import 'package:dartz/dartz.dart';

class SetOmsReceivingSubstitutionsOnCartUseCase {
  final SubstitutionRepository _substitutionRepository;
  final GetCartIdUseCase _getCartIdUseCase;

  SetOmsReceivingSubstitutionsOnCartUseCase(
    this._substitutionRepository,
    this._getCartIdUseCase,
  );

  Future<Either<ErrorHandler, SubstitutionResponse>> call({
    required String receivingSubstitutions,
  }) async {
    String currentCartId = await _getCartIdUseCase();

    if (currentCartId.isEmpty) {
      return left(ErrorHandlerInternal(errorMessage: 'Cart ID is empty'));
    }

    return _substitutionRepository.setOmsReceivingSubstitutionOnCart(
      cartId: currentCartId,
      receivingSubstitutions: receivingSubstitutions,
    );
  }
}
