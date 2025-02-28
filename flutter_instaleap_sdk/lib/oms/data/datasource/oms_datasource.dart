import 'package:dartz/dartz.dart';
import 'package:flutter_instaleap_sdk/oms/data/dto/job_availability_response_dto.fr.dart';
import 'package:flutter_instaleap_sdk/oms/domain/entity/job_availability_payload.fr.dart';
import '../../core/error_handler/error_handler_core.dart';
import '../dto/check_slot_response_dto.fr.dart';
import '../dto/job_response_dto.fr.dart';

abstract class OmsDatasource {
  Future<Either<ErrorHandlerCore, JobAvailabilityResponseDTO>> checkAvailabilitySlots({required JobAvailabilityPayload payload});
  Future<Either<ErrorHandlerCore, CheckSlotResponseDTO>> checkSlot({required String slotId});
  Future<Either<ErrorHandlerCore, JobResponseDTO>> getJobInformation({required String jobId});
}
