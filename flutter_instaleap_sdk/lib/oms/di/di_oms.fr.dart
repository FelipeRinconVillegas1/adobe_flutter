import 'package:flutter_instaleap_sdk/oms/data/datasource/oms_datasource.dart';
import 'package:flutter_instaleap_sdk/oms/data/repository/oms_repository.dart';
import 'package:omni_adobe_core/di/data_provider.fr.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../data/datasource/oms_datasource_graphql_client_impl.dart';
import '../data/datasource/oms_datasource_rest_client_impl.dart';
import '../data/repository/oms_repository_impl.dart';
import '../domain/use_case/graphql/check_availability_time_slots_use_case.dart';
import '../domain/use_case/graphql/check_slot_use_case.dart';
import '../domain/use_case/graphql/get_stock_product_use_case.dart';
import '../domain/use_case/graphql/save_slot_use_case.dart';

part 'di_oms.fr.g.dart';

@Riverpod(keepAlive: true)
OmsDatasource omsDatasourceSourceGraphQl(OmsDatasourceSourceGraphQlRef ref) {
  return OmsDatasourceGraphQlClientImpl(ref.watch(graphQLServiceSourceProvider));
}

@Riverpod(keepAlive: true)
OmsDatasource omsDatasourceSource(OmsDatasourceSourceRef ref) {
  return OmsDatasourceRestClientImpl(ref.watch(apiClientProvider));
}

@Riverpod(keepAlive: true)
OmsRepository omsRepository(OmsRepositoryRef ref) {
  return OmsRepositoryImpl(
    restDataSource: ref.watch(omsDatasourceSourceProvider),
    graphqlDataSource: ref.watch(omsDatasourceSourceGraphQlProvider),
  );
}

@Riverpod(keepAlive: true)
CheckAvailabilityTimeSlotsUseCase checkAvailabilityTimeSlotsUseCase(CheckAvailabilityTimeSlotsUseCaseRef ref) {
  return CheckAvailabilityTimeSlotsUseCase(ref.watch(omsRepositoryProvider));
}

@Riverpod(keepAlive: true)
CheckSlotUseCase checkSlotUseCase(CheckSlotUseCaseRef ref) {
  return CheckSlotUseCase(ref.watch(omsRepositoryProvider));
}

@Riverpod(keepAlive: true)
GetStockUseCase getStockUseCase(GetStockUseCaseRef ref) {
  return GetStockUseCase(ref.watch(omsRepositoryProvider));
}

@Riverpod(keepAlive: true)
SaveSlotUseCase saveSlotUseCase(SaveSlotUseCaseRef ref) {
  return SaveSlotUseCase(ref.watch(omsRepositoryProvider));
}
