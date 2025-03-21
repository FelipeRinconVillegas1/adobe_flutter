import 'package:freezed_annotation/freezed_annotation.dart';

part 'urls_oms.fr.freezed.dart';
part 'urls_oms.fr.g.dart';

@freezed
class UrlsOmsGRAPHQL with _$UrlsOmsGRAPHQL {
  const factory UrlsOmsGRAPHQL({
    required String urlBase,
    required String urlResourceCheckSlot,
  }) = _UrlsOmsGRAPHQL;

  factory UrlsOmsGRAPHQL.fromJson(Map<String, Object?> json) => _$UrlsOmsGRAPHQLFromJson(json);
}

@freezed
class UrlsOmsREST with _$UrlsOmsREST {
  const factory UrlsOmsREST({
    required String urlBase,
    required String urlResourceAvailability,
    required String urlResourceCheckSlot_1,
    required String urlResourceCheckSlot_2,
    required String urlResourceGetJob
  }) = _UrlsOmsREST;

  factory UrlsOmsREST.fromJson(Map<String, Object?> json) => _$UrlsOmsRESTFromJson(json);
}

extension UrlsOmsExtension on UrlsOmsREST {
  String getUrlCheckSlot(String slotId) {
    return "$urlBase$urlResourceCheckSlot_1$slotId$urlResourceCheckSlot_2";
  }

  String getUrlGetJob(String jobId) {
    return "$urlBase$urlResourceGetJob$jobId";
  }

  String get getUrlResourceAvailability {
    return urlBase + urlResourceAvailability;
  }
}
