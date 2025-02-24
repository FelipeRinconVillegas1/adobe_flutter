import 'package:core/data/repository/cart/cart_repository.dart';
import 'package:core/domain/entity/cart/enabled_shipping_method.dart';
import 'package:core/utils/error_handler/error_handler.dart';
import 'package:dartz/dartz.dart';

class GetEnabledShippingMethodsUseCase {
  final CartRepository _cartRepository;

  GetEnabledShippingMethodsUseCase(this._cartRepository);

  Future<Either<ErrorHandler, List<EnabledShippingMethod>>> execute() async {
    return _cartRepository.getEnabledShippingMethods();
  }
}
