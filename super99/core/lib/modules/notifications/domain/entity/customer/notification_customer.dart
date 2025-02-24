import 'package:freezed_annotation/freezed_annotation.dart';

part 'notification_customer.freezed.dart';
part 'notification_customer.g.dart';

@freezed
class NotificationCustomer with _$NotificationCustomer {
  const factory NotificationCustomer({
    required String email,
    String? fcmToken,
    String? fcmTokenUpdatedAt,
    String? platform,
    bool? notificationsEnabled,
  }) = _NotificationCustomer;

  factory NotificationCustomer.fromJson(Map<String, dynamic> json) => _$NotificationCustomerFromJson(json);
}
