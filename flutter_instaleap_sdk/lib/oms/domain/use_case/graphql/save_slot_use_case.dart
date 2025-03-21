import 'package:dartz/dartz.dart';
import 'package:omni_adobe_core/utils/error_handler/error_handler.dart';
import '../../../data/repository/oms_repository.dart';

class SaveSlotUseCase {
  SaveSlotUseCase(this._omsRepository);

  final OmsRepository _omsRepository;

  Future<Either<ErrorHandler, bool>> call({required String slotId, required String cartId}) async {
    try {
      return await _omsRepository.saveSelectedSlot(slotId: slotId, cartId: cartId);
    } catch (e, s) {
      return left(ErrorHandler(errorMessage: e.toString(), stackTrace: s, sourceMethod: 'SaveSlotUseCase-call'));
    }
  }
}
