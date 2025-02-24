// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'html_dto.fr.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HtmlDTOImpl _$$HtmlDTOImplFromJson(Map<String, dynamic> json) =>
    _$HtmlDTOImpl(
      identifier: json['identifier'] as String,
      urlKey: json['url_key'] as String,
      title: json['title'] as String,
      content: json['content'] as String,
      contentHeading: json['content_heading'] as String,
      pageLayout: json['page_layout'] as String,
      metaTitle: json['meta_title'] as String,
      metaDescription: json['meta_description'] as String,
      metaKeywords: json['meta_keywords'] as String,
    );

Map<String, dynamic> _$$HtmlDTOImplToJson(_$HtmlDTOImpl instance) =>
    <String, dynamic>{
      'identifier': instance.identifier,
      'url_key': instance.urlKey,
      'title': instance.title,
      'content': instance.content,
      'content_heading': instance.contentHeading,
      'page_layout': instance.pageLayout,
      'meta_title': instance.metaTitle,
      'meta_description': instance.metaDescription,
      'meta_keywords': instance.metaKeywords,
    };
