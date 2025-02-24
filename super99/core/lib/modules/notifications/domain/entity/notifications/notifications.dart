import 'package:equatable/equatable.dart';

import 'notification_item.fr.dart';

class Notifications extends Equatable {
  final List<NotificationItem> notifications;

  const Notifications({required this.notifications});

  @override
  List<Object?> get props => [notifications];
}
