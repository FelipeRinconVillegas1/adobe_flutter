import 'package:core/domain/entity/customer.fr.dart';
import 'package:core/domain/entity/delete_account/delete_customer_input.dart';
import 'package:core/utils/error_handler/error_handler.dart';
import 'package:dartz/dartz.dart';

abstract class CustomerRepository {
  Future<Either<ErrorHandler, Customer>> getCustomer();
  Future<Either<ErrorHandler, Customer>> updateCustomer(Customer newCustomer);
  Future<Either<ErrorHandler, Customer>> updateEmail(String newEmail, String password);
  Future<Either<ErrorHandler, Customer>> updatePassword(String currentPassword, String newPassword);
  Future<Either<ErrorHandler, bool>> deleteAccount(DeleteCustomerInput input);
  Future<void> saveCustomerInLocal(Customer customer);
  Future<Either<ErrorHandler, Customer>> getLocalCustomer();
}
