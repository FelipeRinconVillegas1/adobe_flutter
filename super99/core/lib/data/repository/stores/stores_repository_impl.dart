import 'package:core/data/dto/cart/warehouse_address_dto.fr.dart';
import 'package:core/data/repository/stores/stores_repository.dart';
import 'package:core/domain/entity/stores/last_store_in_compute_entity.fr.dart';
import 'package:core/domain/entity/stores/warehouse_address_entity.fr.dart';
import 'package:core/utils/error_handler/error_handler.dart';
import 'package:dartz/dartz.dart';
import 'package:core/data/mapper.dart';

import '../../datasource/stores/stores_datasource.dart';

class StoresRepositoryImpl implements StoresRepository {
  StoresRepositoryImpl(this._storesDatasource);

  final StoresDatasource _storesDatasource;

  @override
  Future<Either<ErrorHandler, List<WareHouseAddressDTO>>> getStores(
      {required Map<String, dynamic> filters,
      required int pageSize,
      required int currentPage,
      required Map<String, dynamic> sortStores}) {
    return _storesDatasource.getStoresDatasource(
        filters: filters, pageSize: pageSize, currentPage: currentPage, sortStores: sortStores);
  }

  @override
  Future<Either<ErrorHandler, LastStoreInComputeEntity?>> getLastStoreInCompute() {
    return _storesDatasource.getLastStoreInCompute();
  }

  @override
  Future<void> saveLastStoreInCompute(LastStoreInComputeEntity lastStoreInComputeEntity) {
    return _storesDatasource.saveLastStoreInCompute(lastStoreInComputeEntity);
  }

  @override
  Future<Either<ErrorHandler, WareHouseAddressEntity?>> getLocalWareHousePickUp() {
    return _storesDatasource.getLocalWareHousePickUp();
  }

  @override
  Future<void> saveWareHousePickUp(WareHouseAddressEntity customerAddress) {
    return _storesDatasource.saveWareHousePickUp(customerAddress);
  }

  @override
  Future<Either<ErrorHandler, WareHouseAddressEntity?>> getFavoriteStore() async {
    final res = await _storesDatasource.getFavoriteStore();
    return res.fold((l) => left(l), (r) => right(r?.toDomain()));
  }

  @override
  Future<Either<ErrorHandler, bool>> saveFavoriteStore(String code) {
    return _storesDatasource.saveFavoriteStore(code);
  }
}
