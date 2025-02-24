import 'dart:convert';

import 'package:core/data/datasource/remote_config_datasource.dart';
import 'package:core/data/dto/dropdown_manager/dropdown_option_dto.fr.dart';
import 'package:core/domain/entity/dropdown_manager/options_dropdown_names.dart';
import 'package:core/utils/error_handler/error_handler.dart';
import 'package:dartz/dartz.dart';
import 'dropdown_options_datasource.dart';

class DropdownOptionsDatasourceImpl implements DropdownOptionsDatasource {
  final RemoteConfigDataSource _remoteCondigService;

  DropdownOptionsDatasourceImpl(this._remoteCondigService);

  @override
  Either<ErrorHandler, List<DropdownOptionDTO>> getRemoteOptions(DropdownOptionType optionsName) {
    try {
      String jsonResult = _remoteCondigService.getString(optionsName.value);

      if (jsonResult.isNotEmpty) {
        final Map<String, dynamic> json = jsonDecode(jsonResult);

        final String type = json['type'];

        late List<dynamic> options;

        if (optionsName == DropdownOptionType.countryCodes) {
          options = _countryCodeConvertMap(json);
        } else {
          options = json['options'];
        }

        ///Add type each option
        for (var element in options) {
          element['runtimeType'] = type;
        }

        List<DropdownOptionDTO> dropdownOptions = options.map((e) => DropdownOptionDTO.fromJson(e)).toList();

        return Right(dropdownOptions);
      } else {
        return Left(ErrorHandlerExternal(
            errorCode: optionsName.value,
            errorMessage: 'Error getting options from remote config ${optionsName.value}}'));
      }
    } catch (e) {
      return Left(ErrorHandlerExternal(errorCode: optionsName.value, errorMessage: e.toString()));
    }
  }

  List<dynamic> _countryCodeConvertMap(Map<String, dynamic> inputMap) {
    List<dynamic> originalList = inputMap['options'];

    List<dynamic> convertedList = originalList.map((item) {
      String countryCode = item['dial_code'].replaceAll(RegExp(r'\D'), '');
      return {
        'nameEs': item['name'],
        'nameEn': item['name'],
        'countryCode': countryCode,
        'code': item['code'],
      };
    }).toList();

    // Crear el mapa final que contiene la lista convertida
    return convertedList;
  }
}
