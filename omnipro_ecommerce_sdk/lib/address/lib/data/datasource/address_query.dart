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
      custom_attributesV2 {
          code
        ... on AttributeValue {
          value
        }
        ... on AttributeSelectedOptions{
            selected_options {
                label
                value
            }
        }
      } 
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
