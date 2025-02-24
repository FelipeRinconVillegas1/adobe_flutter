class AssociatedWallet {
  final String cardNumber;

  /// The backend only accept the date in format MM-dd-yyyy
  final String cardBirthDate;
  final String customerEmail;
  final String cardLastName;
  final String cardFirstName;

  AssociatedWallet({
    required this.cardNumber,
    required this.cardBirthDate,
    required this.customerEmail,
    required this.cardLastName,
    required this.cardFirstName,
  });
}
