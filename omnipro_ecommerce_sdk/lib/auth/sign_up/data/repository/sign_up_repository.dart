import 'package:core/domain/entity/provider_auth.dart';
import 'package:core/domain/entity/user_credential_response.dart';
import 'package:core/domain/entity/customer.fr.dart';
import 'package:core/utils/error_handler/error_handler.dart';
import 'package:dartz/dartz.dart';
import '../../domain/entity/create_customer_data.dart';

/// SigUp repository contract
abstract class SignUpRepository {
  /// Create a new account for the new customer.
  Future<Either<ErrorHandler, Customer>> createCustomer(
    CreateCustomerData createCustomer,
  );

  /// Get the user credential by social media provider authentication (Google, Facebook, Apple)
  Future<Either<ErrorHandler, UserCredentialResponse>> getUserCredentialBySocialMedia(
      ProviderAuthentication providerAuthentication);
}
