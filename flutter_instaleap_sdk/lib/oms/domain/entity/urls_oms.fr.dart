import 'package:freezed_annotation/freezed_annotation.dart';

part 'urls_oms.fr.freezed.dart';
part 'urls_oms.fr.g.dart';

@freezed
class UrlsOms with _$UrlsOms {
  const factory UrlsOms({
    required String urlBase,
    required String urlResourceAvailability,
  }) = _UrlsOms;

  factory UrlsOms.fromJson(Map<String, Object?> json) => _$UrlsOmsFromJson(json);
}
