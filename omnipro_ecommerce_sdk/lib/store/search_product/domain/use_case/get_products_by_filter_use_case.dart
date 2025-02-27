import 'package:core/domain/entity/products.dart';
import 'package:core/utils/error_handler/error_code.dart';
import 'package:core/utils/error_handler/error_handler.dart';
import 'package:dartz/dartz.dart';
import '../../data/repository/search_product_respository.dart';

class GetProductsByFilterUseCase {
  GetProductsByFilterUseCase(this._searchProductRepository);

  final SearchProductRepository _searchProductRepository;

  Future<Either<ErrorHandler, Products>> call({
    required String productName,
    required Map<String, dynamic> filters,
    required Map<String, dynamic> orderProducts,
  }) async {
    try {
      return await _searchProductRepository.getProductsByFilter(productName, filters, orderProducts);
    } catch (e, s) {
      return left(
          ErrorHandlerExternal(errorCode: ErrorCode.errorGetSearchProduct, errorMessage: e.toString(), stackTrace: s));
    }
  }
}
