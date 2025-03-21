import 'package:dartz/dartz.dart';
import 'package:flutter_instaleap_sdk/oms/data/dto/check_slot_response_dto.fr.dart';
import 'package:flutter_instaleap_sdk/oms/domain/entity/input_stock_product.fr.dart';
import 'package:omni_adobe_core/data/datasource/secure_call_datasource.dart';
import 'package:omni_adobe_core/network/graphql/graphql_service.dart';
import 'package:omni_adobe_core/utils/error_handler/error_handler.dart';
import '../../domain/entity/instaleap_availability_input.fr.dart';
import '../dto/instaleap_availability_response_dto.fr.dart';
import '../dto/response_stock_product_dto.fr.dart';
import 'mutation_instaleap_oms.dart';
import 'oms_datasource.dart';
import 'query_instaleap_oms.dart';

class OmsDatasourceGraphQlClientImpl implements OmsDatasource {
  OmsDatasourceGraphQlClientImpl(this._graphQLService);

  final GraphQLService _graphQLService;

  @override
  Future<Either<ErrorHandler, T>> checkAvailabilitySlots<T, K>({required K payload}) {
    return secureServerCall(() async {
      final mutation = mutationInstaleapOms(payload as InstaleapAvailabilityInput);
      final response = await _graphQLService.mutation(mutation);
      return response.fold((l) => left(l), (mutationData) {
        final response = InstaleapAvailabilityResponseDTO.fromJson(mutationData.data!['instaleapAvailability']);
        return Right(response as T);
      });
    }, sourceMethod: 'checkAvailabilitySlots-GrapQL');
  }

  @override
  Future<Either<ErrorHandler, CheckSlotResponseDTO>> checkSlot({required String slotId}) {
    return secureServerCall(() async {
      final query = queryCheckSlotInstaleapOms(slotId);
      final response = await _graphQLService.query(query);

      return response.fold((l) => left(l), (responseQuery) {
        final checkSlotResponse = CheckSlotResponseDTO.fromJson(responseQuery.data!['instaleapCheckSlot']);
        return right(checkSlotResponse);
      });
    }, sourceMethod: 'checkSlot-GrapQL');
  }

  @override
  Future<Either<ErrorHandler, bool>> saveSelectedSlot({required String slotId, required String cartId}) {
    return secureServerCall(() async {
      final mutation = mutationInstaleapSaveSelectedSlotOms(slotId, cartId);
      final response = await _graphQLService.mutation(mutation);

      return response.fold((l) => left(l), (responseQuery) {
        final checkSlotResponse = responseQuery.data!['instaleapSaveSelectedSlot']["success"] as bool;
        return right(checkSlotResponse);
      });
    }, sourceMethod: 'saveSelectedSlot-GrapQL');
  }

  @override
  Future<Either<ErrorHandler, ResponseStockProductDTO>> getStock({required InputStockProduct payload}) {
    return secureServerCall(() async {
      final query = queryGetStockDataInstaleapOms(payload);
      final response = await _graphQLService.query(query);

      return response.fold((l) => left(l), (responseQuery) {
        final checkSlotResponse = ResponseStockProductDTO.fromJson(responseQuery.data!['instaleapGetstockdata']);
        return right(checkSlotResponse);
      });
    }, sourceMethod: 'getStock-GrapQL');
  }
}
