import 'package:core/data/mapper.dart';
import 'package:core/data/repository/dropdown_manager/dropdown_options_repository.dart';
import 'package:core/domain/entity/dropdown_manager/options_dropdown_names.dart';
import 'package:core/utils/error_handler/error_handler.dart';
import 'package:dartz/dartz.dart';

import '../../../domain/entity/dropdown_manager/dropdown_option.dart';
import '../../datasource/dropdown_manager/dropdown_options_datasource.dart';

class DropdownOptionRepositoryImpl extends DropdownOptionRepository {
  final DropdownOptionsDatasource dropdownOptionsDatasource;

  DropdownOptionRepositoryImpl(this.dropdownOptionsDatasource);

  @override
  Either<ErrorHandler, List<DropdownOption>> getRemoteOptions(DropdownOptionType optionsName) {
    final result = dropdownOptionsDatasource.getRemoteOptions(optionsName);

    return result.fold(
      (error) => Left(error),
      (options) => Right(options.map((e) => e.toDomain()).toList()),
    );
  }
}
