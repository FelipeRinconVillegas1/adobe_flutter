/// __  __ _    _ _______    _______ _____ ____  _   _
/// |  \/  | |  | |__   __|/\|__   __|_   _/ __ \| \ | |
/// | \  / | |  | |  | |  /  \  | |    | || |  | |  \| |
/// | |\/| | |  | |  | | / /\ \ | |    | || |  | | . ` |
/// | |  | | |__| |  | |/ ____ \| |   _| || |__| | |\  |
/// |_|  |_|\____/   |_/_/    \_\_|  |_____\____/|_| \_|

String sendMutation(
  String countryCode,
  String telephone,
  String hashSignature,
  String email,
) {
  return '''
      mutation {
        generateCustomerOtp(email: "$email", area_code: "$countryCode", telephone: "$telephone", hash: "$hashSignature") {
          status
        }
      }
  ''';
}
