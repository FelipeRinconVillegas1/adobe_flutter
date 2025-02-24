import 'package:core/domain/entity/cart/appointment_selected_entity.dart';
import 'package:core/utils/error_handler/error_code.dart';
import 'package:core/utils/error_handler/error_handler.dart';
import 'package:core/data/repository/cart/cart_repository.dart';
import 'package:dartz/dartz.dart';
import 'get_cart_id_use_case.dart';

class SetAppointmentOnCartUseCase {
  final CartRepository _cartRepository;
  final GetCartIdUseCase _getCartIdUseCase;

  SetAppointmentOnCartUseCase(this._cartRepository, this._getCartIdUseCase);

  Future<Either<ErrorHandler, AppointmentSelectedEntity>> call(
      AppointmentSelectedEntity appointmentOnCartEntity) async {
    final cartId = await _getCartIdUseCase.call();

    if (cartId.isEmpty) {
      return left(
          ErrorHandlerExternal(errorCode: ErrorCode.emptyCartIdSetBillingAddress, errorMessage: "Cart id is empty"));
    }

    return await _cartRepository.setAppointmentInformationOnCart(appointmentOnCartEntity: appointmentOnCartEntity);
  }
}
