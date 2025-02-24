import 'package:core/data/dto/products_dto.fr.dart';
import 'package:core/utils/error_handler/error_handler.dart';
import 'package:dartz/dartz.dart';

abstract class ProductsDataSource {
  Future<Either<ErrorHandler, ProductsDTO>> getProductsByCategoryUid(String uid);
  Future<Either<ErrorHandler, ProductsDTO>> getProductsBySku(List<String> skus);
  Future<Either<ErrorHandler, ProductsDTO>> getProductsByCategoryUidByFilter(
      {required Map<String, dynamic> filters,
      required int pageSize,
      required int currentPage,
      required Map<String, dynamic> orderProducts});
}
