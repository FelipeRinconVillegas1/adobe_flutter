import 'package:core/network/graphql/token_mutation.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('generateSocialCustomerTokenMutation', () {
    test('should create token by social media', () {
      // Arrange
      const socialToken = 'abc123';
      const type = 'facebook';
      const expectedMutation = r'''
        mutation {
          generateSocialCustomerToken(social_token: abc123, type:facebook) {
            token
          }
        }
      ''';

      // Act
      final mutation = generateSocialCustomerTokenMutation(
        socialToken: socialToken,
        type: type,
      );

      // Assert
      expect(
        mutation.trim().replaceAll(RegExp(r'\s'), ''),
        equals(expectedMutation.trim().replaceAll(RegExp(r'\s'), '')),
      );
    });
  });

  group('generateAppleCustomerTokenMutation', () {
    test('should create a token by Apple', () {
      // Arrange
      const appleToken = 'xyz789';
      const firstName = 'Jane';
      const lastName = 'Doe';
      const expectedMutation = r'''
        mutation {
          generateAppleCustomerToken(apple_token: xyz789, first_name: Jane, last_name: Doe) {
            token
          }
        }
      ''';

      // Act
      final mutation = generateAppleCustomerTokenMutation(
        appleToken: appleToken,
        firstName: firstName,
        lastName: lastName,
      );

      // Assert
      expect(
        mutation.trim().replaceAll(RegExp(r'\s'), ''),
        equals(expectedMutation.trim().replaceAll(RegExp(r'\s'), '')),
      );
    });
  });
}
