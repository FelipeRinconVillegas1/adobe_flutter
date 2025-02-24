import 'package:core/data/repository/get_simple_flag_repository.dart';
import 'package:core/utils/error_handler/error_handler.dart';
import 'package:dartz/dartz.dart';

class GetSimpleFlagUseCase {
  final GetSimpleFlagRepository _repository;

  GetSimpleFlagUseCase(this._repository);

  /// Get simple flag, return [Either<ErrorHandler, T>] where [T] is the type of the flag
  /// Support type for T: [bool], [int], [double], [String]
  Either<ErrorHandler, T> execute<T>(String key) {
    return _repository.getSimpleFlag<T>(key);
  }
}
