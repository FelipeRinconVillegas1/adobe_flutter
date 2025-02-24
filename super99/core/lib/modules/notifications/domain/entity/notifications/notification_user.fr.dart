import 'package:freezed_annotation/freezed_annotation.dart';

part 'notification_user.fr.freezed.dart';

@freezed
class NotificationUser with _$NotificationUser {
  const factory NotificationUser({
    required String email,
    String? phone,
    String? dialCode,
    String? gender,
    String? birthDate,
    String? city,
    String? zipCode,
    String? mdaCardNumber,
    bool? enableNotifications,
    bool? enableSoundNotifications,
  }) = _NotificationUser;

  ///Factory with email empty by default,
  ///The use case updates it, using the email from the customer.
  factory NotificationUser.emailEmpty({
    String? phone,
    String? dialCode,
    String? gender,
    String? birthDate,
    String? city,
    String? zipCode,
    String? mdaCardNumber,
  }) =>
      NotificationUser(
          email: '',
          phone: phone,
          dialCode: dialCode,
          gender: gender,
          birthDate: birthDate,
          city: city,
          zipCode: zipCode,
          mdaCardNumber: mdaCardNumber);
}
