import 'package:equatable/equatable.dart';

class CategoriesExclusiveEntity extends Equatable {
  final String imageUrl;
  final String name;

  const CategoriesExclusiveEntity({
    required this.imageUrl,
    required this.name,
  });

  //Copy with
  CategoriesExclusiveEntity copyWith({
    String? name,
    String? imageUrl,
  }) {
    return CategoriesExclusiveEntity(
      name: name ?? this.name,
      imageUrl: imageUrl ?? this.imageUrl,
    );
  }

  @override
  List<Object?> get props => [name, imageUrl];
}
