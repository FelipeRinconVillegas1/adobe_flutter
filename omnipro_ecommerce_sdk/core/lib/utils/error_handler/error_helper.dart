import 'package:graphql/client.dart';

import 'error_code.dart';

class ErrorHelper {
  static String getErrorMessage(dynamic errorCode, String locale, {String? messageDefault}) {
    final errorCodeFinal = errorCode is ErrorCode ? errorCode.message : errorCode;
    final message = _mapErrors[errorCodeFinal]?[locale];
    if (message != null && message.isNotEmpty) {
      return message;
    } else if (messageDefault != null) {
      return messageDefault;
    } else {
      return _mapErrors[ErrorCode.genericErrorFromServer.message]?[locale] ?? '';
    }
  }

  /// This method is used to map the error code from the GraphQL response
  static ErrorCode _getErrorCodeGraphQL(String message) {
    final String errorStockNotAvailable = "The requested qty is not available";
    final String errorNotFindCartId = "Could not find cart item with id";
    final String errorMethodShippingNotFound = "Carrier with such method not found";
    final String cartInactive = "The cart isn't active";
    final String errorGraphqlAuthorization = "The current user cannot perform operations on cart";
    final String noValidFormatEmail = "The email address has an invalid format.";
    final String notExistEmail = "Cannot reset the customer's password";
    final String unableToPlaceOrder = "Unable to place order";
    final String requestAllowedForLoggedUser = "The request is allowed for logged in customer";
    if (message.contains(errorStockNotAvailable)) {
      return ErrorCode.errorInsufficientStock;
    } else if (message.contains(errorNotFindCartId)) {
      return ErrorCode.errorProductNotFound;
    } else if (message.contains(errorMethodShippingNotFound)) {
      return ErrorCode.errorShippingMethodNotFound;
    } else if (message.contains(cartInactive)) {
      return ErrorCode.errorCartIsNotActive;
    } else if (message.contains(errorGraphqlAuthorization)) {
      return ErrorCode.errorGraphQlAuthorization;
    } else if (message.contains(noValidFormatEmail)) {
      return ErrorCode.invalidEmail;
    } else if (message.contains(notExistEmail)) {
      return ErrorCode.notExistEmail;
    } else if (message.contains(unableToPlaceOrder)) {
      final String unableToPlaceOrderProductOutStock = "Unable to place order: Some of the products are out of stock";
      if(message.contains(unableToPlaceOrderProductOutStock)){
        return ErrorCode.errorUnableToPlaceOrderProductsOutOfStock;
      }else{
        return errorCybersource(message);
      }
    } else if (message.contains(requestAllowedForLoggedUser)) {
      return ErrorCode.errorRequestAllowedForLoggedUser;
    } else {
      return ErrorCode.genericErrorFromServer;
    }
  }

  static Map<String, String>? parseErrorString(String errorString) {
    try {
      // Extract the content within ### ###
      final regex = RegExp(r'###(.*?)###');
      final match = regex.firstMatch(errorString);
      if (match == null || match.groupCount < 1) {
        return null; // No match found
      }
      final content = match.group(1)!;

      // Split the content by `||`
      final parts = content.split('||');
      final Map<String, String> jsonMap = {};
      for (var part in parts) {
        final keyValue = part.split(':');
        if (keyValue.length == 2) {
          jsonMap[keyValue[0].trim()] = keyValue[1].trim();
        }
      }
      return jsonMap;
    } catch (e) {
      print('Error parsing string: $e');
      return null;
    }
  }

  static ErrorCode errorCybersource(String message) {
    if (message.contains("###")) {
      final mapCodesFromCybersource = parseErrorString(message);
      if (mapCodesFromCybersource != null && mapCodesFromCybersource.containsKey("err-reason")) {
        final errorCode = findErrorCode(mapCodesFromCybersource["err-reason"]!);
        if (errorCode != ErrorCode.unknown) {
          return errorCode;
        } else {
          if (mapCodesFromCybersource.containsKey("status")) {
            final status = findErrorCode(mapCodesFromCybersource["status"]!);
            if (status != ErrorCode.unknown) {
              return status;
            }
          }
        }
      }
    }
    return ErrorCode.errorUnableToPlaceOrder;
  }

