import '../repository/active_order_repository.dart';

class SaveActiveOrdersUseCase {
  SaveActiveOrdersUseCase(this._repository);

  final ActiveOrderRepository _repository;

  Future<void> call(String orderId) async {
    await _repository.saveActiveOrder(orderId);
  }
}
