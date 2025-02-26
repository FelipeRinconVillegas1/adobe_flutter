import 'package:core/domain/entity/customer.fr.dart';
import 'package:equatable/equatable.dart';

class ValidateCustomerOtpEntity extends Equatable {
  final String? token;
  final bool status;
  final Customer? customer;

  const ValidateCustomerOtpEntity({this.token, this.customer, required this.status});

  ValidateCustomerOtpEntity copyWith({
    String? token,
    bool? status,
    Customer? customer,
  }) {
    return ValidateCustomerOtpEntity(
        token: token ?? this.token, status: status ?? this.status, customer: customer ?? this.customer);
  }

  @override
  List<Object?> get props => [token, status,customer];
}
