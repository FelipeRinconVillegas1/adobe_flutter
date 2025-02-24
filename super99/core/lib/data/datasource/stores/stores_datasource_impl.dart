import 'dart:convert';

import 'package:core/data/datasource/stores/stores_datasource.dart';
import 'package:core/data/datasource/stores/stores_mutation.dart';
import 'package:core/data/datasource/stores/stores_query.dart';
import 'package:core/data/dto/cart/warehouse_address_dto.fr.dart';
import 'package:core/domain/entity/stores/last_store_in_compute_entity.fr.dart';
import 'package:core/utils/error_handler/error_handler.dart';
import 'package:dartz/dartz.dart';
import '../../../domain/entity/stores/warehouse_address_entity.fr.dart';
import '../../../local/data/datasource/secure_storage_datasource.dart';
import '../../../local/key_secure_storage.dart';
import '../../../network/graphql/graphql_service.dart';
import '../../../utils/error_handler/error_code.dart';
import '../secure_call_datasource.dart';

class StoresDatasourceImpl implements StoresDatasource {
  StoresDatasourceImpl(this._graphQLServiceNoAuthenticated, this._secureStorageDatasource, this._graphQLService);

  final GraphQLService _graphQLServiceNoAuthenticated;
  final GraphQLService _graphQLService;
  final SecureStorageDatasource _secureStorageDatasource;

  @override
  Future<Either<ErrorHandler, List<WareHouseAddressDTO>>> getStoresDatasource({
    required Map<String, dynamic> filters,
    required int pageSize,
    required int currentPage,
    required Map<String, dynamic> sortStores,
  }) async {
    return await secureServerCall(
      () async {
        final String query = getWarehousesQuery();
        final response = await _graphQLServiceNoAuthenticated.query(query,
            variables: {"pageSize": pageSize, "currentPage": currentPage, "filter": filters, 'sort': sortStores});

        return response.fold(
          (l) => left(l),
          (productsData) {
            final listItems = productsData.data!['warehouses']['items'] as List;
            final List<WareHouseAddressDTO> listWareHouseAddressDTO =
                listItems.map((e) => WareHouseAddressDTO.fromJson(e)).toList();
            return right(listWareHouseAddressDTO);
          },
        );
      },
    );
  }

  @override
  Future<void> saveLastStoreInCompute(LastStoreInComputeEntity lastStoreInComputeEntity) async {
    await _secureStorageDatasource.saveData(KeySecureStorage.lastStoreInCompute, jsonEncode(lastStoreInComputeEntity));
  }

  @override
  Future<Either<ErrorHandler, LastStoreInComputeEntity?>> getLastStoreInCompute() async {
    try {
      if (await _secureStorageDatasource.existData(KeySecureStorage.lastStoreInCompute)) {
        final data = await _secureStorageDatasource.getData(KeySecureStorage.lastStoreInCompute);
        return Right(LastStoreInComputeEntity.fromJson(jsonDecode(data)));
      } else {
        return right(null);
      }
    } catch (e, s) {
      return left(ErrorHandlerExternal(
          errorCode: ErrorCode.errorGetLastStoreInCompute, errorMessage: e.toString(), stackTrace: s));
    }
  }

  @override
  Future<Either<ErrorHandler, WareHouseAddressEntity?>> getLocalWareHousePickUp() async {
    try {
      if (await _secureStorageDatasource.existData(KeySecureStorage.addressPickupSelected)) {
        final data = await _secureStorageDatasource.getData(KeySecureStorage.addressPickupSelected);
        return Right(WareHouseAddressEntity.fromJson(jsonDecode(data)));
      } else {
        return right(null);
      }
    } catch (e) {
      return left(
          ErrorHandlerExternal(errorCode: ErrorCode.errorGetCustomerAddressPickUpSelected, errorMessage: e.toString()));
    }
  }

  @override
  Future<void> saveWareHousePickUp(WareHouseAddressEntity wareHouseAddressEntity) async {
    await _secureStorageDatasource.saveData(KeySecureStorage.addressPickupSelected, jsonEncode(wareHouseAddressEntity));
  }

  @override
  Future<Either<ErrorHandler, WareHouseAddressDTO?>> getFavoriteStore() async {
    return await secureServerCall(
      () async {
        final String query = getFavoriteStoreQuery();
        final response = await _graphQLService.query(query);

        return response.fold(
          (l) => left(l),
          (productsData) {
            if(productsData.data?['favoriteStore'] == null){
              return right(null);
            }
            return right(WareHouseAddressDTO.fromJson(productsData.data!['favoriteStore']['item']));
          },
        );
      },
    );
  }

  @override
  Future<Either<ErrorHandler, bool>> saveFavoriteStore(String code) async {
    return await secureServerCall(
      () async {
        final String query = saveFavoriteStoreMutation(code);
        final response = await _graphQLService.query(query);

        return response.fold(
          (l) {
            return left(l);
          },
          (storeSaveData) {
            final result = storeSaveData.data!['saveFavoriteStore']["success"];
            return right(result);
          },
        );
      },
    );
  }
}
