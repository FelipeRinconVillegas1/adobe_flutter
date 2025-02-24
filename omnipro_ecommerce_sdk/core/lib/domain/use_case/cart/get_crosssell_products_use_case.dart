import 'package:core/domain/entity/products.dart';
import 'package:core/utils/error_handler/error_handler.dart';
import 'package:dartz/dartz.dart';
import 'package:core/data/repository/cart/cart_repository.dart';

class GetCrossSellProductsUseCase {
  final CartRepository _cartRepository;

  GetCrossSellProductsUseCase(this._cartRepository);

  Future<Either<ErrorHandler, List<ProductsItems>>> execute({required List<String> skus}) async {
    return _cartRepository.getCrossSellingProducts(skus: skus);
  }
}
