import 'package:equatable/equatable.dart';

class StoreConfigEntity extends Equatable{
  StoreConfigEntity({required this.cybersourceAllowedCcTypes});

  final List<String> cybersourceAllowedCcTypes;

  @override
  List<Object?> get props => [cybersourceAllowedCcTypes];
}