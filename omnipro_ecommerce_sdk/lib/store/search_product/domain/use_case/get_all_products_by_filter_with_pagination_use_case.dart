import 'package:core/domain/entity/products.dart';
import 'package:core/utils/error_handler/error_code.dart';
import 'package:core/utils/error_handler/error_handler.dart';
import 'package:dartz/dartz.dart';
import '../../data/repository/search_product_respository.dart';

class GetAllProductsByFilterWithPaginationUseCase {
  GetAllProductsByFilterWithPaginationUseCase(this._searchProductRepository);

  final SearchProductRepository _searchProductRepository;

  Future<Either<ErrorHandler, Products>> call(
      {required String productName,
      required Map<String, dynamic> filters,
      required Map<String, dynamic> orderProducts,
      required int pageSize,
      required int currentPage}) async {
    try {
      return await _searchProductRepository.getProductsByFilterWithPagination(
          productName: productName,
          filters: filters,
          pageSize: pageSize,
          currentPage: currentPage,
          orderProducts: orderProducts);
    } catch (e) {
      return left(ErrorHandlerExternal(errorCode: ErrorCode.errorGetAllProducts, errorMessage: e.toString()));
    }
  }
}
