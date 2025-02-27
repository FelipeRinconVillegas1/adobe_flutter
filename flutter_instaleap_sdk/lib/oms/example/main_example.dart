library oms_omni_plugin;

import 'package:flutter_instaleap_sdk/singleton_setup_configuration.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../data/datasource/api_credential_datasource.dart';
import '../data/datasource/url_oms_datasource.dart';
import '../di/di_oms.fr.dart';
import '../domain/entity/api_credential.fr.dart';
import '../domain/entity/oms_configuration.fr.dart';
import '../domain/entity/urls_oms.fr.dart';

part 'main_example.g.dart';

class ApiCredentialDatasourceImpl implements ApiCredentialDatasource {
  @override
  ApiCredential getCredential() {
    return const ApiCredential(
      xApiKey: "123456789"
    );
  }
}

class UrlsOmsDatasourceImpl implements UrlsOmsDatasource {
  @override
  UrlsOms getUrlsOms() {
    return const UrlsOms(
      urlBase: "https://api.xandar.instaleap.io",
      urlResourceAvailability: "jobs/availability/v2"
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
