import 'package:equatable/equatable.dart';

import 'item_filter_data.dart';

class ItemFilterParentData extends Equatable {
  String name;
  String attributeCode;
  List<ItemFilterData> itemFilterData;

  ItemFilterParentData copyWith({
    String? name,
    String? attributeCode,
    List<ItemFilterData>? itemFilterData,
  }) {
    return ItemFilterParentData(
      name: name ?? this.name,
      attributeCode: attributeCode ?? this.attributeCode,
      itemFilterData: itemFilterData ?? this.itemFilterData,
    );
  }

  Map<String, dynamic> toMap() {
    Map<String, dynamic> filters = {};

    if (attributeCode == 'price') {
      String from = "";
      String to = "";
      for (var itemFilterData in itemFilterData) {
        if (from.isEmpty) {
          from = itemFilterData.value.split('_')[0];
          to = itemFilterData.value.split('_')[1];
        } else {
          to = itemFilterData.value.split('_')[1];
        }
      }
      if (from.isNotEmpty) {
        filters[attributeCode] = {'from': from, 'to': to};
      }
    } else {
      List<String> valuesFilter = [];
      for (var itemFilterData in itemFilterData) {
        valuesFilter.add(itemFilterData.value);
      }
      if (valuesFilter.isNotEmpty) {
        filters[attributeCode] = {'in': valuesFilter};
      }
    }

    return filters;
  }

  ItemFilterParentData({required this.name, required this.attributeCode, required this.itemFilterData});

  @override
  List<Object?> get props => [name, attributeCode, itemFilterData];
}
