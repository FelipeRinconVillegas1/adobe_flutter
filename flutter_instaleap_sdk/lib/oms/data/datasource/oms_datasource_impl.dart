import 'dart:convert';
import 'package:dartz/dartz.dart';
import 'package:flutter_instaleap_sdk/oms/data/dto/job_availability_response_dto.fr.dart';
import 'package:flutter_instaleap_sdk/oms/data/dto/job_response_dto.fr.dart';
import 'package:flutter_instaleap_sdk/oms/domain/entity/job_availability_payload.fr.dart';
import '../../../singleton_setup_configuration.dart';
import '../../core/error_handler/error_handler_core.dart';
import '../../core/rest/api_client.dart';
import '../../core/utils/secure_call_datasource.dart';
import '../../domain/entity/urls_oms.fr.dart';
import '../dto/check_slot_response_dto.fr.dart';
import 'oms_datasource.dart';

class OmsDatasourceImpl implements OmsDatasource {
  OmsDatasourceImpl(this._apiClient);

  final ApiClient _apiClient;

  @override
  Future<Either<ErrorHandlerCore, JobAvailabilityResponseDTO>> checkAvailabilitySlots({
    required JobAvailabilityPayload payload,
  }) {
    return secureServerCallCore(() async {
      final bodyRequest = payload.toJson();

      UrlsOms urlsOms = SingletonSetupConfiguration().getOmsConfiguration().urlsOms;

      final response = await _apiClient.post(urlsOms.getUrlResourceAvailability, body: bodyRequest);

      return response.fold((error) => Left(error), (response) {
        return Right(JobAvailabilityResponseDTO.fromJson(json.decode(response)));
      });
    }, serviceName: "availability");
  }

  @override
  Future<Either<ErrorHandlerCore, CheckSlotResponseDTO>> checkSlot({required String slotId}) {
    return secureServerCallCore(() async {
      UrlsOms urlsOms = SingletonSetupConfiguration().getOmsConfiguration().urlsOms;

      final response = await _apiClient.get(urlsOms.getUrlCheckSlot(slotId));

      return response.fold((error) => Left(error), (response) {
        return Right(CheckSlotResponseDTO.fromJson(json.decode(response)));
      });
    }, serviceName: "checkSlot");
  }

  @override
  Future<Either<ErrorHandlerCore, JobResponseDTO>> getJobInformation({required String jobId}) {
    return secureServerCallCore(() async {
      UrlsOms urlsOms = SingletonSetupConfiguration().getOmsConfiguration().urlsOms;

      final response = await _apiClient.get(urlsOms.getUrlGetJob(jobId));

      return response.fold((error) => Left(error), (response) {
        return Right(JobResponseDTO.fromJson(json.decode(response)));
      });
    }, serviceName: "getJobInformation");
  }
}
