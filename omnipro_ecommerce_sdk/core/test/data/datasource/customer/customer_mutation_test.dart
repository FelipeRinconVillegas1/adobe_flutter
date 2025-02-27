import 'package:core/data/datasource/customer/customer_mutation.dart';
import 'package:test/test.dart';
import 'package:core/data/dto/customer_dto.fr.dart';
import 'package:core/data/datasource/customer/customer_query.dart';
import 'package:core/utils/date_time_converter_iso8601.dart';

void main() {
  group('updateCustomerMutation', () {
    test('should return the correct mutation', () {
      // Arrange
      final newCustomer = CustomerDTO(
        id: 1,
        firstName: 'John',
        lastName: 'Doe',
        email: 'john.doe@example.com',
        dateOfBirth: DateTime(1990, 1, 1),
      );

      final expectedMutation = '''
        mutation {
          updateCustomerV2(
            input: {
              firstname: "${newCustomer.firstName}"
              lastname: "${newCustomer.lastName}"
              is_subscribed: true
              date_of_birth: "${const DateTimeConverterISO8601().toJson(newCustomer.dateOfBirth)}",
              custom_attributes: []
            }
          ) {
            customer {
              ${customerBaseQuery.call()}
            }
          }
        }
      ''';

      // Act
      final mutation = updateCustomerMutation(newCustomer);

      // Assert
      expect(mutation.trim().replaceAll(RegExp(r'\s'), ''), expectedMutation.trim().replaceAll(RegExp(r'\s'), ''));
    });
  });

  test('Update customer email mutation', () {
    // Arrange
    const newEmail = 'newEmail';
    const password = 'password';

    // Act
    final mutation = updateCustomerEmailMutation(newEmail, password);

    // Assert
    final expectedMutation = '''
      mutation {
       updateCustomerEmail(email: "$newEmail", password: "$password") {
         customer {
            ${customerBaseQuery.call()}
          }
        }
      }
      ''';
    expect(mutation.replaceAll(RegExp(r'\s'), ''), equals(expectedMutation.replaceAll(RegExp(r'\s'), '')));
  });
}
