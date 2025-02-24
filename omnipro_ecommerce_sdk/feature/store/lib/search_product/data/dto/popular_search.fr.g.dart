// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'popular_search.fr.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PopularSearchDTOImpl _$$PopularSearchDTOImplFromJson(
        Map<String, dynamic> json) =>
    _$PopularSearchDTOImpl(
      items: (json['items'] as List<dynamic>)
          .map((e) => ItemPopularSearchDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
      totalCount: (json['total_count'] as num).toInt(),
    );

Map<String, dynamic> _$$PopularSearchDTOImplToJson(
        _$PopularSearchDTOImpl instance) =>
    <String, dynamic>{
      'items': instance.items,
      'total_count': instance.totalCount,
    };

_$ItemPopularSearchDTOImpl _$$ItemPopularSearchDTOImplFromJson(
        Map<String, dynamic> json) =>
    _$ItemPopularSearchDTOImpl(
      numResults: json['num_results'] as String,
      name: json['name'] as String,
      url: json['url'] as String,
    );

Map<String, dynamic> _$$ItemPopularSearchDTOImplToJson(
        _$ItemPopularSearchDTOImpl instance) =>
    <String, dynamic>{
      'num_results': instance.numResults,
      'name': instance.name,
      'url': instance.url,
    };
