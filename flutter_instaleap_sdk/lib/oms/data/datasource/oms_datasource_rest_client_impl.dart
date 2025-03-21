import 'dart:convert';
import 'package:dartz/dartz.dart';
import 'package:flutter_instaleap_sdk/oms/domain/entity/input_stock_product.fr.dart';
import 'package:omni_adobe_core/data/datasource/secure_call_datasource.dart';
import 'package:omni_adobe_core/network/rest/api_client.dart';
import 'package:omni_adobe_core/utils/error_handler/error_handler.dart';
import '../../../singleton_setup_configuration.dart';
import '../../domain/entity/urls_oms.fr.dart';
import '../dto/check_slot_response_dto.fr.dart';
import 'package:flutter_instaleap_sdk/oms/domain/entity/job_availability_payload.fr.dart';
import '../dto/job_availability_response_dto.fr.dart';
import '../dto/response_stock_product_dto.fr.dart';
import 'oms_datasource.dart';

class OmsDatasourceRestClientImpl implements OmsDatasource {
  OmsDatasourceRestClientImpl(this._apiClient);

  final ApiClient _apiClient;

  @override
  Future<Either<ErrorHandler, T>> checkAvailabilitySlots<T, K>({required K payload}) {
    return secureServerCall(() async {
      final bodyRequest = (payload as JobAvailabilityPayload).toJson();

      UrlsOmsREST urlsOms = SingletonSetupConfiguration().getOmsConfiguration().urlsOms;

      final response = await _apiClient.post(urlsOms.getUrlResourceAvailability, body: bodyRequest);

      return response.fold((error) => Left(error), (response) {
        return Right(JobAvailabilityResponseDTO.fromJson(json.decode(response)) as T);
      });
    }, sourceMethod: "availability");
  }

  @override
  Future<Either<ErrorHandler, CheckSlotResponseDTO>> checkSlot({required String slotId}) {
    return secureServerCall(() async {
      UrlsOmsREST urlsOms = SingletonSetupConfiguration().getOmsConfiguration().urlsOms;

      final response = await _apiClient.get(urlsOms.getUrlCheckSlot(slotId));

      return response.fold((error) => Left(error), (response) {
        return Right(CheckSlotResponseDTO.fromJson(json.decode(response)));
      });
    }, sourceMethod: "checkSlot");
  }

  @override
  Future<Either<ErrorHandler, bool>> saveSelectedSlot({required String slotId, required String cartId}) {
    throw UnimplementedError();
  }

  @override
  Future<Either<ErrorHandler, ResponseStockProductDTO>> getStock({required InputStockProduct payload}) {
    throw UnimplementedError();
  }
}
