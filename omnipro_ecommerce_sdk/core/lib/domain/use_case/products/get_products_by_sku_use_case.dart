import 'package:core/domain/entity/products.dart';
import 'package:core/utils/error_handler/error_handler.dart';
import 'package:dartz/dartz.dart';
import 'package:core/data/repository/products/products_repository.dart';

class GetProductsBySkuUseCase {
  GetProductsBySkuUseCase(this._productsRepository);

  final ProductsRepository _productsRepository;

  Future<Either<ErrorHandler, Products>> call(List<String> sku) async {
    return await _productsRepository.getProductsBySku(sku);
  }
}
