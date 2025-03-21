library;

import 'package:flutter_instaleap_sdk/singleton_setup_configuration.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../data/datasource/api_credential_datasource.dart';
import '../data/datasource/url_oms_datasource.dart';
import '../domain/entity/api_credential_rest.fr.dart';
import '../domain/entity/oms_configuration.fr.dart';
import '../domain/entity/urls_oms.fr.dart';

part 'main_example.g.dart';

class ApiCredentialDatasourceImpl implements ApiCredentialDatasource {
  @override
  ApiCredentialREST getCredential() {
    return const ApiCredentialREST(
      xApiKey: "123456789"
    );
  }
}

class UrlsOmsDatasourceImpl implements UrlsOmsDatasource {
  @override
  UrlsOmsREST getUrlsOms() {
    return const UrlsOmsREST(
      urlBase: "https://api.xandar.instaleap.io",
      urlResourceAvailability: "/jobs/availability/v2",
      urlResourceCheckSlot_1: "/jobs/availability/",
      urlResourceCheckSlot_2: "/check",
      urlResourceGetJob: "/jobs/"
    );
  }
}

@riverpod
void execute(ExecuteRef ref) async {


}

void main() {
  /// Initialize the configuration
  OmsConfiguration omsConfiguration = OmsConfiguration(
      apiCredential: ApiCredentialDatasourceImpl().getCredential(),
      urlsOms: UrlsOmsDatasourceImpl().getUrlsOms()
  );
  SingletonSetupConfiguration.init(omsConfiguration: omsConfiguration);
  /// now you can use the use cases, repositories, datasources, etc.
}
