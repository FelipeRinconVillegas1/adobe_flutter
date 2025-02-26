import 'package:core/di/customer/di_customer.fr.dart';
import 'package:core/domain/use_case/customer/update_customer_password_use_case.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'edit_password_state.fr.dart';

part 'edit_password_notifier.fr.g.dart';

@riverpod
class EditPasswordNotifier extends _$EditPasswordNotifier {
  late final UpdateCustomerPasswordUseCase _updateCustomerPasswordUseCase;

  @override
  EditPasswordState build() {
    _updateCustomerPasswordUseCase = ref.read(updateCustomerPasswordUseCaseProvider);
    return const EditPasswordState.initial();
  }

  Future<void> updatePassword(String currentPassword, String newPassword) async {
    state = const EditPasswordState.loading();
    final result = await _updateCustomerPasswordUseCase.call(currentPassword, newPassword);
    result.fold(
      (failure) => state = EditPasswordState.error(failure),
      (customer) => state = EditPasswordState.success(customer),
    );
  }
}
