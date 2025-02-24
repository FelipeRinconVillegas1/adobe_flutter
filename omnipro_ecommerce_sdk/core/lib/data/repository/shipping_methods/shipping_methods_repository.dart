import 'package:core/utils/error_handler/error_handler.dart';
import 'package:dartz/dartz.dart';
import 'package:core/domain/entity/shipping_methods_entity.dart';

abstract class ShippingMethodsRepository {
  Future<Either<ErrorHandler, ShippingMethodsEntity>> getShippingMethods();
  Future<Either<ErrorHandler, ShippingMethodItemEntity>> saveShippingMethodSelected(ShippingMethodItemEntity shippingMethodIemDTO);
  Future<Either<ErrorHandler, ShippingMethodItemEntity?>> getShippingMethodSelected();
}
