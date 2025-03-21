import 'package:dartz/dartz.dart';
import 'package:flutter_instaleap_sdk/oms/domain/entity/instaleap_availability_response.fr.dart';
import 'package:omni_adobe_core/utils/error_handler/error_handler.dart';
import '../../../data/repository/oms_repository.dart';
import '../../entity/instaleap_availability_input.fr.dart';

class CheckAvailabilityTimeSlotsUseCase {
  CheckAvailabilityTimeSlotsUseCase(this._omsRepository);

  final OmsRepository _omsRepository;

  Future<Either<ErrorHandler, InstaleapAvailabilityResponse>> call(InstaleapAvailabilityInput input) async {
    try {
      return await _omsRepository.checkAvailabilitySlotsGraphQL(payload: input);
    } catch (e, s) {
      return left(
        ErrorHandler(errorMessage: e.toString(), stackTrace: s, sourceMethod: 'CheckAvailabilityTimeSlotsUseCase'),
      );
    }
  }
}
