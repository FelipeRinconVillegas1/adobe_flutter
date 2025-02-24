import 'package:core/domain/entity/dropdown_manager/dropdown_option.dart';
import 'package:core/domain/entity/dropdown_manager/options_dropdown_names.dart';
import 'package:core/domain/use_case/dropdown_manager/dropdown_manager.dart';
import 'package:collection/collection.dart';

class DropdownManager {
  static final DropdownManager _instance = DropdownManager._internal();
  late DropdownOptionsUseCase _dropdownOptionsManager;
  late Map<String, List<DropdownOption>> _state;

  factory DropdownManager() => _instance;

  DropdownManager._internal();

  void initialize(DropdownOptionsUseCase dropdownOptionsManager) {
    _dropdownOptionsManager = dropdownOptionsManager;
    _state = {
      DropdownOptionType.countryCodes.name: _loadOptions(DropdownOptionType.countryCodes),
      DropdownOptionType.genders.name: _loadOptions(DropdownOptionType.genders),
      DropdownOptionType.providences.name: _loadOptions(DropdownOptionType.providences),
      DropdownOptionType.maritalStates.name: _loadOptions(DropdownOptionType.maritalStates),
      DropdownOptionType.buyingPreferences.name: _loadOptions(DropdownOptionType.buyingPreferences),
      DropdownOptionType.howHeardAboutLoyaltyProgram.name: _loadOptions(DropdownOptionType.howHeardAboutLoyaltyProgram),
      DropdownOptionType.documentTypes.name: _loadOptions(DropdownOptionType.documentTypes),
      DropdownOptionType.cities.name: _loadOptions(DropdownOptionType.cities),
      DropdownOptionType.zones.name: _loadOptions(DropdownOptionType.zones),
      DropdownOptionType.states.name: _loadOptions(DropdownOptionType.states),
    };
  }

  List<DropdownOption> _loadOptions(DropdownOptionType optionsName) {
    final result = _dropdownOptionsManager.getOptions<DropdownOption>(optionsName);
    return result.fold(
      (error) => [],
      (options) => options,
    );
  }

  List<DropdownOption> getOptions(DropdownOptionType optionsName) {
    final cacheResult = _state[optionsName.name];
    if (cacheResult != null && cacheResult.isNotEmpty) {
      return cacheResult;
    }

    final result = _loadOptions(optionsName);
    if (result.isNotEmpty) {
      _state[optionsName.name] = result;
    }

    return result;
  }


  DropdownOption? findStateByCode(String? code) {
    final result = getOptions(DropdownOptionType.states);
    return result.firstWhereOrNull((element) => element.code == code);
  }

  DropdownOption? findCityByCode(String? code) {
    final result = getOptions(DropdownOptionType.cities);
    return result.firstWhereOrNull((element) => element.code == code);
  }

  DropdownOption? findZoneByCode(String? code) {
    final result = getOptions(DropdownOptionType.zones);
    return result.firstWhereOrNull((element) => element.code == code);
  }
}
