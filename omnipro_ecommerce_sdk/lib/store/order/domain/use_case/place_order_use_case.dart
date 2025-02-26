import 'package:core/domain/use_case/cart/get_cart_id_use_case.dart';
import 'package:core/local/data/repository/secure_storege_repository.dart';
import 'package:core/local/key_secure_storage.dart';
import 'package:core/utils/error_handler/error_code.dart';
import 'package:core/utils/error_handler/error_handler.dart';
import 'package:dartz/dartz.dart';
import '../../data/repository/order_repository.dart';
import '../entity/order.dart';

class PlaceOrderUseCase {
  final OrderRepository _orderRepository;
  final GetCartIdUseCase _getCartIdUseCase;
  final SecureStorageRepository _secureStorage;

  PlaceOrderUseCase(
    this._orderRepository,
    this._getCartIdUseCase,
    this._secureStorage,
  );

  /// Place order with cart id
  /// if cart id is null get cart id from getCartIdUseCase
  ///
  /// return order number  if success
  Future<Either<ErrorHandler, CustomerOrder>> call({String? customCartId}) async {
    try {
      final cartId = customCartId ?? await _getCartIdUseCase();
      return (await _orderRepository.placeOrder(cartId)).fold((l) => left(l), (r) async {
        await _secureStorage.deleteData(KeySecureStorage.customerCartID);
        await _secureStorage.deleteData(KeySecureStorage.guestCartID);
        return right(r);
      });
    } catch (e, s) {
      return left(ErrorHandlerInternal(
        errorMessage: e.toString(),
        stackTrace: s,
        error: e,
        errorCode: ErrorCode.errorCallingPlaceOrder,
      ));
    }
  }
}
