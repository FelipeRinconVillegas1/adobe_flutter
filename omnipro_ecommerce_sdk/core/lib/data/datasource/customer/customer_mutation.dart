import 'package:core/data/dto/customer_dto.fr.dart';
import 'package:core/utils/date_time_converter_iso8601.dart';
import '../../dto/delete_account/delete_customer_input_dto.fr.dart';
import 'customer_query.dart';

/// __  __ _    _ _______    _______ _____ ____  _   _
/// |  \/  | |  | |__   __|/\|__   __|_   _/ __ \| \ | |
/// | \  / | |  | |  | |  /  \  | |    | || |  | |  \| |
/// | |\/| | |  | |  | | / /\ \ | |    | || |  | | . ` |
/// | |  | | |__| |  | |/ ____ \| |   _| || |__| | |\  |
/// |_|  |_|\____/   |_/_/    \_\_|  |_____\____/|_| \_|

/// Mutation update customer.
/// The newCustomer.dateOfBirth is not nullable because it is required in the form.
String updateCustomerMutation(CustomerDTO newCustomer) => '''
 mutation {
  updateCustomerV2(
    input: {
      firstname: "${newCustomer.firstName}",
      lastname: "${newCustomer.lastName}",
      gender: ${newCustomer.gender},
      date_of_birth: "${const DateTimeConverterISO8601().toJson(newCustomer.dateOfBirth)}",
    }
  ) {
    ${customerQuery()}
  }
}''';

String updateCustomerEmailMutation(String newEmail, String password) => '''
mutation {
  updateCustomerEmail(email: "$newEmail", password: "$password") {
    ${customerQuery.call()}
  }
}
''';

String updateCustomerPasswordMutation(String currentPassword, String newPassword) => '''
mutation {
  changeCustomerPassword(currentPassword: "$currentPassword", newPassword: "$newPassword") {
    ${customerContentQuery.call()}
  }
}
''';

String deleteAccountMutation(DeleteCustomerInputDTO deleteCustomerInput) => '''
 mutation {
  deleteCustomerValidate(input: {
    password: "${deleteCustomerInput.password}"
    }) {
    success
    response
    code
  }
}
''';