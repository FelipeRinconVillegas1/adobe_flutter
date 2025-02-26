import 'package:core/data/datasource/customer/customer_query.dart';

/// __  __ _    _ _______    _______ _____ ____  _   _
/// |  \/  | |  | |__   __|/\|__   __|_   _/ __ \| \ | |
/// | \  / | |  | |  | |  /  \  | |    | || |  | |  \| |
/// | |\/| | |  | |  | | / /\ \ | |    | || |  | | . ` |
/// | |  | | |__| |  | |/ ____ \| |   _| || |__| | |\  |
/// |_|  |_|\____/   |_/_/    \_\_|  |_____\____/|_| \_|

String validateCodeMutation(String countryCode, String telephone, String otpCode, String email) {
  return '''
      mutation {
        validateCustomerOtp(email: "$email", area_code: "$countryCode", telephone: "$telephone", otp: "$otpCode") {
          ${customerQuery()}
          status
          token
        }
      }
  ''';
}
