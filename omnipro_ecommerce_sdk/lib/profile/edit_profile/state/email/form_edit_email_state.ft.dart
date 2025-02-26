import 'package:core/domain/form_model/email.dart';
import 'package:core/domain/form_model/password.dart';

class FormEditEmailState {
  final Email email;
  final bool showErrorEmail;
  final Password password;
  final bool showErrorPassword;
  final bool showPassword;

  //Name constructor
  FormEditEmailState({
    Email? email,
    this.showErrorEmail = false,
    this.password = const Password.dirty(),
    this.showErrorPassword = false,
    this.showPassword = false,
  }) : email = email ?? Email.dirty();

  //CopyWith constructor
  FormEditEmailState copyWith({
    Email? email,
    bool? showErrorEmail,
    Password? password,
    bool? showErrorPassword,
    bool? showPassword,
  }) {
    return FormEditEmailState(
      showPassword: showPassword ?? this.showPassword,
      email: email ?? this.email,
      showErrorEmail: showErrorEmail ?? this.showErrorEmail,
      password: password ?? this.password,
      showErrorPassword: showErrorPassword ?? this.showErrorPassword,
    );
  }

  bool get isValid => email.isValid && password.isValid;


  //to String
  @override
  String toString() {
    return 'FormEditEmailState(email: $email, showErrorEmail: $showErrorEmail, password: $password, showErrorPassword: $showErrorPassword)';
  }
}
