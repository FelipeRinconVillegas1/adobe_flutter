import 'package:equatable/equatable.dart';

class ItemFilterData extends Equatable {
  String option;
  int count;
  String value;
  ItemFilterData({required this.option, required this.count, required this.value});

  @override
  List<Object?> get props => [option, count, value];
}
