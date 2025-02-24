/// __  __ _    _ _______    _______ _____ ____  _   _
/// |  \/  | |  | |__   __|/\|__   __|_   _/ __ \| \ | |
/// | \  / | |  | |  | |  /  \  | |    | || |  | |  \| |
/// | |\/| | |  | |  | | / /\ \ | |    | || |  | | . ` |
/// | |  | | |__| |  | |/ ____ \| |   _| || |__| | |\  |
/// |_|  |_|\____/   |_/_/    \_\_|  |_____\____/|_| \_|

String requestPasswordResetEmailMutation(String email) {
  return '''
    mutation {
       requestPasswordResetEmail(
         email: "$email"
      )
    }
  ''';
}