  String getErrorCodeByGraphQLError(
    GraphQLError? error,
  ) {
    if (error == null) {
      return ErrorCode.genericErrorFromServer.message;
    }
    String? codeError = _mapErrorGraphQL[error.message]?.message;

    if (codeError != null && codeError != ErrorCode.genericErrorFromServer.message) {
      return codeError;
    }

    if (_getErrorCodeGraphQL(error.message) != ErrorCode.genericErrorFromServer) {
      return _getErrorCodeGraphQL(error.message).message;
    }

    final pathError = error.path;

    if (pathError == null || pathError.isEmpty) {
      return ErrorCode.genericErrorFromServer.message;
    }

    return 'ERROR_SERVER_$pathError';
  }

  /// Given the error message received from the GraphQL response,
  /// it is mapped to an error code.
  final _mapErrorGraphQL = <String, ErrorCode>{
    'Ya existe un cliente con la misma dirección de correo electrónico en un sitio web asociado.': ErrorCode.existEmail,
    'The account sign-in was incorrect or your account is disabled temporarily. Please wait and try again later.':
        ErrorCode.badCredentials,
    'The current customer isn\'t authorized.': ErrorCode.notAuthorized,
    'The account is locked': ErrorCode.accountLocked,
    'Internal server error': ErrorCode.errorInternalServer,
    'Invalid refresh token': ErrorCode.errorInvalidRefreshToken,
    'Unable to place order: The shipping method is missing. Select the shipping method and try again.':
        ErrorCode.errorShippingMethodMissing,
    'Unable to place order: A server error stopped your order from being placed. Please try to place your order again':
        ErrorCode.errorUnableToPlaceOrder,
    "The cart isn't active.": ErrorCode.errorCartIsNotActive,
  };

