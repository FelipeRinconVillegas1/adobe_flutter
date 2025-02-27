import 'package:core/data/mapper.dart';
import 'package:core/utils/error_handler/error_handler.dart';
import 'package:dartz/dartz.dart';
import 'package:core/data/datasource/shipping_methods/shipping_methods_datasource.dart';
import 'package:core/data/repository/shipping_methods/shipping_methods_repository.dart';
import 'package:core/domain/entity/shipping_methods_entity.dart';

class ShippingMethodsRepositoryImpl implements ShippingMethodsRepository {
  ShippingMethodsRepositoryImpl(this._shippingMethodsDataSource);

  final ShippingMethodsDataSource _shippingMethodsDataSource;

  @override
  Future<Either<ErrorHandler, ShippingMethodItemEntity?>> getShippingMethodSelected() async {
    final result = await _shippingMethodsDataSource.getShippingMethodSelected();
    return result.fold((l) => left(l), (r) => right(r?.toDomain()));
  }

  @override
  Future<Either<ErrorHandler, ShippingMethodItemEntity>> saveShippingMethodSelected(
      ShippingMethodItemEntity shippingMethodIemDTO) async {
    final result = await _shippingMethodsDataSource.saveShippingMethodSelected(shippingMethodIemDTO.toDTO());
    return result.fold((l) => left(l), (r) => right(r.toDomain()));
  }
}
