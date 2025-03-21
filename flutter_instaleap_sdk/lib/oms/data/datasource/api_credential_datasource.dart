import '../../domain/entity/api_credential_rest.fr.dart';

abstract class ApiCredentialDatasource {
  ApiCredentialREST getCredential();
}