import 'package:freezed_annotation/freezed_annotation.dart';

part 'popular_search.fr.freezed.dart';

part 'popular_search.fr.g.dart';

@freezed
class PopularSearchDTO with _$PopularSearchDTO {
  const factory PopularSearchDTO({
    required List<ItemPopularSearchDTO> items,
    @JsonKey(name: 'total_count') required int totalCount,
  }) = _PopularSearchDTO;

  factory PopularSearchDTO.fromJson(Map<String, dynamic> json) => _$PopularSearchDTOFromJson(json);
}

@freezed
class ItemPopularSearchDTO with _$ItemPopularSearchDTO {
  const factory ItemPopularSearchDTO({
    @JsonKey(name: 'num_results') required String numResults,
    required String name,
    required String url,
  }) = _ItemPopularSearchDTO;

  factory ItemPopularSearchDTO.fromJson(Map<String, dynamic> json) => _$ItemPopularSearchDTOFromJson(json);
}