  static const _mapErrors = <String, Map<String, String>>{
    //Generic error
    '1': {
      'es': 'Ha ocurrido un error, por favor contacte a soporte',
      'en': 'Something went wrong, please contact support'
    },
    '2': {
      'es': "Hay un problema con la conexión, intenta de nuevo",
      'en': "There is a conection issue, please try again"
    },
    'INSUFFICIENT_STOCK': {
      'es': "No hay suficiente stock para el producto seleccionado",
      'en': "There is not enough stock for the selected product"
    },
    'INSUFFICIENT_STOCK_PRODUCTS': {
      'es': "No hay stock disponible para algunos de los productos",
      'en': "Some products have insufficient stock"
    },
    'EXIST_EMAIL': {
      'es': "Ya existe un cliente con la misma dirección de correo electrónico.",
      'en': "A customer with the same email address already exists."
    },
    'NOT_EXIST_EMAIL': {'es': "El correo electrónico ingresado no existe.", 'en': "The email entered does not exist."},
    'INVALID_EMAIL': {'es': "El email ingresado no es válido.", 'en': "The email entered is not valid."},
    'SIGN_IN_GOOGLE': {'es': "Error al iniciar sesión con Google", 'en': "Error signing in with Google"},
    'CART_ID_INVALID': {'es': "No se pudo encontrar un carrito", 'en': "Could not find a cart"},
    'PRODUCT_NOT_FOUND': {'es': "No se pudo encontrar el producto", 'en': "Could not find a product"},
    'NOT_SALABLE': {
      'es': "El producto que está intentando agregar no está disponible.",
      'en': "Product that you are trying to add is not available."
    },
    'NOT_AUTHORIZED': {'es': "Por su seguridad, vuelva a iniciar sesión.", 'en': "For your safety please login again."},
    'BAD_CREDENTIALS': {
      'es': "El inicio de sesión de la cuenta fue incorrecto o tu cuenta está desactivada temporalmente.",
      'en': "The account sign-in was incorrect or your account is disabled temporarily."
    },
    'ACCOUNT_LOCKED': {'es': "La cuenta está bloqueada.", 'en': "The account is locked."},
    'MAX_WISHLIST': {'es': "Máximo número de lista de deseos alcanzada", 'en': "Maximum number of wishlist reached"},
    'WISHLIST_GENERIC_ERROR': {'es': "Error creando la lista", 'en': "Error creating the wishlist"},
    'WISHLIST_DUPLICATE_LIST': {'es': "Nombre de lista duplicado", 'en': "Error Wishlist name duplicated"},
    'WISHLIST_ADD_PRODUCT_ERROR': {
      'es': "Error añadiendo el producto a la lista",
      'en': "Error adding the product to the wishlist"
    },
    'WISHLIST_REMOVE_PRODUCT_ERROR': {
      'es': "Error eliminando el producto de tu lista",
      'en': "Errore removing the product from your wishlist"
    },
    'WISHLIST_UPDATE_ERROR': {'es': "Error actualizando la lista", 'en': "Error updating the list"},
    'WISHLIST_UPDATE_ERROR_EMPTY_NAME': {
      'es': "El nombre de la lista no puede estar vacío",
      'en': "The name of the list can not be empty"
    },
    'WISHLIST_ADD_PRODUCTS_TO_CART': {
      'es': "Error añadiendo el producto a la lista seleccionada",
      'en': "Error adding the product to the selected wishlist"
    },
    'WISHLIST_ADD_PRODUCTS_TO_CART_EMPTY': {
      'es': "Error: no hay productos para añadir al carro",
      'en': "Error: there is no products to add to cart"
    },
    'WISHLIST_NOT_SELECTED': {'es': "No hay ninguna lista seleccionada", 'en': "There is no any wishlist selected"},
    'WISHLIST_DELETE_ERROR': {'es': "Error eliminando las listas", 'en': "Error deleting the wishlist"},
    'WHISLIST_DELETE_SOME_LISTS_ERROR': {
      'es': "Algunas listas no pudieron ser eliminadas",
      'en': "Error deleting some wishlists"
    },
    'WHILIST_DELETE_ALL_LISTS_ERROR': {
      'es': "Las listas no pudieron ser eliminadas",
      'en': "Error deleting all wishlists"
    },
    'ERROR_ADD_TIP_TO_CART': {
      'es': "No se pudo agregar la propina al carrito. Por favor, inténtelo de nuevo.",
      'en': "Failed to add the tip to the cart. Please try again."
    },
    'EMPTY_CART_ID_REMOVE_ALL_PRODUCTS': {
      'es': "Error al limpiar el carrito. Por favor, inténtalo de nuevo.",
      'en': "Error clearing the cart. Please try again."
    },
    "NO_ADDRESS_SELECTED": {
      'es':
          "No se ha seleccionado una dirección de envío, Por favor, vuelvelo a intentar cuando hayas seleccionado una.",
      'en': "No shipping address has been selected, please try again when you have selected one."
    },
    "NO_BILLING_ADDRESS_SELECTED": {
      'es': "No se ha seleccionado una dirección de facturación, Por favor, vuelvelo a intentar cuando hayas seleccionado una.",
      'en': "No billing address has been selected, please try again when you have selected one."
    },
    "NO_APPOINTMENT_FOUND": {"es": "No se encontraron fechas disponibles", "en": "No appointment found"},
    "NO_APPOINTMENT_CID_FOUND": {"es": "No existe cid para consultar", "en": "No appointment cid found"},
    "ERROR_BAD_REQUEST": {"es": "Solicitud incorrecta", "en": "Bad Request"},
    "ERROR_UNAUTHORIZED": {"es": "No autorizado", "en": "Unauthorized"},
    "ERROR_FORBIDDEN": {"es": "Prohibido", "en": "Forbidden"},
    "ERROR_NOT_FOUND": {"es": "No encontrado", "en": "Not Found"},
    "ERROR_INTERNAL_SERVER": {"es": "Error interno del servidor", "en": "Internal Server Error"},
    "ERROR_STATUS_CODE_NOT_ALLOWED": {"es": "Código de estado no permitido", "en": "Status Code Not Allowed"},
    "NO_ADDRESSES_FOUND": {'es': "Seleccione una dirección de envío", 'en': "Select a shipping address"},
    "ERROR_UPDATING_ADDRESS": {
      'es': "Error actualizando la dirección, intente nuevamente.",
      'en': "Error updating the address, try again"
    },
    "OMS_OPTIONS_NOT_FOUND": {'es': "No se encontraron opciones de OMS", 'en': "OMS options not found"},
    "ERROR_INVALID_REFRESH_TOKEN": {
      'es': "No se pudo refrescar el token de usuario",
      'en': "Could not refresh the user token"
    },
    "SHIPPING_METHOD_MISSING": {'es': "No se ha seleccionado un método de envío", 'en': "No shipping method selected"},
    "UNABLE_TO_PLACE_ORDER": {'es': "No se pudo realizar el pedido", 'en': "Could not place the order"},
    "SHIPPING_METHOD_NOT_FOUND": {'es': "No se encontró el método de envío", 'en': "Shipping method not found"},
    "NO_SHIPPING_METHOD_SELECTED": {
      'es': "No se ha seleccionado un método de envío",
      'en': "No shipping method selected"
    },
    "ERROR_GRAPHQL_AUTHORIZATION": {
      'es': "Por su seguridad hemos cerrado su sesión, por favor vuelva a iniciar sesión",
      'en': "For your security we have closed your session, please log in again"
    },
    "ERROR_NO_COMPUTE_IN_CACHE": {
      'es': "No se pudo obtener la información de inventario",
      'en': "Could not get inventory information"
    },
    "ERROR_NO_RESULT_RESPONSE_FOUND_IN_CACHE": {
      'es': "No se pudo obtener la información de inventario",
      'en': "Could not get inventory information"
    },
    "ERROR_NO_COMPUTE_FROM_OMS": {
      'es': "No se pudo obtener la información de inventario",
      'en': "Could not get inventory information"
    },
    "ERROR_NO_RESULT_RESPONSE_FOUND": {
      'es': "No se pudo obtener la información de inventario",
      'en': "Could not get inventory information"
    },
    "ERROR_SOME_PRODUCTS_HAS_INSUFFICIENT_STOCK": {
      'es': "Algunos productos tienen stock insuficiente, por favor revisa tu carrito",
      'en': "Some products have insufficient stock, please review your cart"
    },
    "ERROR_STOCK_AVAILABLE_CHANGED_IN_WAREHOUSE": {
      'es': "El stock disponible cambió en el almacén, por favor modifica tu horario de entrega",
      'en': "The available stock changed in the warehouse, please modify your delivery time"
    },
    "ERROR_NO_COMPUTE_RESPONSE_FOUND": {
      'es': "No se pudo obtener la información de inventario",
      'en': "No compute response found"
    },
    "ERROR_VALIDATE_STOCK_AVAILABLE_TRY_AGAIN": {
      'es': "No se pudo validar el stock disponible, por favor inténtalo de nuevo",
      'en': "Could not validate the available stock, please try again"
    },
    "NO_BILLING_ADDRESSES_FOUND": {
      'es': "El cliente no tiene direcciones de facturación",
      'en': "Customer has no billing addresses"
    },
    "ERROR_UPDATING_BILLING_ADDRESS": {
      'es': "Error actualizando la dirección de facturación",
      'en': "Error updating the billing address"
    },
    "NO_CATEGORY_FOUND": {
      'es': "No se encontró la categoría",
      'en': "Category not found",
    },
    "NO_CUSTOMER_LOGGED": {
      'es': "No se ha iniciado sesión",
      'en': "Not logged in",
    },
    "USER_NOT_MATCH": {
      'es': "El usuario logueado no coincide con el usuario de la tarjeta guardada",
      'en': "The logged in user does not match the saved card user",
    },
    "ERROR_GETTING_ENCRYPT_KEY": {
      'es': "Error inesperado, por favor intente de nuevo, cod: 0RGENK",
      'en': "Unexpected error, please try again, code: 0RGENK",
    },
    "CARD_TYPE_NOT_UNKNOWN": {
      'es': "Tipo de tarjeta desconocido",
      'en': "Unknown card type",
    },
    "ERROR_GETTING_CARDS_AVAILABLE": {
      'es': "Error al obtener listado de tarjetas permitidas",
      'en': "Error getting list of allowed cards",
    },
    "CARD_TYPE_NOT_AVAILABLE": {
      'es': "Tipo de tarjeta no permitido",
      'en': "Card type not allowed",
    },
    "ERROR_GETTING_EXPIRATION_DATE": {
      'es': "Error al obtener la fecha de expiración",
      'en': "Error getting expiration date",
    },
    "ERROR_SAVE_CACHE_CARD": {
      'es': "Error al guardar la tarjeta, intente de nuevo",
      'en': "Error saving card in cache, try again",
    },
    "NO_HASH_CARD_TOKENIZED": {
      'es': "No se encontró el hash de la tarjeta tokenizada",
      'en': "No hash found for tokenized card",
    },
    "NO_VALID_PAYMENT_METHOD_SELECTED": {
      'es': "No se ha seleccionado un método de pago válido",
      'en': "No valid payment method selected",
    },
    "NO_CARD_CACHED": {
      'es': "No se ha encontrado la tarjeta guardada",
      'en': "No saved card found",
    },
    "NO_PAYMENT_METHOD_SELECTED": {
      'es': "No se ha seleccionado un método de pago",
      'en': "No payment method selected",
    },
    "CART_ID_IS_NOT_ACTIVE": {
      'es': "El carrito no está activo, por favor intente creando un nuevo carro.",
      'en': "The cart is not active, please try creating a new cart.",
    },
    "GENERIC_ERROR_FROM_SERVER": {
      'es': "Ha ocurrido un error inesperado, por favor intente de nuevo.",
      'en': "An unexpected error occurred, please try again.",
    },
    // Cybersource error codes
    "AVS_FAILED": {
      'es': "La dirección ingresada no pudo ser verificada.",
      'en': "The address entered could not be verified.",
    },
    "CONTACT_PROCESSOR": {
      'es': "Por favor, contacta al procesador de pagos.",
      'en': "Please contact the payment processor.",
    },
    "EXPIRED_CARD": {
      'es': "Tu tarjeta ha expirado. Intenta con otra tarjeta.",
      'en': "Your card has expired. Please try another card.",
    },
    "PROCESSOR_DECLINED": {
      'es': "El procesador de pagos rechazó la transacción.",
      'en': "The payment processor declined the transaction.",
    },
    "INSUFFICIENT_FUND": {
      'es': "No tienes fondos suficientes para completar el pago.",
      'en': "You don't have enough funds to complete the payment.",
    },
    "STOLEN_LOST_CARD": {
      'es': "La tarjeta está reportada como perdida o robada.",
      'en': "The card is reported as lost or stolen.",
    },
    "ISSUER_UNAVAILABLE": {
      'es': "El banco emisor no está disponible en este momento.",
      'en': "The card issuer is unavailable at the moment.",
    },
    "UNAUTHORIZED_CARD": {
      'es': "La tarjeta no está autorizada para esta transacción.",
      'en': "The card is not authorized for this transaction.",
    },
    "CVN_NOT_MATCH": {
      'es': "El código de seguridad de la tarjeta no coincide.",
      'en': "The card security code does not match.",
    },
    "EXCEEDS_CREDIT_LIMIT": {
      'es': "Has superado el límite de crédito disponible.",
      'en': "You have exceeded your credit limit.",
    },
    "INVALID_CVN": {
      'es': "El código de seguridad ingresado es inválido.",
      'en': "The security code entered is invalid.",
    },
    "DECLINED_CHECK": {
      'es': "El cheque fue rechazado por el banco.",
      'en': "The check was declined by the bank.",
    },
    "BLACKLISTED_CUSTOMER": {
      'es': "Tu cuenta está en una lista de restricciones.",
      'en': "Your account is on a restricted list.",
    },
    "SUSPENDED_ACCOUNT": {
      'es': "Tu cuenta está suspendida. Contacta soporte.",
      'en': "Your account is suspended. Please contact support.",
    },
    "PAYMENT_REFUSED": {
      'es': "El pago fue rechazado por el banco.",
      'en': "The payment was refused by the bank.",
    },
    "CV_FAILED": {
      'es': "La verificación de seguridad de la tarjeta falló.",
      'en': "The card security verification failed.",
    },
    "INVALID_ACCOUNT": {
      'es': "La tarjeta ingresada no es válida, por favor intenta con otra.",
      'en': "The card entered is invalid, please try another.",
    },
    "GENERAL_DECLINE": {
      'es': "No pudimos procesar tu pago. Inténtalo nuevamente.",
      'en': "We couldn't process your payment. Please try again.",
    },
    "INVALID_MERCHANT_CONFIGURATION": {
      'es': "Hubo un problema con la configuración del comerciante.",
      'en': "There was an issue with the merchant's configuration.",
    },
    "DECISION_PROFILE_REJECT": {
      'es': "Tu transacción fue rechazada debido a políticas de seguridad.",
      'en': "Your transaction was rejected due to security policies.",
    },
    "SCORE_EXCEEDS_THRESHOLD": {
      'es': "Tu transacción no cumplió con los requisitos de seguridad.",
      'en': "Your transaction did not meet the security requirements.",
    },
    "PENDING_AUTHENTICATION": {
      'es': "La transacción requiere autenticación adicional.",
      'en': "The transaction requires additional authentication.",
    },
    "ACH_VERIFICATION_FAILED": {
      'es': "La verificación de la cuenta bancaria falló.",
      'en': "The bank account verification failed.",
    },
    "DECISION_PROFILE_REVIEW": {
      'es': "Tu transacción está bajo revisión por políticas de seguridad.",
      'en': "Your transaction is under review due to security policies.",
    },
    "CONSUMER_AUTHENTICATION_REQUIRED": {
      'es': "Se requiere autenticación adicional para procesar el pago.",
      'en': "Additional authentication is required to process the payment.",
    },
    "CONSUMER_AUTHENTICATION_FAILED": {
      'es': "La autenticación del consumidor falló.",
      'en': "Consumer authentication failed.",
    },
    "ALLOWABLE_PIN_RETRIES_EXCEEDED": {
      'es': "Has superado los intentos permitidos del PIN.",
      'en': "You have exceeded the allowable PIN retries.",
    },
    "PROCESSOR_ERROR": {
      'es': "Hubo un error al procesar el pago. Inténtalo más tarde.",
      'en': "There was an error processing the payment. Please try again later.",
    },
    "CUSTOMER_WATCHLIST_MATCH": {
      'es': "Tu cuenta coincide con una lista de restricciones.",
      'en': "Your account matches a restricted list.",
    },
    "ADDRESS_COUNTRY_WATCHLIST_MATCH": {
      'es': "La dirección coincide con una lista de restricciones.",
      'en': "The address matches a restricted list.",
    },
    "EMAIL_COUNTRY_WATCHLIST_MATCH": {
      'es': "El correo electrónico coincide con una lista de restricciones.",
      'en': "The email matches a restricted list.",
    },
    "IP_COUNTRY_WATCHLIST_MATCH": {
      'es': "La IP coincide con una lista de restricciones.",
      'en': "The IP address matches a restricted list.",
    },
    "AUTHORIZED": {
      'es': "La transacción fue autorizada con éxito.",
      'en': "The transaction was successfully authorized.",
    },
    "PARTIAL_AUTHORIZED": {
      'es': "La transacción fue autorizada parcialmente.",
      'en': "The transaction was partially authorized.",
    },
    "AUTHORIZED_PENDING_REVIEW": {
      'es': "La autorización está pendiente de revisión.",
      'en': "The authorization is pending review.",
    },
    "AUTHORIZED_RISK_DECLINED": {
      'es': "La autorización fue rechazada debido a riesgos.",
      'en': "The authorization was declined due to risks.",
    },
    "PENDING_REVIEW": {
      'es': "La transacción está pendiente de revisión.",
      'en': "The transaction is pending review.",
    },
    "DECLINED": {
      'es': "La transacción fue rechazada.",
      'en': "The transaction was declined.",
    },
    "INVALID_REQUEST": {
      'es': "La solicitud no es válida.",
      'en': "The request is invalid.",
    },
    "ERROR_REQUEST_ALLOWED_FOR_LOGGED_USER": {
      'es': "La sesión ha expirado, por favor inicia sesión nuevamente.",
      'en': "The session has expired, please log in again.",
    },
    "ERROR_GET_PUSH_TOKEN_NULL": {
      'es': "No se pudo obtener el token de notificaciones.",
      'en': "Could not get the notification token.",
    },
    "ERROR_NO_SKUS_FROM_SCOPE": {
      'es': "No hay skus para obtener de target.",
      'en': "No skus to fetch from target.",
    },
    "ERROR_SERVICE_TEMPORARILY_UNAVAILABLE": {
      'es': "El servicio no está disponible temporalmente, por favor intenta más tarde.",
      'en': "The service is temporarily unavailable, please try again later.",
    },
    "ERROR_ADD_PRODUCT_TO_CART": {
      'es': "No se pudo agregar el producto al carrito.",
      'en': "Could not add the product to the cart.",
    },
    "ERROR_SET_SHIPPING_ADDRESS_ON_CART": {
      'es': "No se pudo establecer la dirección de envío en el carrito.",
      'en': "Could not set the shipping address on the cart.",
    },
    "ERROR_SAVING_NEW_ADDRESS": {
      'es': "No se pudo guardar la nueva dirección.",
      'en': "Could not save the new address.",
    },
    "ERROR_GETTING_ORDERS": {
      'es': "No se pudieron obtener los pedidos.",
      'en': "Could not get the orders.",
    },
    "ERROR_CALLING_PLACE_ORDER": {
      'es': "No se pudo realizar el pedido.",
      'en': "Could not place the order.",
    },
    "SESSION_EXPIRED": {
      'es': "La sesión ha expirado, por favor inicia sesión nuevamente.",
      'en': "The session has expired.",
    },
    "ERROR_PLACE_ORDER": {
      'es': "No se pudo realizar el pedido.",
      'en': "Could not place the order.",
    },
    "NO_ADDRESS_PICKUP_SELECTED": {
      'es': "No se ha seleccionado una tienda de retiro.",
      'en': "No pickup address selected.",
    },
    "NO_EXIST_SHIPPING_METHOD": {
      'es': "No se encontró un método de envío.",
      'en': "No shipping method found.",
    },
    "NO_PERSON_SELECTED_TO_PICKUP": {
      'es': "No se ha seleccionado una persona para recoger el pedido.",
      'en': "No person selected to pick up the order.",
    },
    "UNABLE_TO_PLACE_ORDER_PRODUCTS_OUT_OF_STOCK": {
      'es': "No se pudo realizar el pedido, algunos productos no están disponibles.",
      'en': "Unable to place order, some products are out of stock.",
    },
    "DELETE_ACCOUNT_FAIL": {
      'es': "No se pudo eliminar la cuenta, por favor intenta más tarde.",
      'en': "Could not delete the account, please try again later.",
    },
    "ERROR_UPDATE_OMS_OPTIONS_IN_CART": {
      'es': "No se pudo actualizar el método de envio a los productos de tu carrito, por favor intenta más tarde.",
      'en': "Could not update the OMS options in the cart, please try again later.",
    },
    "ERROR_INTERNET_CONNECTION": {
      'es': "No hay conexión a internet, por favor revisa tu conexión, y vuelve a intentar.",
      'en': "No internet connection, please check your connection, and try again.",
    },
    "ERROR_INITIALIZING_APP": {
      'es': "No se pudo inicializar la aplicación, por favor intenta más tarde.",
      'en': "Could not initialize the application, please try again later.",
    },
    "ERROR_FETCH_AND_ACTIVATE_REMOTE_CONFIG": {
      'es': "No se pudo obtener la configuración remota inicial, por favor intenta más tarde.",
      'en': "Could not get the initial remote configuration, please try again later.",
    },
    "ERROR_CONNECTION_FETCH_AND_ACTIVATE_REMOTE_CONFIG": {
      'es': "No se pudo conectar para obtener la configuración inicial, por favor revisa tu conexión a internet.",
      'en': "Could not connect to get the initial remote configuration, please check your internet connection.",
    },
    "ERROR_GENERAL_REMOTE_CONFIG": {
      'es': "Ocurrió un error al obtener la configuración remota, por favor intenta más tarde.",
      'en': "An error occurred while getting the remote configuration, please try again later.",
    },
  };
}
