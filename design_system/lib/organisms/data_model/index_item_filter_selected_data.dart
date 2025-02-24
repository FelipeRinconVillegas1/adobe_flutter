import 'package:equatable/equatable.dart';

class IndexItemFilterSelected extends Equatable {
  final int indexParent;
  final int indexChild;
  const IndexItemFilterSelected({required this.indexParent, required this.indexChild});

  @override
  List<Object?> get props => [indexParent, indexChild];
}
