import 'package:core/utils/error_handler/error_handler.dart';
import 'package:dartz/dartz.dart';
import 'package:core/data/repository/shipping_methods/shipping_methods_repository.dart';
import 'package:core/domain/entity/shipping_methods_entity.dart';

class GetShippingMethodsUseCase {
  final ShippingMethodsRepository _shippingMethodsRepository;

  GetShippingMethodsUseCase(this._shippingMethodsRepository);

  Future<Either<ErrorHandler, ShippingMethodsEntity>> call() async {
    return await _shippingMethodsRepository.getShippingMethods();
  }
}
