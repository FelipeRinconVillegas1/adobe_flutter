import 'package:auth/sign_up/domain/entity/create_customer_data.dart';
import 'package:core/data/dto/user_credential_response_dto.fr.dart';
import 'package:core/data/mapper.dart';
import 'package:core/domain/entity/user_credential_response.dart';
import 'dto/create_customer_dto.fr.dart';

extension MapperDataCreateCustomer on CreateCustomerData {
  CreateCustomerDTO toDTO() => CreateCustomerDTO(
        firstName: firstname,
        lastName: lastname,
        email: email,
        password: password,
        gender: gender,
        dateOfBirth: date,
        customAttributes: customAttributes.map((e) => e.toDTO()).toList(),
        isSuscribed: isSuscribed,
      );
}

extension MapperUserCredentialResponseDTO on UserCredentialResponseDTO {
  UserCredentialResponse toDomain() => UserCredentialResponse(
        firstName: firstName,
        lastName: lastName,
        email: email,
        sub: sub,
        nonce: nonce,
        token: token,
        provider: provider,
      );
}
