import 'package:auth/sign_up/data/dto/create_customer_dto.fr.dart';
import 'package:core/data/datasource/customer/customer_query.dart';
import 'package:core/data/dto/custom_attribute_dto.fr.dart';
import 'package:core/utils/date_time_converter_iso8601.dart';

/// __  __ _    _ _______    _______ _____ ____  _   _
/// |  \/  | |  | |__   __|/\|__   __|_   _/ __ \| \ | |
/// | \  / | |  | |  | |  /  \  | |    | || |  | |  \| |
/// | |\/| | |  | |  | | / /\ \ | |    | || |  | | . ` |
/// | |  | | |__| |  | |/ ____ \| |   _| || |__| | |\  |
/// |_|  |_|\____/   |_/_/    \_\_|  |_____\____/|_| \_|

/// Mutation for create a new account
createCustomerMutation(CreateCustomerDTO createCustomerDto) => '''
mutation  {
  createCustomerV2(
    input: {
      firstname: "${createCustomerDto.firstName}",
      lastname: "${createCustomerDto.lastName}",
      email: "${createCustomerDto.email}",
      password: "${createCustomerDto.password}",
      dob: "${const DateTimeConverterISO8601().toJson(createCustomerDto.dateOfBirth).split('T').first}",     
      gender: ${createCustomerDto.gender},
      is_subscribed: ${createCustomerDto.isSuscribed},
      custom_attributes: ${createCustomerDto.customAttributes.toGraphql()}
    }
  ) 
  {
    ${customerQuery(needReturnWishList: false)}
  }
}
''';
