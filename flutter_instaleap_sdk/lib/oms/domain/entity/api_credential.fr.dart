// This file is "main.dart"
import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_credential.fr.freezed.dart';
part 'api_credential.fr.g.dart';

@freezed
class ApiCredential with _$ApiCredential {
  const factory ApiCredential({
    @JsonKey(name: 'x_api_key')  required String xApiKey,
  }) = _ApiCredential;

  factory ApiCredential.fromJson(Map<String, Object?> json)
      => _$ApiCredentialFromJson(json);
}