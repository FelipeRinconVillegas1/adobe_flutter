import 'package:dartz/dartz.dart';
import '../../core/error_handler/error_handler_core.dart';
import '../../domain/entity/job_availability_payload.fr.dart';
import '../../domain/entity/job_availability_response.fr.dart';
import '../dto/job_response_dto.fr.dart';

abstract class OmsRepository {
  Future<Either<ErrorHandlerCore, JobAvailabilityResponse>> checkAvailabilitySlots({required JobAvailabilityPayload payload});
  Future<Either<ErrorHandlerCore, bool>> checkSlot({required String slotId});
  Future<Either<ErrorHandlerCore, JobResponseDTO>> getJobInformation({required String jobId});
}