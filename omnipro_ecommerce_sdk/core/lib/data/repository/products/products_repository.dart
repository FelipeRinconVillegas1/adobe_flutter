import 'package:core/domain/entity/products.dart';
import 'package:core/utils/error_handler/error_handler.dart';
import 'package:dartz/dartz.dart';

abstract class ProductsRepository {
  Future<Either<ErrorHandler, Products>> getProductsByCategoryUid(String uid);
  Future<Either<ErrorHandler, Products>> getProductsByCategoryUidByFilter(
      {required Map<String, dynamic> filters,
      required int pageSize,
      required int currentPage,
      required Map<String, dynamic> orderProducts});
  Future<Either<ErrorHandler, Products>> getProductsBySku(List<String> sku);
}
