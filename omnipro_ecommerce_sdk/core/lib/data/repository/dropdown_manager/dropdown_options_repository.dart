import 'package:core/utils/error_handler/error_handler.dart';
import 'package:dartz/dartz.dart';
import '../../../domain/entity/dropdown_manager/dropdown_option.dart';
import '../../../domain/entity/dropdown_manager/options_dropdown_names.dart';

abstract class DropdownOptionRepository {
  Either<ErrorHandler, List<DropdownOption>> getRemoteOptions(DropdownOptionType optionsName);
}
