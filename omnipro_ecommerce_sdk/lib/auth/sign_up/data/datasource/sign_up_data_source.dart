import 'package:core/data/dto/user_credential_response_dto.fr.dart';
import 'package:core/domain/entity/provider_auth.dart';
import 'package:core/data/dto/customer_dto.fr.dart';
import 'package:core/utils/error_handler/error_handler.dart';
import 'package:dartz/dartz.dart';

import '../dto/create_customer_dto.fr.dart';

/// Data source for sign up feature
abstract class SignUpDataSource {
  /// Create a new account for the new user
  Future<Either<ErrorHandler, CustomerDTO>> createAccount(
    CreateCustomerDTO createAccountDTO,
  );

  /// Get the user credential by social media provider authentication (Google, Facebook, Apple)
  Future<Either<ErrorHandler, UserCredentialResponseDTO>> getUserCredentialBySocialMedia(
      ProviderAuthentication providerAuthentication);

  // Future<Either<ErrorHandler, CustomerDTO>> createCustomerBySocialMedia();
  //
  // Future<Either<ErrorHandler, CustomerDTO>> createCustomerByApple();
}
