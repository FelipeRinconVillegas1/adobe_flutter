enum KeySecureStorage {
  deleteAll,

  /// Customer data
  customer,

  /// Session data
  sessionData,

  /// Cart id when customer is not logged in
  guestCartID,

  /// Cart id when customer is logged in
  customerCartID,

  /// Address selected by the customer
  addressSelected,

  /// Address pickup by the customer
  addressPickupSelected,

  /// User who pickup the order in store
  userPickupSelected,

  /// Shipping method selected by the customer
  shippingMethodSelected,

  /// Billing address selected by the customer
  billingAddressSelected,

  /// It's the first time user in the app
  isFirstTime,
  reminderSetting,
  notificationSetting,
  languageSetting,

  /// Last time sync data of optionsDropdown from server to local storage in data time format iso 8601,
  /// this flag is used to check if the data is expired or not to sync data from server to local storage.
  lastTimeSyncDropdownOptions,
  devicePushToken,

  /// key to save the last store where the product comes from to be delivered to the customer
  lastStoreInCompute,
  lastPushNotificationUpdatedToken,
  notificationsEnabled,
  suggestedEmails
}
