import 'package:core/utils/test_helpers.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:omnipro_ecommerce_sdk/auth/sign_up/data/datasource/sign_up_mutation.dart';
import 'package:omnipro_ecommerce_sdk/auth/sign_up/data/dto/create_customer_dto.fr.dart';

void main() {
  group('createCustomer', () {
    test('should create a new customer', () {
      // Arrange
      final createCustomerDto = CreateCustomerDTO(
        firstName: 'John',
        lastName: 'Doe',
        email: 'johndoe@example.com',
        password: 'password123',
        dateOfBirth: DateTime(1990, 10, 15),
        gender: 1,
      );
      const expectedMutation = r'''
mutation {
  createCustomerV2(
    input: {
      firstname: "John",
      lastname: "Doe",
      email: "johndoe@example.com",
      password: "password123",
      dob: "1990-10-15",
      gender: 1,
      is_subscribed: true,
      custom_attributes: [
        {
          attribute_code: "country_code"
          value: "MX"
        },
        {
          attribute_code: "cellphone"
          value: "32923238"
        }
      ]
    }
  ) {
    customer {
      firstname
      lastname
      email
      custom_attributes {
          code
        ... on AttributeValue {
          value
        }
      }
      dob
      is_subscribed
    }
  }
}
      ''';

      // Act
      final mutation = createCustomerMutation(createCustomerDto);

      // Assert
      TestHelpers.expectMutation(mutation, expectedMutation);
    });
  });
}
