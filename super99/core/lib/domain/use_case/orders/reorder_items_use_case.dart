import 'package:core/data/repository/orders/orders_repository.dart';
import 'package:core/domain/entity/orders/orders_entity.dart';
import 'package:core/utils/error_handler/error_handler.dart';
import 'package:dartz/dartz.dart';

class ReorderItemsUseCase {
  ReorderItemsUseCase(this._ordersRepository);

  final OrdersRepository _ordersRepository;

  Future<Either<ErrorHandler, ReorderItemsEntity>> call(String orderNumber) {
    return _ordersRepository.reorderItems(orderNumber);
  }
}
