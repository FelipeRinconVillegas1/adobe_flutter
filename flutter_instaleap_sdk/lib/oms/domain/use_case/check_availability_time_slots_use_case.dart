import 'package:dartz/dartz.dart';
import 'package:flutter_instaleap_sdk/oms/domain/entity/job_availability_payload.fr.dart';

import '../../core/error_handler/error_handler_core.dart';
import '../../data/repository/oms_repository.dart';
import '../entity/job_availability_response.fr.dart';

class CheckAvailabilityTimeSlotsUseCase {
  CheckAvailabilityTimeSlotsUseCase(this._omsRepository);

  final OmsRepository _omsRepository;

  Future<Either<ErrorHandlerCore, JobAvailabilityResponse>> call(JobAvailabilityPayload jobAvailabilityPayload) async {
    try {
      return await _omsRepository.checkAvailabilitySlots(payload: jobAvailabilityPayload);
    } catch (e, s) {
      return left(ErrorHandlerInternalCore(errorMessage: e.toString(), stackTrace: s));
    }
  }
}
