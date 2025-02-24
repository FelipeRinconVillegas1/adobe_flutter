import 'package:core/domain/use_case/customer/is_customer_logged_in.dart';
import 'package:core/utils/error_handler/error_code.dart';
import 'package:core/utils/error_handler/error_handler.dart';
import 'package:dartz/dartz.dart';
import 'package:store/search_product/data/repository/search_product_respository.dart';
import 'package:store/search_product/domain/entity/item_popular.dart';

class GetPopularSearchesUseCase {
  GetPopularSearchesUseCase(this._searchProductRepository,this._isCustomerLoggedIn);

  final SearchProductRepository _searchProductRepository;
  final IsCustomerLoggedIn _isCustomerLoggedIn;

  Future<Either<ErrorHandler, List<ItemPopular>>> call() async {
    try {
      bool isCustomer = await _isCustomerLoggedIn.call();
      return await _searchProductRepository.getPopularSearches(isGuestUser: !isCustomer);
    } catch (e, s) {
      return left(
          ErrorHandlerExternal(errorCode: ErrorCode.errorGetSearchPopular, errorMessage: e.toString(), stackTrace: s));
    }
  }
}
