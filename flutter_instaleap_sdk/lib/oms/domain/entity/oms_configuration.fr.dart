import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_instaleap_sdk/oms/domain/entity/urls_oms.fr.dart';

import 'api_credential.fr.dart';

part 'oms_configuration.fr.freezed.dart';
part 'oms_configuration.fr.g.dart';

@freezed
class OmsConfiguration with _$OmsConfiguration {
  const factory OmsConfiguration({
    required ApiCredential apiCredential,
    required UrlsOms urlsOms,
  }) = _OmsConfiguration;

  factory OmsConfiguration.fromJson(Map<String, Object?> json) => _$OmsConfigurationFromJson(json);
}
