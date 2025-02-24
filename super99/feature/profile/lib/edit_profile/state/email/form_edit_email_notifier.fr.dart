import 'package:core/domain/form_model/email.dart';
import 'package:core/domain/form_model/password.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'form_edit_email_state.ft.dart';

part 'form_edit_email_notifier.fr.g.dart';

@riverpod
class FormEditEmailNotifier extends _$FormEditEmailNotifier {
  @override
  FormEditEmailState build() {
    return FormEditEmailState();
  }

  void onEmailChanged(String value) {
    state = state.copyWith(
      email: Email.dirty(value),
      showErrorEmail: false,
    );
  }

  void onPasswordChanged(String value) {
    state = state.copyWith(
      password: Password.dirty(value: value),
      showErrorPassword: false,
    );
  }

  void setShowErrorEmail(bool value) {
    state = state.copyWith(
      showErrorEmail: value,
    );
  }

  void setShowErrorPassword(bool value) {
    state = state.copyWith(
      showErrorPassword: value,
    );
  }

  void setShowPassword(bool value) {
    state = state.copyWith(
      showPassword: value,
    );
  }

  bool get isValidForm => state.isValid;

  bool get showErrorEmail => state.showErrorEmail;

  bool get showErrorPassword => state.showErrorPassword;

  Email get email => state.email;

  Password get password => state.password;

  bool get showPassword => state.showPassword;
}
