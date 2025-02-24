import 'package:equatable/equatable.dart';

class HtmlEntity extends Equatable {
  final String identifier;
  final String urlKey;
  final String title;
  final String content;
  final String contentHeading;
  final String pageLayout;
  final String metaTitle;
  final String metaDescription;
  final String metaKeywords;

  const HtmlEntity({
    required this.identifier,
    required this.urlKey,
    required this.title,
    required this.content,
    required this.contentHeading,
    required this.pageLayout,
    required this.metaTitle,
    required this.metaDescription,
    required this.metaKeywords,
  });

  @override
  List<Object?> get props =>
      [identifier, urlKey, title, content, contentHeading, pageLayout, metaTitle, metaDescription, metaKeywords];

  //Copy with
  HtmlEntity copyWith({
    String? identifier,
    String? urlKey,
    String? title,
    String? content,
    String? contentHeading,
    String? pageLayout,
    String? metaTitle,
    String? metaDescription,
    String? metaKeywords,
  }) {
    return HtmlEntity(
      identifier: identifier ?? this.identifier,
      urlKey: urlKey ?? this.urlKey,
      title: title ?? this.title,
      content: content ?? this.content,
      contentHeading: contentHeading ?? this.contentHeading,
      pageLayout: pageLayout ?? this.pageLayout,
      metaTitle: metaTitle ?? this.metaTitle,
      metaDescription: metaDescription ?? this.metaDescription,
      metaKeywords: metaKeywords ?? this.metaKeywords,
    );
  }
}
