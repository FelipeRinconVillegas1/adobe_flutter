import 'package:freezed_annotation/freezed_annotation.dart';

part 'urls_oms.fr.freezed.dart';
part 'urls_oms.fr.g.dart';

@freezed
class UrlsOms with _$UrlsOms {
  const factory UrlsOms({
    required String urlBase,
    required String urlResourceAvailability,
    required String urlResourceCheckSlot_1,
    required String urlResourceCheckSlot_2,
    required String urlResourceGetJob
  }) = _UrlsOms;

  factory UrlsOms.fromJson(Map<String, Object?> json) => _$UrlsOmsFromJson(json);
}

extension UrlsOmsExtension on UrlsOms {
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
