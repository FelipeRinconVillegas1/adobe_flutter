import 'package:auth/login/data/datasource/login_mutation.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('requestPasswordResetEmailMutation', () {
    test('should return the correct mutation string', () {
      // Arrange
      String email = 'example@example.com';
      String expectedMutation = '''
        mutation {
          requestPasswordResetEmail(
            email: "$email"
          )
        }
      ''';

      // Act
      String mutation = requestPasswordResetEmailMutation(email);

      // Assert
      expect(mutation.replaceAll(RegExp(r'\s'), ''), expectedMutation.replaceAll(RegExp(r'\s'), ''));
    });
  });
}
