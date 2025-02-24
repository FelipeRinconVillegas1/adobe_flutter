// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recent_search.fr.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RecentSearchDTOImpl _$$RecentSearchDTOImplFromJson(
        Map<String, dynamic> json) =>
    _$RecentSearchDTOImpl(
      items: (json['items'] as List<dynamic>)
          .map((e) => ItemRecentSearchDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
      totalCount: (json['total_count'] as num).toInt(),
    );

Map<String, dynamic> _$$RecentSearchDTOImplToJson(
        _$RecentSearchDTOImpl instance) =>
    <String, dynamic>{
      'items': instance.items,
      'total_count': instance.totalCount,
    };

_$ItemRecentSearchDTOImpl _$$ItemRecentSearchDTOImplFromJson(
        Map<String, dynamic> json) =>
    _$ItemRecentSearchDTOImpl(
      numResults: json['num_results'] as String,
      name: json['name'] as String,
      url: json['url'] as String,
    );

Map<String, dynamic> _$$ItemRecentSearchDTOImplToJson(
        _$ItemRecentSearchDTOImpl instance) =>
    <String, dynamic>{
      'num_results': instance.numResults,
      'name': instance.name,
      'url': instance.url,
    };
