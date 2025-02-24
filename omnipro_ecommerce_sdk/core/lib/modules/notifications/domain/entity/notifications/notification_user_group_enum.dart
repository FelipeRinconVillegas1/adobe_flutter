enum NotificatitionUserGroupEnum {
  none(''),
  allUsersWithOrder('ALL_USERS_WITH_ORDER'),
  allUsersWithCompletedOrders('ALL_USERS_WITH_COMPLETED_ORDERS'),
  allUsersWithOrdersCanceled('ALL_USERS_WITH_ORDERS_CANCELED'),
  allUsersWithOrdersCanceledByAdmin('ALL_USERS_WITH_ORDERS_CANCELED_BY_ADMIN'),
  allUsersWithOrdersCanceledByDeliveryPerson('ALL_USERS_WITH_ORDERS_CANCELED_BY_DELIVERY_PERSON');

  final String value;

  const NotificatitionUserGroupEnum(this.value);
}
