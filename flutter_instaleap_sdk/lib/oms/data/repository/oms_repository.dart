import 'package:dartz/dartz.dart';
import 'package:flutter_instaleap_sdk/oms/domain/entity/job_availability_payload.fr.dart';
import 'package:omni_adobe_core/utils/error_handler/error_handler.dart';
import '../../domain/entity/input_stock_product.fr.dart';
import '../../domain/entity/instaleap_availability_input.fr.dart';
import '../../domain/entity/instaleap_availability_response.fr.dart';
import '../../domain/entity/job_availability_response.fr.dart';
import '../../domain/entity/response_stock_product.fr.dart';

abstract class OmsRepository {
  Future<Either<ErrorHandler, JobAvailabilityResponse>> checkAvailabilitySlotsRest({required JobAvailabilityPayload payload});
  Future<Either<ErrorHandler, InstaleapAvailabilityResponse>> checkAvailabilitySlotsGraphQL({required InstaleapAvailabilityInput payload});
  Future<Either<ErrorHandler, bool>> checkSlot({required String slotId, bool useRestClient = false});
  Future<Either<ErrorHandler, bool>> saveSelectedSlot({required String slotId,required String cartId, bool useRestClient = false});
  Future<Either<ErrorHandler, ResponseStockProduct>> getStock({required InputStockProduct payload, bool useRestClient = false});
}
