import 'package:core/data/repository/customer/customer_repository.dart';
import 'package:core/domain/entity/customer.fr.dart';
import 'package:core/domain/use_case/customer/save_customer_in_local_use_case.dart';
import 'package:core/utils/error_handler/error_handler.dart';
import 'package:dartz/dartz.dart';

/// Update the customer with the given data. The customer must be logged in.
class UpdateCustomerUseCase {
  final CustomerRepository _customerRepository;
  final SaveCustomerInLocalUseCase _saveCustomerInLocalUseCase;

  UpdateCustomerUseCase(this._customerRepository, this._saveCustomerInLocalUseCase);

  Future<Either<ErrorHandler, Customer>> execute(Customer customer) async {
    final resultUpdateCustomer = await _customerRepository.updateCustomer(customer);

    return resultUpdateCustomer.fold(
      (error) => Left(error),
      (customer) async {
        await _saveCustomerInLocalUseCase.call(customer);
        return Right(customer);
      },
    );
  }
}
