import 'package:core/data/dto/dropdown_manager/dropdown_option_dto.fr.dart';
import 'package:dartz/dartz.dart';

import '../../../domain/entity/dropdown_manager/options_dropdown_names.dart';
import '../../../utils/error_handler/error_handler.dart';

abstract class DropdownOptionsDatasource {
  Either<ErrorHandler, List<DropdownOptionDTO>> getRemoteOptions(DropdownOptionType optionsName);
}
