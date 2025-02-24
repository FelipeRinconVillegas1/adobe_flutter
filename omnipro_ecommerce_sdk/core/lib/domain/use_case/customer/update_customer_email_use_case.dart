import 'package:core/data/repository/customer/customer_repository.dart';
import 'package:core/domain/entity/customer.fr.dart';
import 'package:core/domain/use_case/customer/save_customer_in_local_use_case.dart';
import 'package:core/utils/error_handler/error_handler.dart';
import 'package:dartz/dartz.dart';

/// Update email of the customer with the given data. The customer must be logged in.
class UpdateCustomerEmailUseCase {
  final CustomerRepository _customerRepository;
  final SaveCustomerInLocalUseCase _saveCustomerInLocalUseCase;

  UpdateCustomerEmailUseCase(this._customerRepository, this._saveCustomerInLocalUseCase);

  Future<Either<ErrorHandler, Customer>> call(String newEmail, String password) async {
    final resultUpdateCustomerEmail = await _customerRepository.updateEmail(newEmail, password);

    return resultUpdateCustomerEmail.fold(
      (error) => Left(error),
      (customer) async {
        await _saveCustomerInLocalUseCase.call(customer);
        return Right(customer);
      },
    );
  }
}
