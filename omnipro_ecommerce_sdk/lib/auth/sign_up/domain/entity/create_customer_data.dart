/// Data for create new  customer
class CreateCustomerData {
  CreateCustomerData({
    required this.firstname,
    required this.lastname,
    required this.email,
    required this.password,
    required this.date,
    required this.gender,
  });

  final String firstname;
  final String lastname;
  final String email;
  final String password;
  final DateTime date;
  final int gender;
}
