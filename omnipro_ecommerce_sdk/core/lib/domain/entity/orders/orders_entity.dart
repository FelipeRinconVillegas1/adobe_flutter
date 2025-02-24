import 'package:core/domain/entity/cart/cart.fr.dart';
import 'package:equatable/equatable.dart';

import 'order_item_entity.dart';

class OrdersEntity extends Equatable {
  const OrdersEntity({required this.items, required this.pageInfo});

  final OrderPageInfoEntity pageInfo;
  final List<OrderItemEntity> items;

  @override
  List<Object?> get props => [items];
}

class OrderPageInfoEntity extends Equatable {
  const OrderPageInfoEntity({required this.totalPages});

  final int totalPages;

  @override
  List<Object?> get props => [totalPages];
}

class ReorderItemsEntity extends Equatable {
  const ReorderItemsEntity({required this.cart, required this.userInputErrors});

  final Cart cart;
  final List<UserInputErrorEntity> userInputErrors;

  @override
  List<Object?> get props => [cart, userInputErrors];
}

class UserInputErrorEntity extends Equatable {
  const UserInputErrorEntity({required this.message, required this.code, required this.path});

  final String message;
  final String code;
  final List<String> path;

  @override
  List<Object?> get props => [message, code, path];
}
