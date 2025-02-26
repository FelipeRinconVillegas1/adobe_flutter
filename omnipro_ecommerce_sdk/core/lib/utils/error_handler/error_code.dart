/// Only fatal errors will be online logged
enum ErrorType { error, warning, ui }

enum ErrorCode {
  errorOpenChatWhatsApp('OPEN_CHAT_WHATSAPP_ERROR'),
  openChatMessenger('OPEN_CHAT_MESSENGER_ERROR'),
  errorOpenBotWhatsApp('OPEN_BOT_WHATSAPP_ERROR'),
  openSupportChatMessenger('OPEN_SUPPORT_CHAT_MESSENGER_ERROR'),
  errorGetBotWhatsApp('ERROR_GET_BOT_WHATSAPP_FROM_SERVER'),
  getIdFacebook('ERROR_GET_ID_FACEBOOK_FROM_REMOTE_CONFIG'),
  errorLoginWithCredential('ERROR_LOGIN_WITH_EMAIL_AND_PASSWORD'),
  errorGetWaitingTimeSearch('ERROR_GET_WAITING_TIME_SEARCH'),
  errorGetSearchProduct('ERROR_GET_SEARCH_PRODUCT'),
  errorGetSearchPopular('ERROR_GET_SEARCH_POPULAR'),
  errorGetSearchRecent('ERROR_GET_SEARCH_RECENT'),
  errorSignInGoogle('SIGN_IN_GOOGLE'),
  errorSignInFacebook('SIGN_IN_FACEBOOK'),
  errorSignInApple('SIGN_IN_APPLE'),
  customerCartID('ERROR_CREATE_CUSTOMER_CART_ID'),
  guestCartID('ERROR_CREATE_GUEST_CART_ID'),
  errorAddProductCartNoComputeInput('ERROR_ADD_PRODUCT_TO_CART_NO_COMPUTE_INPUT'),
  emptyCartIdSetShippingAddress('EMPTY_CART_ID_SHIPPING_ADDRESS'),
  emptyCartIdSetShippingMethod('EMPTY_CART_ID_SHIPPING_METHOD'),
  emptyCartIdSetBillingAddress('EMPTY_CART_ID_BILLING_ADDRESS'),
  emptyCartIdSetPaymentMethod('EMPTY_CART_ID_PAYMENT_METHOD'),
  emptyCartIdRemoveAllProducts('EMPTY_CART_ID_REMOVE_ALL_PRODUCTS'),
  errorGetAllProducts('ERROR_GET_ALL_PRODUCTS'),
  errorGetPopularSearch('ERROR_GET_POPULAR_SEARCH'),
  errorGetStatesCountry('ERROR_GET_STATES_COUNTRY'),
  errorSetCustomerAddress('ERROR_SET_CUSTOMER_ADDRESS'),
  errorGetCustomerAddresses('ERROR_GET_CUSTOMER_ADDRESSES'),
  errorGetCustomerAddressSeleted('ERROR_GET_CUSTOMER_ADDRESS_SELETED'),
  deniedPermissionForPushNotification('DENIED_PERMISSION_FOR_PUSH_NOTIFICATION'),
  emptyCartIdAppliedCoupon('EMPTY_CART_ID_APPLIED_COUPON'),
  emptyCartIdDeleteCoupon('EMPTY_CART_ID_DELETE_COUPON'),
  errorDeleteAddress('ERROR_DELETE_ADDRESS'),
  accountLocked('ACCOUNT_LOCKED'),
  errorGetOrders('ERROR_GET_ORDERS'),
  errorGetUrlSocialNetwork('ERROR_GET_URL_SOCIAL_NETWORK'),
  errorGetSimpleFlag('ERROR_GET_SIMPLE_FLAG'),
  addTipToCart('ERROR_ADD_TIP_TO_CART'),
  errorNotValidCode('ERROR_NOT_VALID_CODE'),
  errorNotFoundCustomer('ERROR_NOT_FOUND_CUSTOMER'),
  noCustomerInLocal('NO_CUSTOMER_IN_LOCAL'),
  errorDeleteCard('ERROR_DELETE_CARD'),
  errorTimeout('ERROR_INTERNET_TIMEOUT'),
  genericErrorFromServer('GENERIC_ERROR_FROM_SERVER'),
  existEmail('EXIST_EMAIL'),
  badCredentials('BAD_CREDENTIALS'),
  notAuthorized('NOT_AUTHORIZED'),
  errorInternalServer('ERROR_INTERNAL_SERVER'),
  errorInvalidRefreshToken('ERROR_INVALID_REFRESH_TOKEN'),
  errorShippingMethodMissing('SHIPPING_METHOD_MISSING'),
  errorUnableToPlaceOrder('UNABLE_TO_PLACE_ORDER'),
  errorTypeError('ERROR_TYPE_ERROR'),
  errorInternetClientException('ERROR_INTERNET_CLIENT_EXCEPTION'),
  errorConnectionCertificates('ERROR_INTERNET_CONNECTION_CERTIFICATES'),
  unknown('UNKNOWN'),
  errorInsufficientStock('INSUFFICIENT_STOCK'),
  errorProductNotFound('PRODUCT_NOT_FOUND'),
  errorShippingMethodNotFound('SHIPPING_METHOD_NOT_FOUND'),
  errorCartIsNotActive('CART_ID_IS_NOT_ACTIVE'),
  errorGraphQlAuthorization('ERROR_GRAPHQL_AUTHORIZATION'),
  invalidEmail('INVALID_EMAIL'),
  notExistEmail('NOT_EXIST_EMAIL'),
  errorUnableToPlaceOrderProductsOutOfStock('UNABLE_TO_PLACE_ORDER_PRODUCTS_OUT_OF_STOCK'),
  errorInternetConnection('ERROR_INTERNET_CONNECTION'),
  errorSetPaymentMethodOnCart('ERROR_SET_PAYMENT_METHOD_ON_CART'),
  errorNoInternet('ERROR_INTERNET_NOT_AVAILABLE'),
  avsFailed('AVS_FAILED'),
  contactProcessor('CONTACT_PROCESSOR'),
  expiredCard('EXPIRED_CARD'),
  processorDeclined('PROCESSOR_DECLINED'),
  insufficientFund('INSUFFICIENT_FUND'),
  stolenLostCard('STOLEN_LOST_CARD'),
  issuerUnavailable('ISSUER_UNAVAILABLE'),
  unauthorizedCard('UNAUTHORIZED_CARD'),
  cvnNotMatch('CVN_NOT_MATCH'),
  exceedsCreditLimit('EXCEEDS_CREDIT_LIMIT'),
  invalidCvn('INVALID_CVN'),
  declinedCheck('DECLINED_CHECK'),
  blacklistedCustomer('BLACKLISTED_CUSTOMER'),
  suspendedAccount('SUSPENDED_ACCOUNT'),
  paymentRefused('PAYMENT_REFUSED'),
  cvFailed('CV_FAILED'),
  invalidAccount('INVALID_ACCOUNT'),
  generalDecline('GENERAL_DECLINE'),
  invalidMerchantConfiguration('INVALID_MERCHANT_CONFIGURATION'),
  decisionProfileReject('DECISION_PROFILE_REJECT'),
  scoreExceedsThreshold('SCORE_EXCEEDS_THRESHOLD'),
  pendingAuthentication('PENDING_AUTHENTICATION'),
  achVerificationFailed('ACH_VERIFICATION_FAILED'),
  decisionProfileReview('DECISION_PROFILE_REVIEW'),
  consumerAuthenticationRequired('CONSUMER_AUTHENTICATION_REQUIRED'),
  consumerAuthenticationFailed('CONSUMER_AUTHENTICATION_FAILED'),
  allowablePinRetriesExceeded('ALLOWABLE_PIN_RETRIES_EXCEEDED'),
  processorError('PROCESSOR_ERROR'),
  customerWatchlistMatch('CUSTOMER_WATCHLIST_MATCH'),
  addressCountryWatchlistMatch('ADDRESS_COUNTRY_WATCHLIST_MATCH'),
  emailCountryWatchlistMatch('EMAIL_COUNTRY_WATCHLIST_MATCH'),
  ipCountryWatchlistMatch('IP_COUNTRY_WATCHLIST_MATCH'),
  authorized('AUTHORIZED'),
  partialAuthorized('PARTIAL_AUTHORIZED'),
  authorizedPendingReview('AUTHORIZED_PENDING_REVIEW'),
  authorizedRiskDeclined('AUTHORIZED_RISK_DECLINED'),
  pendingReview('PENDING_REVIEW'),
  declined('DECLINED'),
  errorRequestAllowedForLoggedUser('ERROR_REQUEST_ALLOWED_FOR_LOGGED_USER'),
  noAppointmentFound("NO_APPOINTMENT_FOUND"),
  noAppointmentCidFound("NO_APPOINTMENT_CID_FOUND"),
  noComputeResponseFound("NO_COMPUTE_RESPONSE_FOUND"),
  errorNoComputeInCache('ERROR_NO_COMPUTE_IN_CACHE'),
  errorNoResultResponseFoundInCache("ERROR_NO_RESULT_RESPONSE_FOUND_IN_CACHE"),
  errorNoResultResponseFound("ERROR_NO_RESULT_RESPONSE_FOUND"),
  errorSomeProductsHasInsufficientStock("ERROR_SOME_PRODUCTS_HAS_INSUFFICIENT_STOCK"),
  errorStockAvailableChangeInWarehouse('ERROR_STOCK_AVAILABLE_CHANGED_IN_WAREHOUSE'),
  errorValidateStockAvailableTryAgain("ERROR_VALIDATE_STOCK_AVAILABLE_TRY_AGAIN"),
  errorNoComputeFromOms("ERROR_NO_COMPUTE_FROM_OMS"),
  errorGetPushToken("ERROR_GET_PUSH_TOKEN"),
  errorGetPushTokenNull("ERROR_GET_PUSH_TOKEN_NULL"),
  invalidRequest('INVALID_REQUEST'),
  errorPlaceOrder('ERROR_PLACE_ORDER'),
  errorRefreshToken('ERROR_REFRESH_TOKEN'),
  sessionExpired('SESSION_EXPIRED'),
  errorCallingPlaceOrder('ERROR_CALLING_PLACE_ORDER'),
  errorGettingOrders('ERROR_GETTING_ORDERS'),
  errorSavingNewAddress('ERROR_SAVING_NEW_ADDRESS'),
  addProductCart('ERROR_ADD_PRODUCT_TO_CART'),
  errorSetShippingAddressOnCart('ERROR_SET_SHIPPING_ADDRESS_ON_CART'),
  errorServiceTemporarilyUnavailable('ERROR_SERVICE_TEMPORARILY_UNAVAILABLE'),
  errorGetCustomerAddressPickUpSelected('ERROR_GET_CUSTOMER_ADDRESS_PICK_UP_SELECTED'),
  errorGetUserWhoPickUpInStore('ERROR_GET_USER_WHO_PICK_UP_IN_STORE'),
  errorGetLastStoreInCompute('ERROR_GET_LAST_STORE_IN_COMPUTE'),
  errorNoSkusFromScope('ERROR_NO_SKUS_FROM_SCOPE'),
  deleteAccountFail('DELETE_ACCOUNT_FAIL'),
  deleteAccountEmailNotMatch('EMAIL_NOT_MATCH'),
  noShippingMethodAvailable('NO_SHIPPING_METHODS_AVAILABLE'),
  errorNoActiveOrderSaved('NO_ACTIVE_ORDERS_SAVED'),
  errorConnectionFetchAndActivateRemoteConfig('ERROR_CONNECTION_FETCH_AND_ACTIVATE_REMOTE_CONFIG'),
  errorFetchAndActivateRemoteConfig('ERROR_FETCH_AND_ACTIVATE_REMOTE_CONFIG'),
  errorGeneralRemoteConfig('ERROR_GENERAL_REMOTE_CONFIG'),
  errorCreateCustomerDataBaseRealtime('ERROR_CREATE_CUSTOMER_DATABASE_REALTIME'),
  errorNotFoundCustomerDataBaseRealtime('ERROR_NOT_FOUND_CUSTOMER_DATABASE_REALTIME'),
  errorDataBaseRealtime('ERROR_DATABASE_REALTIME'),
  errorSubscriptionsStreamActiveOrders('ERROR_SUBSCRIPTIONS_STREAM_ACTIVE_ORDERS'),
  errorInitAdobeTarget('ERROR_INIT_ADOBE_TARGET'),
  errorInitializingApp("ERROR_INITIALIZING_APP");

  const ErrorCode(this.message);

  final String message;
}

ErrorCode findErrorCode(String message) {
  return ErrorCode.values.firstWhere((element) => element.message == message, orElse: () => ErrorCode.unknown);
}
