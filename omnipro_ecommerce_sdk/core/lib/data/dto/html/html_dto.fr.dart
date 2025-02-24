import 'package:freezed_annotation/freezed_annotation.dart';

part 'html_dto.fr.freezed.dart';
part 'html_dto.fr.g.dart';

@freezed
class HtmlDTO with _$HtmlDTO {
  const factory HtmlDTO({
    required String identifier,
    @JsonKey(name: 'url_key') required String urlKey,
    required String title,
    required String content,
    @JsonKey(name: 'content_heading') required String contentHeading,
    @JsonKey(name: 'page_layout') required String pageLayout,
    @JsonKey(name: 'meta_title') required String metaTitle,
    @JsonKey(name: 'meta_description') required String metaDescription,
    @JsonKey(name: 'meta_keywords') required String metaKeywords,
  }) = _HtmlDTO;

  factory HtmlDTO.fromJson(Map<String, Object?> json) => _$HtmlDTOFromJson(json);
}
