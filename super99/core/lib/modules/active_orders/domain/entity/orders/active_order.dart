import 'package:freezed_annotation/freezed_annotation.dart';

part 'active_order.freezed.dart';
part 'active_order.g.dart';

@freezed
class ActiveOrder with _$ActiveOrder {
  const factory ActiveOrder({
    @JsonKey(name: 'magentoOrderId') required int orderId,
    required String status,
  }) = _ActiveOrder;

  factory ActiveOrder.fromJson(Map<String, dynamic> json) => _$ActiveOrderFromJson(json);
}
