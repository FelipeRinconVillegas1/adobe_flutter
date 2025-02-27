import 'package:core/utils/error_handler/error_handler.dart';
import 'package:dartz/dartz.dart';
import 'package:core/data/dto/shipping_methods_dto.fr.dart';

abstract class ShippingMethodsDataSource {
  Future<Either<ErrorHandler, ShippingMethodItemDTO>> saveShippingMethodSelected(ShippingMethodItemDTO shippingMethodIemDTO);
  Future<Either<ErrorHandler, ShippingMethodItemDTO?>> getShippingMethodSelected();
}
