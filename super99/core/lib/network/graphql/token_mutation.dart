/// __  __ _    _ _______    _______ _____ ____  _   _
/// |  \/  | |  | |__   __|/\|__   __|_   _/ __ \| \ | |
/// | \  / | |  | |  | |  /  \  | |    | || |  | |  \| |
/// | |\/| | |  | |  | | / /\ \ | |    | || |  | | . ` |
/// | |  | | |__| |  | |/ ____ \| |   _| || |__| | |\  |
/// |_|  |_|\____/   |_/_/    \_\_|  |_____\____/|_| \_|

generateTokenCustomer(String user, String password) => '''
mutation {
  generateCustomerToken(email: "$user", password: "$password") {
    token,
    refresh_token
  }
}
''';

refreshTokenCustomer(String refreshToken) => '''
mutation {
  generateCustomerRefreshToken(refresh_token: "$refreshToken") {
    token
    refresh_token
  }
}
''';

/// Mutation for create a token by google and facebook
generateSocialCustomerTokenMutation({required String socialToken, required String type}) => '''
 mutation {
 generateSocialCustomerToken(social_token: "$socialToken",type:$type) {
   token
   } 
 }
''';

/// Mutation for create a token by sing in apple
generateAppleCustomerTokenMutation({required String appleToken, required String firstName, required String lastName}) =>
    '''
 mutation {
generateAppleCustomerToken(apple_token: "$appleToken", first_name: "$firstName", last_name: "$lastName")  {
   token
   } 
 }
''';
