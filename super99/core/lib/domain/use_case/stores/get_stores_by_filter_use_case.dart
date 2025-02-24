import 'package:core/data/mapper.dart';
import 'package:core/domain/entity/stores/warehouse_address_entity.fr.dart';
import 'package:core/utils/error_handler/error_handler.dart';
import 'package:dartz/dartz.dart';
import '../../../data/repository/stores/stores_repository.dart';

class GetStoresByFilterUseCase {
  GetStoresByFilterUseCase(this._repository);
  final StoresRepository _repository;

  Future<Either<ErrorHandler, List<WareHouseAddressEntity>>> call({
    required Map<String, dynamic> filters,
    required int pageSize,
    required int currentPage,
    required Map<String, dynamic> sortStores,
  }) async {
    final res = await _repository.getStores(
        filters: filters, pageSize: pageSize, currentPage: currentPage, sortStores: sortStores);
    return res.fold((l) => left(l), (r) => right(r.map((e) => e.toDomain()).toList()));
  }
}