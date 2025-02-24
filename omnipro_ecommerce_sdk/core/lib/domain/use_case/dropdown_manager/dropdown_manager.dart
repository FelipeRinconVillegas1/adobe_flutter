import 'package:core/utils/error_handler/error_handler.dart';
import 'package:dartz/dartz.dart';

import '../../../data/repository/dropdown_manager/dropdown_options_repository.dart';
import '../../entity/dropdown_manager/options_dropdown_names.dart';

class DropdownOptionsUseCase {
  final DropdownOptionRepository _dropdownRepository;

  DropdownOptionsUseCase(this._dropdownRepository);

  Either<ErrorHandler, List<T>> getOptions<T>(DropdownOptionType optionsName) {
    try {
      final result = _dropdownRepository.getRemoteOptions(optionsName);

      return result.fold(
        (error) => Left(error),
        (options) => Right(options.map((e) => e as T).toList()),
      );
    } catch (e) {
      return Left(ErrorHandlerExternal(errorCode: optionsName.value, errorMessage: e.toString()));
    }
  }
}
