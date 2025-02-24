import 'package:auth/login/domain/entity/customer_tokens_entity.dart';
import 'package:auth/login/domain/entity/login_with_auth_provider.dart';
import 'package:auth/login/domain/entity/validate_customer_otp_entity.dart';
import 'package:auth/sign_up/data/mapper.dart';
import 'package:core/data/mapper.dart';

import 'dto/customer_tokens_dto.fr.dart';
import 'dto/login_auth_provider_dto.dart';
import 'dto/validate_customer_otp_dto.fr.dart';

extension LoginAuthProviderResponseDTOMapper on LoginAuthProviderResponseDTO {
  LoginAuthProviderResponse toDomain() =>
      LoginAuthProviderResponse(userCredentialResponse: userCredentialResponseDTO.toDomain(), tokenAdobe: tokenAdobe);
}

extension LoginWithPhoneNumberResponseDTOMapper on ValidateCustomerOtpDTO {
  ValidateCustomerOtpEntity toDomain() => ValidateCustomerOtpEntity(
        status: status,
        token: token,
        customer: customer?.toDomain(),
      );
}

extension CustomerTokensDTOMapper on CustomerTokensDTO {
  CustomerTokensEntity toDomain() => CustomerTokensEntity(token: token, refreshToken: refreshToken);
}
