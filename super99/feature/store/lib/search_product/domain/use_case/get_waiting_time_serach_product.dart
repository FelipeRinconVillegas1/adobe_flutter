import 'package:core/utils/error_handler/error_code.dart';
import 'package:core/utils/error_handler/error_handler.dart';
import 'package:dartz/dartz.dart';
import 'package:store/search_product/data/repository/search_product_respository.dart';

class GetWaitingTimeSearchProductsUseCase {
  final SearchProductRepository _searchProductRepository;

  GetWaitingTimeSearchProductsUseCase(this._searchProductRepository);

  Future<Either<ErrorHandler, int>> call() async {
    try {
      return await _searchProductRepository.getWaitingTimeSearchProduct();
    } catch (e) {
      return left(ErrorHandlerExternal(errorCode: ErrorCode.errorGetWaitingTimeSearch, errorMessage: e.toString()));
    }
  }
}
