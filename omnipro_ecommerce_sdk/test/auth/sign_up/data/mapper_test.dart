import 'package:core/data/dto/customer_dto.fr.dart';
import 'package:core/data/mapper.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:omnipro_ecommerce_sdk/auth/sign_up/data/mapper.dart';
import 'package:omnipro_ecommerce_sdk/auth/sign_up/domain/entity/create_customer_data.dart';

void main() {
  test('should convert a CustomerDTO to a Customer entity', () {
    // Arrange
    final customerDto = CustomerDTO(
        firstName: 'John',
        id: 1,
        lastName: 'Doe',
        email: 'johndoe@example.com',
        dateOfBirth: DateTime(2000),
    );

    // Act
    final customer = customerDto.toDomain();

    // Assert
    expect(customer.firstName, equals('John'));
    expect(customer.lastName, equals('Doe'));
    expect(customer.email, equals('johndoe@example.com'));
  });

  test('should convert a CreateCustomerData to a DataCreateCustomerDTO', () {
    // Arrange
    final createCustomerData = CreateCustomerData(
      firstname: 'John',
      lastname: 'Doe',
      email: 'johndoe@example.com',
      password: 'mypassword',
      date: DateTime(2000),
      gender: 1,
    );

    // Act
    final dataCreateCustomerDto = createCustomerData.toDTO();

    // Assert
    expect(dataCreateCustomerDto.firstName, equals('John'));
    expect(dataCreateCustomerDto.lastName, equals('Doe'));
    expect(dataCreateCustomerDto.email, equals('johndoe@example.com'));
    expect(dataCreateCustomerDto.password, equals('mypassword'));
    expect(dataCreateCustomerDto.dateOfBirth, equals(DateTime(2000)));
  });
}
