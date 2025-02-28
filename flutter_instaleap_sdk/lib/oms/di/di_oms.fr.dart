import 'package:http/http.dart' as http;
import 'package:flutter_instaleap_sdk/oms/data/datasource/oms_datasource.dart';
import 'package:flutter_instaleap_sdk/oms/data/datasource/oms_datasource_impl.dart';
import 'package:flutter_instaleap_sdk/oms/data/repository/oms_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../core/rest/api_client.dart';
import '../core/rest/api_client_http.dart';
import '../data/datasource/interceptor_client_http.dart';
import '../data/repository/oms_repository_impl.dart';
import '../domain/use_case/check_availability_time_slots_use_case.dart';
import '../domain/use_case/check_slot_use_case.dart';
import '../domain/use_case/get_job_information_use_case.dart';

part 'di_oms.fr.g.dart';

@Riverpod(keepAlive: true)
http.Client client(ClientRef ref) {
  return http.Client();
}

@Riverpod(keepAlive: true)
http.Client interceptorClientHTTP(InterceptorClientHTTPRef ref) {
  return InterceptorClientHTTP(ref.watch(clientProvider));
}

@Riverpod(keepAlive: true)
ApiClient apiClientWithInterceptor(ApiClientWithInterceptorRef ref) {
  return HttpApiClient(ref.watch(interceptorClientHTTPProvider));
}

@Riverpod(keepAlive: true)
ApiClient apiClientNormal(ApiClientNormalRef ref) {
  return HttpApiClient(ref.watch(clientProvider));
}

@Riverpod(keepAlive: true)
OmsDatasource omsDatasourceSource(OmsDatasourceSourceRef ref) {
  return OmsDatasourceImpl(ref.watch(apiClientWithInterceptorProvider));
}

@Riverpod(keepAlive: true)
OmsRepository omsRepository(OmsRepositoryRef ref) {
  return OmsRepositoryImpl(omsDataSource: ref.watch(omsDatasourceSourceProvider));
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
GetJobInformationUseCase getJobInformationUseCase(GetJobInformationUseCaseRef ref) {
  return GetJobInformationUseCase(ref.watch(omsRepositoryProvider));
}
