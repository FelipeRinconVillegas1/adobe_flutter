import 'package:core/domain/entity/products.dart';
import 'package:core/utils/error_handler/error_handler.dart';
import 'package:dartz/dartz.dart';
import 'package:core/data/repository/products/products_repository.dart';

class GetProductsByCategoryUidFilterUseCase {
  GetProductsByCategoryUidFilterUseCase(this._productRepository);
  final ProductsRepository _productRepository;

  Future<Either<ErrorHandler, Products>> call(
      {required Map<String, dynamic> filters,
      required int pageSize,
      required int currentPage,
      required Map<String, dynamic> orderProducts}) async {
    return await _productRepository.getProductsByCategoryUidByFilter(
        currentPage: currentPage, filters: filters, orderProducts: orderProducts, pageSize: pageSize);
  }
}
