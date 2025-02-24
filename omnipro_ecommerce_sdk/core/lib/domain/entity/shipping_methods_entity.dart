import 'package:equatable/equatable.dart';

import '../../utils/constants.dart';

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

  String getNameByLocale(String locale) {
    if (locale == 'es') {
      return name;
    } else if (locale == 'en') {
      if (Constants.shippingMethodPickUpInStore == code) {
        return "Pick up in store";
      } else if (Constants.shippingMethodHomeDelivery == code) {
        return "Home delivery";
      }
    }
    return "";
  }

  @override
  List<Object?> get props => [code];
}
