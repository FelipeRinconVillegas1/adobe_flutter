import 'package:core/modules/notifications/domain/entity/customer/notification_customer.dart';

import '../../data/repository/notification_repository.dart';

class CreateNotificationCustomerUseCase {
  CreateNotificationCustomerUseCase(this._notificationRepository);

  final NotificationRepository _notificationRepository;

  Future<void> call(NotificationCustomer customer) async {
    await _notificationRepository.createCustomer(customer: customer);
  }
}
