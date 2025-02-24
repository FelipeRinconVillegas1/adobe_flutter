import 'package:design_system/foundations/icons.dart';

enum AllStatusWithIcon {
  asap_complete("asap_complete", icon: OmniIcons.s99statusOrderDelivered),
  asap_dispatched("asap_dispatched", icon: OmniIcons.s99statusOrderOnThisWay),
  asap_returned("asap_returned", icon: OmniIcons.s99statusOrderCancel),
  asap_unfulfilled("asap_unfulfilled", icon: OmniIcons.s99statusOrderCancel),
  canceled("canceled", icon: OmniIcons.s99statusOrderCancel),
  closed("closed", icon: OmniIcons.s99statusOrderCancel),
  complete("complete", icon: OmniIcons.s99statusOrderAcceptedAndActive),
  fraud("fraud", icon: OmniIcons.s99statusOrderCancel),
  holded("holded", icon: OmniIcons.s99statusOrderCancel),
  invoiced("invoiced", icon: OmniIcons.s99statusOrderReadyToBeShipped),
  out("out", icon: OmniIcons.s99statusOrderOnThisWay),
  payment_review("payment_review", icon: OmniIcons.s99statusOrderAcceptedAndActive),
  pending("pending", icon: OmniIcons.s99statusOrderAcceptedAndActive),
  processing("processing", icon: OmniIcons.s99statusOrderAcceptedAndActive),
  ready_for_delivery("ready_for_delivery", icon: OmniIcons.s99statusOrderReadyToBeShipped),
  ready_to_invoice("ready_to_invoice", icon: OmniIcons.s99statusOrderAcceptedAndActive),
  received("received", icon: OmniIcons.s99statusOrderAcceptedAndActive),
  rejected("rejected", icon: OmniIcons.s99statusOrderCancel),
  dm_refund_review("dm_refund_review", icon: OmniIcons.s99statusOrderCancel),
  ready_for_pickup("ready_for_pickup", icon: OmniIcons.s99statusOrderDelivered),
  packing_order("packing_order", icon: OmniIcons.s99statusOrderPacking),
  picking_order("picking_order", icon: OmniIcons.s99statusOrderPacking);

  const AllStatusWithIcon(this.statusCode, {this.icon});

  final String statusCode;
  final OmniIcons? icon;
}

AllStatusWithIcon getStatusWithIcon(String statusCode) {
  return AllStatusWithIcon.values.firstWhere((element) => element.statusCode == statusCode);
}

const String asap_complete = "asap_complete";
const String asap_dispatched = "asap_dispatched";
const String asap_returned = "asap_returned";
const String asap_unfulfilled = "asap_unfulfilled";
const String canceled = "canceled";
const String closed = "closed";
const String complete = "complete";
const String fraud = "fraud";
const String holded = "holded";
const String invoiced = "invoiced";
const String out = "out";
const String payment_review = "payment_review";
const String pending = "pending";
const String processing = "processing";
const String ready_for_delivery = "ready_for_delivery";
const String ready_to_invoice = "ready_to_invoice";
const String received = "received";
const String rejected = "rejected";
const String dm_refund_review = "dm_refund_review";

/// Estados exclusivo de retiro en tienda
/// los otros estados pueden ser compartidos
/// para envio a domicilio y retiro en tienda
const String ready_for_pickup = "ready_for_pickup";
const String packing_order = "packing_order";
const String picking_order = "picking_order";

const List<String> getaActiveAndAcceptedOrders = [
  payment_review,
  pending,
  processing,
  ready_to_invoice,
  received,
];

const List<String> getOrderReadyToBeShipped = [
  invoiced,
  ready_for_delivery,
  complete,
];

const List<String> getOrderOnItsWay = [
  asap_dispatched,
  out,
];

const List<String> getOrderCancelled = [
  asap_returned,
  asap_unfulfilled,
  canceled,
  closed,
  fraud,
  rejected,
  holded,
  dm_refund_review,
];

const List<String> getOrderDelivered = [
  asap_complete,
  ready_for_pickup,
];

const List<String> getOrdersInPicking = [picking_order, invoiced];

const List<String> getOrdersInPacking = [packing_order];

enum OrderStatusEntity {
  orderPicking(
    getOrdersInPicking,
    OmniIcons.s99statusOrderPacking,
  ),
  orderPacking(
    getOrdersInPacking,
    OmniIcons.s99statusOrderPicking,
  ),
  orderAcceptedAndActive(
    getaActiveAndAcceptedOrders,
    OmniIcons.s99statusOrderAcceptedAndActive,
  ),
  orderReadyToBeShipped(
    getOrderReadyToBeShipped,
    OmniIcons.s99statusOrderReadyToBeShipped,
  ),
  orderOnItsWay(
    getOrderOnItsWay,
    OmniIcons.s99statusOrderOnThisWay,
  ),
  orderCancelled(
    getOrderCancelled,
    OmniIcons.s99statusOrderCancel,
  ),
  orderNoStatus(
    [],
    OmniIcons.s99Error,
  ),
  orderDelivered(
    getOrderDelivered,
    OmniIcons.s99statusOrderDelivered,
  );

  const OrderStatusEntity(
    this.statusCode,
    this.icon,
  );
  final List<String> statusCode;
  final OmniIcons icon;

  static OrderStatusEntity getByCode(String statusCode) {
    return OrderStatusEntity.values.firstWhere((element) => element.statusCode.contains(statusCode),
        orElse: () => OrderStatusEntity.orderNoStatus);
  }
}

List<OrderStatusEntity> statusForHomeDelivery({bool excludeOrderCancelled = true}) {
  return [
    OrderStatusEntity.orderAcceptedAndActive,
    OrderStatusEntity.orderReadyToBeShipped,
    OrderStatusEntity.orderOnItsWay,
    OrderStatusEntity.orderDelivered,
    if (!excludeOrderCancelled) OrderStatusEntity.orderCancelled
  ];
}

List<OrderStatusEntity> statusForPickUp({bool excludeOrderCancelled = true}) {
  return [
    OrderStatusEntity.orderAcceptedAndActive,
    OrderStatusEntity.orderPicking,
    OrderStatusEntity.orderPacking,
    OrderStatusEntity.orderDelivered,
    if (!excludeOrderCancelled) OrderStatusEntity.orderCancelled
  ];
}
