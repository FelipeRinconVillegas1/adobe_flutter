import 'package:core/domain/entity/custom_attribute.dart';

/// Data for create new  customer
class CreateCustomerData {
  final String firstname;
  final String lastname;
  final String email;
  final String password;
  final DateTime date;
  final bool isSuscribed;
  final int gender;
  final List<CustomAttribute> customAttributes;

  CreateCustomerData(
      {required this.firstname,
      required this.lastname,
      required this.email,
      required this.password,
      required this.date,
      required this.gender,
      required this.customAttributes,
      this.isSuscribed = true});
}
