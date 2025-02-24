import 'package:core/utils/error_handler/error_handler.dart';
import 'package:dartz/dartz.dart';
import 'package:core/data/repository/shipping_methods/shipping_methods_repository.dart';
import 'package:core/domain/entity/shipping_methods_entity.dart';

class SaveShippingMethodUseCase {
  SaveShippingMethodUseCase(this._shippingMethodsRepository);

  final ShippingMethodsRepository _shippingMethodsRepository;

  Future<Either<ErrorHandler, ShippingMethodItemEntity>> call(ShippingMethodItemEntity shippingMethodItemEntity) async{
    return await _shippingMethodsRepository.saveShippingMethodSelected(shippingMethodItemEntity);
  }
}
