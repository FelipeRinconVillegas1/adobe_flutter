import 'package:equatable/equatable.dart';

class ShippingMethodsEntity extends Equatable {
  const ShippingMethodsEntity({
    required this.items,
  });
  final List<ShippingMethodItemEntity> items;

  @override
  List<Object?> get props => [items];
}

class ShippingMethodItemEntity extends Equatable {
  const ShippingMethodItemEntity({
    required this.code,
    required this.name,
    required this.message,
  });

  final String code;
  final String name;
  final String message;

  @override
  List<Object?> get props => [code];
}
