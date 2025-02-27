import 'package:dartz/dartz.dart';
import 'package:flutter_instaleap_sdk/oms/data/mapper.dart';
import 'package:flutter_instaleap_sdk/oms/domain/entity/job_availability_payload.fr.dart';
import 'package:flutter_instaleap_sdk/oms/domain/entity/job_availability_response.fr.dart';
import '../../core/error_handler/error_handler_core.dart';
import '../datasource/oms_datasource.dart';
import 'oms_repository.dart';

class OmsRepositoryImpl implements OmsRepository {
  OmsRepositoryImpl({required this.omsDataSource});

  final OmsDatasource omsDataSource;

  @override
  Future<Either<ErrorHandlerCore, JobAvailabilityResponse>> checkAvailabilitySlots({
    required JobAvailabilityPayload payload,
  }) async {
    return (await omsDataSource.checkAvailabilitySlots(
      payload: payload,
    )).fold((errorHandler) => left(errorHandler), (response) => right(response.toDomain()));
  }
}
