import 'package:core/domain/use_case/customer/get_customer_use_case.dart';
import 'package:core/domain/entity/customer.fr.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:core/domain/use_case/customer/update_customer_use_case.dart';
import 'package:core/di/customer/di_customer.fr.dart';
import 'edit_profile_state.fr.dart';

part 'edit_profile_notifier.fr.g.dart';

@riverpod
class EditProfileNotifier extends _$EditProfileNotifier {
  late final UpdateCustomerUseCase _updateCustomerUseCase;

  late final GetCustomerUseCase _getCustomerUseCase;

  @override
  EditProfileState build() {
    _updateCustomerUseCase = ref.watch(updateCustomerUseCaseProvider);
    _getCustomerUseCase = ref.watch(getCustomerUseCaseProvider);
    return const EditProfileState.initial();
  }

  Future<void> updateCustomer({
    required Customer customer,
  }) async {
    state = const EditProfileState.loading();
    final Map<String, bool> errors = {
      'updateCustomer': false,
      'updateEmail': false,
      'updatePassword': false,
    };

    var result = await _updateCustomerUseCase.execute(customer);
    if (result.isLeft()) errors['updateCustomer'] = true;
    
    if (errors.containsValue(true)) {
      state = EditProfileState.error(errors);
      return;
    }
    result.fold(
      (error) => state = EditProfileState.error(errors),
      (customer) => state = EditProfileState.success(customer),
    );
  }

  //TODO REVISAR SI SE DEBE CONSUMER EL CUSTOMER DEL CACHE, PORQUE SI SE ABREN DOS SESIONES DE USUARIO DISTINTAS EN DOS DISPOSITIVOS
  //TODO SE ESTARIA CONSUMIENDO EL CUSTOMER DEL CACHE DE UN USUARIO DIFERENTE
  Future<Customer> getCustomer(GetCustomerMode mode) async {
    final resultGetCustomer = await _getCustomerUseCase.call(mode: mode);
    return resultGetCustomer.fold((error) => throw error, (customer) => customer);
  }
}
