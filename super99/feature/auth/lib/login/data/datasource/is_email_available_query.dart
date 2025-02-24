String isEmailAvailable(String email) {
  return '''
      {
        isEmailAvailable(email: "$email") {
          is_email_available
        }
      }
  ''';
}
