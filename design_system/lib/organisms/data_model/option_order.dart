enum OptionOrder {
  relevanceAsc,
  relevanceDesc,
  priceLowToHigh,
  priceHighToLow,
  nameAToZ,
  nameZToA,
  positionAsc,
  positionDesc
}

enum OrderDirecction { asc, desc }

enum OrderKeyValue { relevance, price, name, position }

OptionOrder getOrderFromDirectionAndKey(OrderDirecction direction, OrderKeyValue key) {
  switch (key) {
    case OrderKeyValue.relevance:
      return direction == OrderDirecction.asc ? OptionOrder.relevanceAsc : OptionOrder.relevanceDesc;
    case OrderKeyValue.price:
      return direction == OrderDirecction.asc ? OptionOrder.priceLowToHigh : OptionOrder.priceHighToLow;
    case OrderKeyValue.name:
      return direction == OrderDirecction.asc ? OptionOrder.nameAToZ : OptionOrder.nameZToA;
    case OrderKeyValue.position:
      return direction == OrderDirecction.asc ? OptionOrder.positionAsc : OptionOrder.positionDesc;
  }
}

extension OrderDirecctionExtension on OrderDirecction {
  String get value {
    switch (this) {
      case OrderDirecction.asc:
        return 'ASC';
      case OrderDirecction.desc:
        return 'DESC';
    }
  }
}

extension OrderKeyValueExtension on OrderKeyValue {
  String get value {
    switch (this) {
      case OrderKeyValue.relevance:
        return 'relevance';
      case OrderKeyValue.price:
        return 'price';
      case OrderKeyValue.name:
        return 'name';
      case OrderKeyValue.position:
        return 'position';
    }
  }
}

extension OptionOrderExtension on OptionOrder {
  String get value {
    switch (this) {
      case OptionOrder.relevanceAsc:
      case OptionOrder.relevanceDesc:
        return OrderKeyValue.relevance.value;
      case OptionOrder.priceLowToHigh:
      case OptionOrder.priceHighToLow:
        return OrderKeyValue.price.value;
      case OptionOrder.nameAToZ:
      case OptionOrder.nameZToA:
        return OrderKeyValue.name.value;
      case OptionOrder.positionAsc:
      case OptionOrder.positionDesc:
        return OrderKeyValue.position.value;
    }
  }

  String get direction {
    switch (this) {
      case OptionOrder.relevanceAsc:
        return OrderDirecction.asc.value;
      case OptionOrder.relevanceDesc:
        return OrderDirecction.desc.value;
      case OptionOrder.priceLowToHigh:
        return OrderDirecction.asc.value;
      case OptionOrder.priceHighToLow:
        return OrderDirecction.desc.value;
      case OptionOrder.nameAToZ:
        return OrderDirecction.asc.value;
      case OptionOrder.nameZToA:
        return OrderDirecction.desc.value;
      case OptionOrder.positionAsc:
        return OrderDirecction.asc.value;
      case OptionOrder.positionDesc:
        return OrderDirecction.desc.value;
    }
  }

  OrderKeyValue get valueEnum {
    switch (this) {
      case OptionOrder.relevanceAsc:
      case OptionOrder.relevanceDesc:
        return OrderKeyValue.relevance;
      case OptionOrder.priceLowToHigh:
      case OptionOrder.priceHighToLow:
        return OrderKeyValue.price;
      case OptionOrder.nameAToZ:
      case OptionOrder.nameZToA:
        return OrderKeyValue.name;
      case OptionOrder.positionAsc:
      case OptionOrder.positionDesc:
        return OrderKeyValue.position;
    }
  }

  OrderDirecction get directionEnum {
    switch (this) {
      case OptionOrder.relevanceAsc:
        return OrderDirecction.asc;
      case OptionOrder.relevanceDesc:
        return OrderDirecction.desc;
      case OptionOrder.priceLowToHigh:
        return OrderDirecction.asc;
      case OptionOrder.priceHighToLow:
        return OrderDirecction.desc;
      case OptionOrder.nameAToZ:
        return OrderDirecction.asc;
      case OptionOrder.nameZToA:
        return OrderDirecction.desc;
      case OptionOrder.positionAsc:
        return OrderDirecction.asc;
      case OptionOrder.positionDesc:
        return OrderDirecction.desc;
    }
  }

  Map<String, dynamic> get toMap {
    return {value: direction};
  }
}
