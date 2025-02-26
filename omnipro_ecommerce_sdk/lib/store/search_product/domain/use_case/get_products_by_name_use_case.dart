import 'package:core/domain/entity/products_search_entity.dart';
import 'package:core/utils/error_handler/error_code.dart';
import 'package:core/utils/error_handler/error_handler.dart';
import 'package:dartz/dartz.dart';
import '../../data/repository/search_product_respository.dart';

class GetProductsByNameUseCase {
  final SearchProductRepository _searchProductRepository;

  GetProductsByNameUseCase(this._searchProductRepository);

  Future<Either<ErrorHandler, ProductsSearch>> call(String productName) async {
    try {
      return await _searchProductRepository.getProductsByName(productName);
    } catch (e) {
      return left(ErrorHandlerExternal(errorCode: ErrorCode.errorGetSearchProduct, errorMessage: e.toString()));
    }
  }
}
