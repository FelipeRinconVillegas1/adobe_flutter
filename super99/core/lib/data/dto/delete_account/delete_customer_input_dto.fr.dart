import 'package:freezed_annotation/freezed_annotation.dart';

part 'delete_customer_input_dto.fr.freezed.dart';

part 'delete_customer_input_dto.fr.g.dart';

@freezed
class DeleteCustomerInputDTO with _$DeleteCustomerInputDTO {
  const factory DeleteCustomerInputDTO({
    required String password,
  }) = _DeleteCustomerInputDTO;

  factory DeleteCustomerInputDTO.fromJson(Map<String, dynamic> json) => _$DeleteCustomerInputDTOFromJson(json);
}
