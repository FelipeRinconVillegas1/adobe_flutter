///░█▀▀█ ░█─░█ ░█▀▀▀ ░█▀▀█ ░█──░█
///░█─░█ ░█─░█ ░█▀▀▀ ░█▄▄▀ ░█▄▄▄█
///─▀▀█▄ ─▀▄▄▀ ░█▄▄▄ ░█─░█ ──░█──

dataQueryCustomerAddress() => '''
      id
      firstname
      lastname
      street
      city
      region {
        region_id
        region_code
        region
      }
      postcode
      country_code
      telephone
      default_shipping
      default_billing
''';

getCustomerAddressesQuery() => '''
query getCustomerAddressesQuery(){
  customer {
    addresses {
      ${dataQueryCustomerAddress()}
    }
  }
}
''';
