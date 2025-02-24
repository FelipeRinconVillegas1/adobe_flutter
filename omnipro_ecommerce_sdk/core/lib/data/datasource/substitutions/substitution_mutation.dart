// __  __ _    _ _______    _______ _____ ____  _   _
// |  \/  | |  | |__   __|/\|__   __|_   _/ __ \| \ | |
// | \  / | |  | |  | |  /  \  | |    | || |  | |  \| |
// | |\/| | |  | |  | | / /\ \ | |    | || |  | | . ` |
// | |  | | |__| |  | |/ ____ \| |   _| || |__| | |\  |
// |_|  |_|\____/   |_/_/    \_\_|  |_____\____/|_| \_|

String setOmsReceivingSubstitutionsOnCartMutation(String cartId, String receivingSubstitutions) => ''' 
  mutation {
    setOmsReceivingSubstitutionsOnCart(
      input: { cart_id: "$cartId", receiving_substitutions: "$receivingSubstitutions" }
    ) {
      cart_id
      receiving_substitutions
    }
  }
''';
