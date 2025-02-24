import 'package:auth/login/domain/use_case/login_with_password_use_case.dart';
import 'package:auth/sign_up/data/repository/sign_up_repository.dart';
import 'package:core/domain/entity/customer.fr.dart';
import 'package:auth/sign_up/domain/entity/create_customer_data.dart';
import 'package:core/local/data/repository/secure_storege_repository.dart';
import 'package:core/utils/error_handler/error_handler.dart';
import 'package:dartz/dartz.dart';

/// Use case for create a new account for the new customer
class CreateCustomerUseCase {
  final SignUpRepository _createCustomerRepository;
  final SecureStorageRepository secureStorageRepository;
  final LoginWithPasswordUseCase _login;

  CreateCustomerUseCase(this._createCustomerRepository, this.secureStorageRepository, this._login);

  /// Create a new account for the new customer.
  /// Automatically login the user and maintain the session.
  /// Update the local information of the user logged in the app.
  Future<Either<ErrorHandler, Customer>> call(CreateCustomerData createCustomerData) async {
    final resultCreateCustomer = await _createCustomerRepository.createCustomer(createCustomerData);

    return resultCreateCustomer.fold((error) => left(error), (customer) async {
      /// Perform the login and save the token to maintain the user session.
      /// Update the local information of the user logged in the app.

      final resultLogin = await _login(email: customer.email, password: createCustomerData.password);

      return resultLogin.fold((error) => left(error), (_) => resultLogin);
    });
  }
}
