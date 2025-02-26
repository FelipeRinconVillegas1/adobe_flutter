import 'package:freezed_annotation/freezed_annotation.dart';

part 'recent_search.fr.freezed.dart';

part 'recent_search.fr.g.dart';

@freezed
class RecentSearchDTO with _$RecentSearchDTO {
  const factory RecentSearchDTO({
    required List<ItemRecentSearchDTO> items,
    @JsonKey(name: 'total_count') required int totalCount,
  }) = _RecentSearchDTO;

  factory RecentSearchDTO.fromJson(Map<String, dynamic> json) => _$RecentSearchDTOFromJson(json);
}

@freezed
class ItemRecentSearchDTO with _$ItemRecentSearchDTO {
  const factory ItemRecentSearchDTO({
    @JsonKey(name: 'num_results') required String numResults,
    required String name,
    required String url,
  }) = _ItemRecentSearchDTO;

  factory ItemRecentSearchDTO.fromJson(Map<String, dynamic> json) => _$ItemRecentSearchDTOFromJson(json);
}