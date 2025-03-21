import 'package:dartz/dartz.dart';
import 'package:omni_adobe_core/utils/error_handler/error_handler.dart';
import '../../../data/repository/oms_repository.dart';

class CheckSlotUseCase {
  CheckSlotUseCase(this._omsRepository);

  final OmsRepository _omsRepository;

  Future<Either<ErrorHandler, bool>> call(String slotId) async {
    try {
      return await _omsRepository.checkSlot(slotId: slotId);
    } catch (e, s) {
      return left(ErrorHandler(errorMessage: e.toString(), stackTrace: s, sourceMethod: 'CheckSlotUseCase-call'));
    }
  }
}
