import 'package:core/data/mapper.dart';
import 'package:core/domain/entity/provider_auth.dart';
import 'package:core/domain/entity/user_credential_response.dart';
import 'package:core/domain/entity/customer.fr.dart';
import 'package:core/utils/error_handler/error_handler.dart';
import 'package:dartz/dartz.dart';
import 'package:omnipro_ecommerce_sdk/auth/sign_up/data/mapper.dart';
import '../../domain/entity/create_customer_data.dart';
import '../datasource/sign_up_data_source.dart';
import 'sign_up_repository.dart';

/// SigUp repository implementation for the sign up feature
class SignUpRepositoryImpl extends SignUpRepository {
  SignUpRepositoryImpl(this._signUpDataSource);

  final SignUpDataSource _signUpDataSource;

  @override
  Future<Either<ErrorHandler, Customer>> createCustomer(CreateCustomerData createCustomer) async {
    final result = await _signUpDataSource.createAccount(createCustomer.toDTO());

    return result.fold((error) => left(error), (customer) => right((customer).toDomain()));
  }

  @override
  Future<Either<ErrorHandler, UserCredentialResponse>> getUserCredentialBySocialMedia(
      ProviderAuthentication providerAuthentication) async {
    final result = await _signUpDataSource.getUserCredentialBySocialMedia(providerAuthentication);

    return result.fold((error) => left(error), (userCredential) => right(userCredential.toDomain()));
  }
}
