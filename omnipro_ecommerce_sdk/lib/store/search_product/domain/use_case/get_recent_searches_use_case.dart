import 'package:core/domain/use_case/customer/is_customer_logged_in.dart';
import 'package:core/utils/error_handler/error_code.dart';
import 'package:core/utils/error_handler/error_handler.dart';
import 'package:dartz/dartz.dart';
import '../../data/repository/search_product_respository.dart';
import '../entity/item_recent.dart';

class GetRecentSearchesUseCase {
  GetRecentSearchesUseCase(this._searchProductRepository,this._isCustomerLoggedIn);

  final SearchProductRepository _searchProductRepository;
  final IsCustomerLoggedIn _isCustomerLoggedIn;

  Future<Either<ErrorHandler, List<ItemRecent>>> call() async {
    try {
      bool isCustomer = await _isCustomerLoggedIn.call();
      return await _searchProductRepository.getRecentSearches(isGuestUser: !isCustomer);
    } catch (e, s) {
      return left(
          ErrorHandlerExternal(errorCode: ErrorCode.errorGetSearchRecent, errorMessage: e.toString(), stackTrace: s));
    }
  }
}
