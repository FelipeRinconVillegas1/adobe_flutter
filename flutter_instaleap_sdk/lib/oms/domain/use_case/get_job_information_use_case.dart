import 'package:dartz/dartz.dart';
import 'package:flutter_instaleap_sdk/oms/data/dto/job_response_dto.fr.dart';
import '../../core/error_handler/error_handler_core.dart';
import '../../data/repository/oms_repository.dart';

class GetJobInformationUseCase {
  GetJobInformationUseCase(this._omsRepository);

  final OmsRepository _omsRepository;

  Future<Either<ErrorHandlerCore, JobResponseDTO>> call(String jobId) async {
    try {
      return await _omsRepository.getJobInformation(jobId: jobId);
    } catch (e, s) {
      return left(ErrorHandlerInternalCore(errorMessage: e.toString(), stackTrace: s));
    }
  }
}
