import 'package:core/data/repository/customer/customer_repository.dart';
import 'package:core/domain/entity/customer.fr.dart';
import 'package:core/domain/use_case/customer/save_customer_in_local_use_case.dart';
import 'package:core/utils/error_handler/error_handler.dart';
import 'package:dartz/dartz.dart';

/// Update email of the customer with the given data. The customer must be logged in.
class UpdateCustomerPasswordUseCase {
  final CustomerRepository _customerRepository;
  final SaveCustomerInLocalUseCase _saveCustomerInLocalUseCase;

  UpdateCustomerPasswordUseCase(this._customerRepository, this._saveCustomerInLocalUseCase);

  Future<Either<ErrorHandler, Customer>> call(String currentPassword, String newPassword) async {
    final resultUpdateCustomerPassword = await _customerRepository.updatePassword(currentPassword, newPassword);

    return resultUpdateCustomerPassword.fold(
      (error) => Left(error),
      (customer) async {
        await _saveCustomerInLocalUseCase.call(customer);
        return Right(customer);
      },
    );
  }
}
