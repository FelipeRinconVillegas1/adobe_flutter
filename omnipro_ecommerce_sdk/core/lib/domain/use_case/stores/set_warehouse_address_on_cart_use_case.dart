import 'package:core/domain/entity/stores/warehouse_address_entity.fr.dart';
import 'package:core/utils/error_handler/error_code.dart';
import 'package:core/utils/error_handler/error_handler.dart';
import 'package:dartz/dartz.dart';
import 'package:core/data/repository/cart/cart_repository.dart';

import '../../entity/cart/cart.fr.dart';
import '../../entity/cart/set_shipping_address_oms_options.dart';
import '../../entity/customer.fr.dart';
import '../cart/get_cart_id_use_case.dart';

class SetWarehouseAddressOnCartUseCase {
  SetWarehouseAddressOnCartUseCase(this._cartRepository, this._getCartIdUseCase);

  final CartRepository _cartRepository;
  final GetCartIdUseCase _getCartIdUseCase;

  Future<Either<ErrorHandler, Cart>> call(
    WareHouseAddressEntity wareHouseAddressEntity,
    SetShippingAddressOmsOptions setShippingAddressOmsOptions,
    Customer customerLogged,
  ) async {
    final cartId = await _getCartIdUseCase.call();

    if (cartId.isEmpty) {
      return left(
          ErrorHandlerExternal(errorCode: ErrorCode.emptyCartIdSetShippingAddress, errorMessage: "Cart id is empty"));
    }

    return _cartRepository.setWarehouseAddressOnCart(wareHouseAddressEntity, cartId,
        setShippingAddressOmsOptions: setShippingAddressOmsOptions, customerLogged: customerLogged);
  }
}
