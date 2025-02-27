import 'package:dartz/dartz.dart';
import '../../core/error_handler/error_handler_core.dart';
import '../../domain/entity/job_availability_payload.fr.dart';
import '../../domain/entity/job_availability_response.fr.dart';

abstract class OmsRepository {
  Future<Either<ErrorHandlerCore, JobAvailabilityResponse>> checkAvailabilitySlots({required JobAvailabilityPayload payload});
}