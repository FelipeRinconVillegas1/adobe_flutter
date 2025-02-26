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

  /// User email suggested
  suggestedEmails
}
