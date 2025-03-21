import 'package:dartz/dartz.dart';
import 'package:flutter_instaleap_sdk/oms/data/mapper.dart';
import 'package:flutter_instaleap_sdk/oms/domain/entity/input_stock_product.fr.dart';
import 'package:flutter_instaleap_sdk/oms/domain/entity/job_availability_payload.fr.dart';
import 'package:flutter_instaleap_sdk/oms/domain/entity/job_availability_response.fr.dart';
import 'package:flutter_instaleap_sdk/oms/domain/entity/response_stock_product.fr.dart';
import 'package:omni_adobe_core/utils/error_handler/error_handler.dart';
import '../../domain/entity/instaleap_availability_input.fr.dart';
import '../../domain/entity/instaleap_availability_response.fr.dart';
import '../datasource/oms_datasource.dart';
import '../dto/instaleap_availability_response_dto.fr.dart';
import '../dto/job_availability_response_dto.fr.dart';
import 'oms_repository.dart';

class OmsRepositoryImpl implements OmsRepository {
  OmsRepositoryImpl({required this.restDataSource, required this.graphqlDataSource});

  final OmsDatasource restDataSource;
  final OmsDatasource graphqlDataSource;

  @override
  Future<Either<ErrorHandler, JobAvailabilityResponse>> checkAvailabilitySlotsRest({
    required JobAvailabilityPayload payload,
  }) async {
    return (await restDataSource.checkAvailabilitySlots<JobAvailabilityResponseDTO, JobAvailabilityPayload>(
      payload: payload,
    )).fold((errorHandler) => left(errorHandler), (response) => right(response.toDomain()));
  }

  @override
  Future<Either<ErrorHandler, InstaleapAvailabilityResponse>> checkAvailabilitySlotsGraphQL({
    required InstaleapAvailabilityInput payload,
  }) async {
    return (await graphqlDataSource
        .checkAvailabilitySlots<InstaleapAvailabilityResponseDTO, InstaleapAvailabilityInput>(
          payload: payload,
        )).fold((errorHandler) => left(errorHandler), (response) => right(response.toDomain()));
  }

  @override
  Future<Either<ErrorHandler, bool>> checkSlot({required String slotId, bool useRestClient = false}) async {
    if (useRestClient) {
      return (await restDataSource.checkSlot(
        slotId: slotId,
      )).fold((errorHandler) => left(errorHandler), (response) => right(response.slotValid));
    } else {
      return (await graphqlDataSource.checkSlot(
        slotId: slotId,
      )).fold((errorHandler) => left(errorHandler), (response) => right(response.slotValid));
    }
  }

  @override
  Future<Either<ErrorHandler, ResponseStockProduct>> getStock({
    required InputStockProduct payload,
    bool useRestClient = false,
  }) async {
    if (useRestClient) {
      return (await restDataSource.getStock(
        payload: payload,
      )).fold((errorHandler) => left(errorHandler), (response) => right(response.toDomain()));
    } else {
      return (await graphqlDataSource.getStock(
        payload: payload,
      )).fold((errorHandler) => left(errorHandler), (response) => right(response.toDomain()));
    }
  }

  @override
  Future<Either<ErrorHandler, bool>> saveSelectedSlot({
    required String slotId,
    required String cartId,
    bool useRestClient = false,
  }) async {
    if (useRestClient) {
      return (await restDataSource.saveSelectedSlot(
        slotId: slotId,
        cartId: cartId,
      )).fold((errorHandler) => left(errorHandler), (response) => right(response));
    } else {
      return (await graphqlDataSource.saveSelectedSlot(
        slotId: slotId,
        cartId: cartId,
      )).fold((errorHandler) => left(errorHandler), (response) => right(response));
    }
  }
}
