import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:http/http.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:synchronized/synchronized.dart';
import 'package:core/data/datasource/dropdown_manager/dropdown_options_datasource.dart';
import 'package:core/data/datasource/remote_config_datasource.dart';
import 'package:core/data/datasource/session/log_out_data_source.dart';
import 'package:core/domain/use_case/suggested_texts/get_suggested_emails_use_case.dart';
import 'package:core/domain/use_case/suggested_texts/save_suggested_email_use_case.dart';
import 'package:core/local/di_secure_storage.fr.dart';
import 'package:core/network/conectivity_check.dart';
import 'package:core/network/graphql/graphql_client_config.dart';
import 'package:core/network/graphql/graphql_service.dart';
import 'package:core/network/graphql/graphql_token_service.dart';
import 'package:core/network/graphql/refresh_token_link.dart';
import 'package:core/network/rest/api_client.dart';
import 'package:core/network/token_mediator.dart';
import 'package:core/network/token_service.dart';
import '../data/datasource/dropdown_manager/dropdown_options_datasource_impl.dart';
import '../data/datasource/suggested_texts/suggested_texts_datasource.dart';
import '../data/repository/suggested_texts/suggested_texts_repository.dart';
import '../init/setup_omnipro_sdk.dart';
import '../network/rest/api_client_http.dart';
import '../network/rest/http_service_token.dart';
import '../network/rest/refresh_token_client_http.dart';

part 'data_provider.fr.g.dart';

@Riverpod(keepAlive: true)
ConnectivityCheck connectivityCheck(ConnectivityCheckRef ref) {
  return ConnectivityCheckImpl(Connectivity());
}

@Riverpod(keepAlive: true)
LogOutDataSource logOutDatasource(LogOutDatasourceRef ref) {
  return LogOutDataSourceImpl(ref.watch(secureStorageDatasourceSourceProvider));
}

@Riverpod(keepAlive: true)
RemoteConfigDataSource remoteConfigDataSource(RemoteConfigDataSourceRef ref) {
  return RemoteConfigDataSourceImp(ref.watch(firebaseRemoteConfigSourceProvider));
}

/// Class to configure the GraphQLClient with the base url (ADOBE) for get, and the refreshTokenLink use GET for queries
@Riverpod(keepAlive: true)
GraphQLService graphQLServiceSource(GraphQLServiceSourceRef ref) {
  return GraphQLService.authenticated(ref.watch(graphQLClientConfigSourceUseGetProvider),
      ref.watch(refreshTokenLinkSourceProvider), ref.watch(connectivityCheckProvider));
}

/// Class to configure the GraphQLClient with the base url (ADOBE) for get, and no authentication
@Riverpod(keepAlive: true)
GraphQLService graphQLServiceSourceNoAuthenticated(GraphQLServiceSourceNoAuthenticatedRef ref, {required bool useGet}) {
  return GraphQLService.unauthenticated(
      ref.watch(useGet ? graphQLClientConfigSourceUseGetProvider : graphQLClientConfigSourceUsePOSTProvider),
      ref.watch(connectivityCheckProvider));
}

/// Class to configure the GraphQLClient (APP SERVER) with the base url and  use POST for queries
@Riverpod(keepAlive: true)
GraphQLService graphQLServiceAppServerSource(GraphQLServiceSourceRef ref) {
  return GraphQLService.unauthenticated(
      ref.watch(graphQLClientConfigAppServerSourceProvider), ref.watch(connectivityCheckProvider));
}

/// Class to configure the GraphQLClient with the base url and the refreshTokenLink use POST for queries
@Riverpod(keepAlive: true)
GraphQLService graphQLServiceSourceUsePOST(GraphQLServiceSourceRef ref) {
  return GraphQLService.authenticated(ref.watch(graphQLClientConfigSourceUsePOSTProvider),
      ref.watch(refreshTokenLinkSourceProvider), ref.watch(connectivityCheckProvider));
}

@Riverpod(keepAlive: true)
RefreshTokenLink refreshTokenLinkSource(RefreshTokenLinkSourceRef ref) {
  return RefreshTokenLink(ref.watch(tokenServiceSourceProvider), ref.watch(secureStorageDatasourceSourceProvider),
      ref.watch(tokenMediatorSourceProvider));
}

