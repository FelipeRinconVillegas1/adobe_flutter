///░█▀▀█ ░█─░█ ░█▀▀▀ ░█▀▀█ ░█──░█
///░█─░█ ░█─░█ ░█▀▀▀ ░█▄▄▀ ░█▄▄▄█
///─▀▀█▄ ─▀▄▄▀ ░█▄▄▄ ░█─░█ ──░█──

String getShippingMethodsQuery() => '''
query getOmsShippingMethods {
  getOmsShippingMethods {
    total_count
    items {
      id
      type
      name
      code
      status
      store_view
      message
      hide_payment_mathods
      created_at
      updated_at
    }
  }
}
''';