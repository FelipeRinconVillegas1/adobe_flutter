// This file is "main.dart"
import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_credential_rest.fr.freezed.dart';
part 'api_credential_rest.fr.g.dart';

@freezed
class ApiCredentialREST with _$ApiCredentialREST {
  const factory ApiCredentialREST({
    @JsonKey(name: 'x_api_key')  required String xApiKey,
  }) = _ApiCredentialREST;

  factory ApiCredentialREST.fromJson(Map<String, Object?> json)
      => _$ApiCredentialRESTFromJson(json);
}