import 'package:core/data/repository/customer/customer_repository.dart';
import 'package:core/domain/entity/customer.fr.dart';

/// Updates the local information of the user logged in the app.
class SaveCustomerInLocalUseCase {
  final CustomerRepository _customerRepository;
  SaveCustomerInLocalUseCase(this._customerRepository);

  Future<void> call(Customer customer) async {
    _customerRepository.saveCustomerInLocal(customer);
  }
}
