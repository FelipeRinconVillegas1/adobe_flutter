import 'package:dartz/dartz.dart';
import '../../../domain/entity/stores/warehouse_address_entity.fr.dart';
import '../../../utils/error_handler/error_handler.dart';
import '../../dto/cart/warehouse_address_dto.fr.dart';

abstract class StoresDatasource {
  Future<Either<ErrorHandler, List<WareHouseAddressDTO>>> getStoresDatasource({
    required Map<String, dynamic> filters,
    required int pageSize,
    required int currentPage,
    required Map<String, dynamic> sortStores,
  });

  Future<void> saveWareHousePickUp(WareHouseAddressEntity customerAddress);

  Future<Either<ErrorHandler, WareHouseAddressEntity?>> getLocalWareHousePickUp();

  Future<Either<ErrorHandler,bool>> saveFavoriteStore(String code);

  Future<Either<ErrorHandler, WareHouseAddressDTO?>> getFavoriteStore();
}
