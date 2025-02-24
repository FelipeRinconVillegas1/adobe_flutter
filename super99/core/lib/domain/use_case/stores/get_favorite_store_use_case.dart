import 'package:core/domain/entity/stores/warehouse_address_entity.fr.dart';
import 'package:core/utils/error_handler/error_handler.dart';
import 'package:dartz/dartz.dart';
import '../../../data/repository/stores/stores_repository.dart';

class GetFavoriteStoreUseCase {
  GetFavoriteStoreUseCase(this._repository);
  final StoresRepository _repository;

  Future<Either<ErrorHandler, WareHouseAddressEntity?>> call() async {
    return await _repository.getFavoriteStore();
  }
}
