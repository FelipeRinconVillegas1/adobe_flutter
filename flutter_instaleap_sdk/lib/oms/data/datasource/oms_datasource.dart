import 'package:dartz/dartz.dart';
import 'package:omni_adobe_core/utils/error_handler/error_handler.dart';
import '../../domain/entity/input_stock_product.fr.dart';
import '../dto/check_slot_response_dto.fr.dart';
import '../dto/response_stock_product_dto.fr.dart';

abstract class OmsDatasource {
  Future<Either<ErrorHandler, T>> checkAvailabilitySlots<T, K>({required K payload});
  Future<Either<ErrorHandler, CheckSlotResponseDTO>> checkSlot({required String slotId});
  Future<Either<ErrorHandler, bool>> saveSelectedSlot({required String slotId,required String cartId});
  Future<Either<ErrorHandler, ResponseStockProductDTO>> getStock({required InputStockProduct payload});
}
