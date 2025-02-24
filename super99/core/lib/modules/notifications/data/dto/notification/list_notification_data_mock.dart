
import 'notification_dto.fr.dart';
import 'notifications_dto.fr.dart';

abstract class ListNotificationDataMock {
  static NotificationsDTO succesfullData = const NotificationsDTO(notifications: [
    NotificationDTO(
        createdAt: 'hace 5 dias',
        message: 'test 1',
        id: '1',
        title: 'title 1',
        userId: '',
        isUsed: 0,
        notificationType: 'farmax'),
    NotificationDTO(
        createdAt: 'hace 2 dias',
        message: 'test 2',
        id: '2',
        title: 'title 2',
        userId: '',
        isUsed: 0,
        notificationType: 'farmax'),
  ]);
}
