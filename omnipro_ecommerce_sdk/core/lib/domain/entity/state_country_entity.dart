import 'package:equatable/equatable.dart';

class StateCountryEntity extends Equatable {
  final int id;
  final String name;
  final String code;
  const StateCountryEntity({
    required this.id,
    required this.name,
    required this.code,
  });

  @override
  List<Object?> get props => [id, name, code];
}