@Riverpod(keepAlive: true)
TokenService tokenServiceSource(TokenServiceSourceRef ref) {
  return GraphQLServiceToken(ref.watch(graphQLServiceSourceNoAuthenticatedProvider.call(useGet: false)),
      ref.watch(secureStorageDatasourceSourceProvider), ref.watch(refreshTokenLockProvider));
}

/// Class to configure the GraphQLClient with the base url and the refreshTokenLink with use GET for queries
@Riverpod(keepAlive: true)
GraphQLClientConfig graphQLClientConfigSourceUseGet(GraphQLClientConfigSourceUseGetRef ref) {
  return GraphQLClientConfig(ref.watch(baseUrlSourceProvider), useGETForQueries: true);
}

@Riverpod(keepAlive: true)
GraphQLClientConfig graphQLClientConfigAppServerSource(GraphQLClientConfigAppServerSourceRef ref) {
  return GraphQLClientConfig(ref.watch(baseUrlAppServerSourceProvider), useGETForQueries: false);
}

/// Class to configure the GraphQLClient with the base url and the refreshTokenLink with use POST for queries
@Riverpod(keepAlive: true)
GraphQLClientConfig graphQLClientConfigSourceUsePOST(GraphQLClientConfigSourceUsePOSTRef ref) {
  return GraphQLClientConfig(ref.watch(baseUrlSourceProvider), useGETForQueries: false);
}

@Riverpod(keepAlive: true)
FirebaseRemoteConfig firebaseRemoteConfigSource(FirebaseRemoteConfigSourceRef ref) {
  return FirebaseRemoteConfig.instance;
}

@Riverpod(keepAlive: true)
TokenMediator tokenMediatorSource(TokenMediatorSourceRef ref) {
  return TokenMediator();
}

@Riverpod(keepAlive: true)
String baseUrlAppServerSource(BaseUrlSourceRef ref) {
  return '';
}

@Riverpod(keepAlive: true)
String baseUrlSource(BaseUrlSourceRef ref) {
  return SetupOnmiproSdk().getConfig().urlHostMagento;
}

/// REST API PROVIDERS ----------------------------------------------------------
@Riverpod(keepAlive: true)
String baseUrlRest(BaseUrlRestRef ref) {
  return SetupOnmiproSdk().getConfig().baseUrlRest;
}

@Riverpod(keepAlive: true)
TokenService httpServiceToken(HttpServiceTokenRef ref) {
  return HttpServiceToken(ref.watch(graphQLServiceSourceNoAuthenticatedProvider.call(useGet: false)),
      ref.watch(secureStorageDatasourceSourceProvider), ref.watch(refreshTokenLockProvider));
}

@Riverpod(keepAlive: true)
Lock refreshTokenLock(RefreshTokenLockRef ref) {
  return Lock();
}

@Riverpod(keepAlive: true)
Client refreshTokenClientHTTP(RefreshTokenClientHTTPRef ref) {
  return RefreshTokenClientHTTP(
    Client(),
    ref.watch(httpServiceTokenProvider),
  );
}

@Riverpod(keepAlive: true)
ApiClient apiClient(ApiClientRef ref) {
  return HttpApiClient(
    ref.watch(refreshTokenClientHTTPProvider),
    baseUrl: ref.watch(baseUrlRestProvider),
  );
}

@Riverpod(keepAlive: true)
DropdownOptionsDatasource dropdownOptionsDatasource(DropdownOptionsDatasourceRef ref) {
  return DropdownOptionsDatasourceImpl(
    ref.watch(remoteConfigDataSourceProvider),
  );
}

@riverpod
SuggestedTextsDataSource suggestedTextsDataSource(SuggestedTextsDataSourceRef ref) {
  return SuggestedTextsDataSourceImpl(ref.watch(secureStorageDatasourceSourceProvider));
}

@riverpod
SuggestedTextRepository suggestedTextRepository(SuggestedTextRepositoryRef ref) {
  return SuggestedTextRepositoryImpl(ref.watch(suggestedTextsDataSourceProvider));
}

@riverpod
SaveSuggestedEmailUseCase saveSuggestedEmailUseCase(SaveSuggestedEmailUseCaseRef ref) {
  return SaveSuggestedEmailUseCase(ref.watch(suggestedTextRepositoryProvider));
}

@riverpod
GetSuggestedEmailsUseCase getSuggestedEmailsUseCase(GetSuggestedEmailsUseCaseRef ref) {
  return GetSuggestedEmailsUseCase(ref.watch(suggestedTextRepositoryProvider));
}