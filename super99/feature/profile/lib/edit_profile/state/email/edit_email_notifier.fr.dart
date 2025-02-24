import 'package:core/di/customer/di_customer.fr.dart';
import 'package:profile/edit_profile/state/email/edit_email_state.fr.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:core/domain/use_case/customer/update_customer_email_use_case.dart';

part 'edit_email_notifier.fr.g.dart';

@riverpod
class EditEmailNotifier extends _$EditEmailNotifier {
  late final UpdateCustomerEmailUseCase _updateCustomerEmailUseCase;

  @override
  EditEmailState build() {
    _updateCustomerEmailUseCase = ref.read(updateCustomerEmailUseCaseProvider);
    return const EditEmailState.initial();
  }

  Future<void> updateEmail(String email, String password) async {
    state = const EditEmailState.loading();
    final result = await _updateCustomerEmailUseCase.call(email, password);
    result.fold(
      (failure) => state = EditEmailState.error(failure),
      (customer) => state = EditEmailState.success(customer),
    );
  }
}
