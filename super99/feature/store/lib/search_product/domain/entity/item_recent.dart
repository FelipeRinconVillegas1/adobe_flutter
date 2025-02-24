import 'package:equatable/equatable.dart';

class ItemRecent extends Equatable {
  final String name;
  final String numResults;
  final String url;

  const ItemRecent({
    required this.name,
    required this.numResults,
    required this.url,
  });

  @override
  List<Object?> get props => [name, numResults, url];
}
