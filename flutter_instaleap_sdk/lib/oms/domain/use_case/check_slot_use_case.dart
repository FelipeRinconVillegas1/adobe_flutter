import 'package:dartz/dartz.dart';
import '../../core/error_handler/error_handler_core.dart';
import '../../data/repository/oms_repository.dart';

class CheckSlotUseCase {
  CheckSlotUseCase(this._omsRepository);

  final OmsRepository _omsRepository;

  Future<Either<ErrorHandlerCore, bool>> call(String slotId) async {
    try {
      return await _omsRepository.checkSlot(slotId: slotId);
    } catch (e, s) {
      return left(ErrorHandlerInternalCore(errorMessage: e.toString(), stackTrace: s));
    }
  }
}