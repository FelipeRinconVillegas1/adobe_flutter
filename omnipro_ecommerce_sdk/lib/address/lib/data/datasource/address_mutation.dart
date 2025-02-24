import 'package:core/data/dto/customer_address_dto.fr.dart';
import 'package:core/data/dto/custom_attribute_dto.fr.dart';

import 'address_query.dart';

/// __  __ _    _ _______    _______ _____ ____  _   _
/// |  \/  | |  | |__   __|/\|__   __|_   _/ __ \| \ | |
/// | \  / | |  | |  | |  /  \  | |    | || |  | |  \| |
/// | |\/| | |  | |  | | / /\ \ | |    | || |  | | . ` |
/// | |  | | |__| |  | |/ ____ \| |   _| || |__| | |\  |
/// |_|  |_|\____/   |_/_/    \_\_|  |_____\____/|_| \_|
///

customerParamToMutation(CustomerAddressDTO customerAddressDTO) => '''
    region: {
      region: "${customerAddressDTO.region.region}"
      region_code: "${customerAddressDTO.region.region}"
      region_id: ${customerAddressDTO.region.regionId}
    }
    country_code: ${customerAddressDTO.countryCode}
    street: ["${customerAddressDTO.street[0]}", "${customerAddressDTO.street[1]}", "${customerAddressDTO.street[2]}"]
    telephone: "${customerAddressDTO.telephone}"
    postcode: ${customerAddressDTO.postcode == null ? null : '"${customerAddressDTO.postcode}"'}
    city: "${customerAddressDTO.city}"
    firstname: "${customerAddressDTO.firstname}"
    lastname: "${customerAddressDTO.lastname}"
    default_shipping: ${customerAddressDTO.defaultShipping}
    default_billing:  ${customerAddressDTO.defaultBilling}
    custom_attributesV2:  ${customerAddressDTO.customAttributes.toGraphql()}
''';

createCustomerAddress(CustomerAddressDTO customerAddressDTO) => '''
mutation createCustomerAddress() {
  createCustomerAddress(input: {
   ${customerParamToMutation(customerAddressDTO)}
  }) {
      ${dataQueryCustomerAddress()}
  }
}
''';

updateCustomerAddress(CustomerAddressDTO customerAddressDTO) => '''
mutation {
  updateCustomerAddress(id:${customerAddressDTO.id}, input: {
    ${customerParamToMutation(customerAddressDTO)}
  }) {
      ${dataQueryCustomerAddress()}
  }
}
''';

// delete
deleteCustomerAddressMutation(int id) => '''
mutation {
  deleteCustomerAddress(id: $id)
}
''';
