import 'package:core/utils/error_handler/error_handler.dart';
import 'package:dartz/dartz.dart';
import '../../../data/repository/stores/stores_repository.dart';

class SaveFavoriteStoreUseCase {
  SaveFavoriteStoreUseCase(this._repository);
  final StoresRepository _repository;

  Future<Either<ErrorHandler, bool>> call({
    required String code,
  }) async {
    return await _repository.saveFavoriteStore(code);
  }
}
