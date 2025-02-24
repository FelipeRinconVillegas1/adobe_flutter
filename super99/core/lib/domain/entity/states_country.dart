import 'package:core/domain/entity/state_country_entity.dart';
import 'package:equatable/equatable.dart';

class StatesCountry extends Equatable {
  final List<StateCountryEntity> statesCountry;

  const StatesCountry({
    required this.statesCountry,
  });

  @override
  List<Object?> get props => [statesCountry];
}
