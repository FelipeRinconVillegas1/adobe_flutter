import 'package:core/data/dto/products_mapper.dart';
import 'package:core/domain/entity/products.dart';
import 'package:core/utils/error_handler/error_handler.dart';
import 'package:dartz/dartz.dart';
import 'package:core/data/repository/products/products_repository.dart';
import '../../datasource/product/producst_data_source.dart';

class ProductsRepositoryImpl implements ProductsRepository {
  ProductsRepositoryImpl(this._productsDataSource);

  final ProductsDataSource _productsDataSource;

  @override
  Future<Either<ErrorHandler, Products>> getProductsByCategoryUid(String uid) async {
    final result = await _productsDataSource.getProductsByCategoryUid(uid);
    return result.fold((l) => left(l), (r) => right(r.toDomain()));
  }

  @override
  Future<Either<ErrorHandler, Products>> getProductsBySku(List<String> sku) async {
    final result = await _productsDataSource.getProductsBySku(sku);
    return result.fold((l) => left(l), (r) => right(r.toDomain()));
  }

  @override
  Future<Either<ErrorHandler, Products>> getProductsByCategoryUidByFilter(
      {required Map<String, dynamic> filters,
      required int pageSize,
      required int currentPage,
      required Map<String, dynamic> orderProducts}) async {
    final result = await _productsDataSource.getProductsByCategoryUidByFilter(
        currentPage: currentPage, filters: filters, orderProducts: orderProducts, pageSize: pageSize);
    return result.fold((l) => left(l), (r) => right(r.toDomain()));
  }
}
